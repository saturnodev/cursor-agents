#!/usr/bin/env bash
# Instalador del CLI Saturnodev Labs v2 (agents-cli): sincroniza roles desde
# https://github.com/saturnodev/cursor-agents (repo público; solo curl+jq).
# Portable: sin rutas fijas, BASH_SOURCE, $HOME, --prefix y --with-deps (Homebrew).
# Tras instalar, configura PATH en los ficheros de shell habituales (idempotente),
# sin depender de si esta sesión ya tenía ~/.local/bin en PATH.
set -euo pipefail

PREFIX="${SATURNODEV_LABS_AGENTS_PREFIX:-${TMHUS_AGENTS_PREFIX:-$HOME/.local/bin}}"
BIN_NAME="${SATURNODEV_LABS_AGENTS_BIN:-${TMHUS_AGENTS_BIN:-agents-cli}}"
INSTALL_DEPS=0
UPDATE_SHELL=1

# Comentario único para no duplicar bloques en re-ejecuciones.
PATH_MARKER='# saturnodev-labs-agents-cli PATH (Saturnodev Labs v2)'

usage() {
  cat <<'EOF'
Usage:
  ./install.sh [options]

Options:
  --prefix DIR        Install directory (default: ~/.local/bin)
  --bin-name NAME     Command name (default: agents-cli; legacy: tmhus-agents)
  --with-deps         Install missing deps (jq, fzf) via Homebrew
  --with-fzf          Alias of --with-deps (legacy)
  --no-shell-update   Do not add PREFIX to shell startup files (~/.zshrc, bash, fish)
  -h, --help          Show help

Environment:
  SATURNODEV_LABS_AGENTS_PREFIX  Override default install prefix
  SATURNODEV_LABS_AGENTS_BIN     Override default command name
  TMHUS_AGENTS_PREFIX / TMHUS_AGENTS_BIN  Legacy aliases (still honored)
  GITHUB_TOKEN                   Optional: higher GitHub API rate limits for agents-cli

Examples:
  ./install.sh
  ./install.sh --with-deps
  ./install.sh --prefix /usr/local/bin
  SATURNODEV_LABS_AGENTS_PREFIX=/opt/bin ./install.sh
EOF
}

while [ $# -gt 0 ]; do
  case "$1" in
    --prefix)          PREFIX="$2"; shift 2 ;;
    --bin-name)        BIN_NAME="$2"; shift 2 ;;
    --with-deps)       INSTALL_DEPS=1; shift ;;
    --with-fzf)        INSTALL_DEPS=1; shift ;;
    --no-shell-update) UPDATE_SHELL=0; shift ;;
    -h|--help)         usage; exit 0 ;;
    *) echo "Unknown option: $1" >&2; usage; exit 1 ;;
  esac
done

# Resolve script directory portably (no hardcoded paths).
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_BIN="$SCRIPT_DIR/agents-cli"
TARGET_BIN="$PREFIX/$BIN_NAME"

[ -f "$SOURCE_BIN" ] || { echo "Error: Missing $SOURCE_BIN" >&2; exit 1; }

# Ensure target dir exists.
mkdir -p "$PREFIX"

# Refuse to overwrite a different command silently.
if [ -e "$TARGET_BIN" ] && ! grep -qE "agents-cli|tmhus-agents" "$TARGET_BIN" 2>/dev/null; then
  echo "Error: $TARGET_BIN already exists and is not an agents-cli binary." >&2
  echo "Pick another --bin-name or move the file first." >&2
  exit 1
fi

cp "$SOURCE_BIN" "$TARGET_BIN"
chmod +x "$TARGET_BIN"
echo "Installed: $TARGET_BIN"

# Try to install missing deps via Homebrew when requested.
brew_install() {
  local pkg="$1"
  if command -v brew >/dev/null 2>&1; then
    echo "Installing $pkg with Homebrew..."
    brew install "$pkg"
  else
    echo "Warning: '$pkg' is missing and Homebrew is not installed."
    echo "  Install Homebrew from https://brew.sh, then run: brew install $pkg"
  fi
}

# Required deps (public GitHub: no Azure CLI).
MISSING_REQUIRED=0
if ! command -v jq >/dev/null 2>&1; then
  if [ "$INSTALL_DEPS" = 1 ]; then
    brew_install jq
  else
    echo "Warning: jq is REQUIRED. Install with: brew install jq (or rerun with --with-deps)"
    MISSING_REQUIRED=1
  fi
fi
if ! command -v curl >/dev/null 2>&1; then
  echo "Warning: curl is REQUIRED but missing on this system."
  MISSING_REQUIRED=1
fi

# Optional deps.
if ! command -v fzf >/dev/null 2>&1; then
  if [ "$INSTALL_DEPS" = 1 ]; then
    brew_install fzf
  else
    echo "Note: fzf is optional (only for 'agents-cli pick'). Install with: brew install fzf"
  fi
fi

# --- Shell PATH (autoinstall): siempre que UPDATE_SHELL=1, sin mirar PATH de esta sesión ---
append_bash_path_block() {
  local rc="$1"
  mkdir -p "$(dirname "$rc")" 2>/dev/null || true
  if [ -f "$rc" ] && grep -qF "$PATH_MARKER" "$rc" 2>/dev/null; then
    return 0
  fi
  {
    printf '\n%s\n' "$PATH_MARKER"
    printf 'export PATH="%s:$PATH"\n' "$PREFIX"
  } >> "$rc"
  echo "PATH configurado: $rc"
}

append_fish_path_block() {
  local dir="$HOME/.config/fish/conf.d"
  local f="$dir/saturnodev-agents-cli.fish"
  mkdir -p "$dir"
  if [ -f "$f" ] && grep -qF "$PATH_MARKER" "$f" 2>/dev/null; then
    return 0
  fi
  # $PATH literal para fish (comillas simples en el format de printf).
  local pe="$PREFIX"
  pe="${pe//\\/\\\\}"
  pe="${pe//\"/\\\"}"
  {
    printf '%s\n' "$PATH_MARKER"
    printf 'set -gx PATH "%s" $PATH\n' "$pe"
  } > "$f"
  echo "PATH configurado (fish): $f"
}

if [ "$UPDATE_SHELL" = 1 ]; then
  # zsh: ~/.zshrc (login e interactivo en macOS/Cursor; evita duplicar también .zprofile).
  append_bash_path_block "$HOME/.zshrc"

  # bash: si ya hay perfil o el login shell es bash.
  case "${SHELL:-}" in
    */bash) append_bash_path_block "$HOME/.bash_profile"
            append_bash_path_block "$HOME/.bashrc"
            ;;
    *)
      [ -f "$HOME/.bash_profile" ] && append_bash_path_block "$HOME/.bash_profile"
      [ -f "$HOME/.bashrc" ] && append_bash_path_block "$HOME/.bashrc"
      ;;
  esac

  if command -v fish >/dev/null 2>&1 || [ -d "$HOME/.config/fish" ]; then
    append_fish_path_block
  fi
fi

# PATH solo para procesos hijos de este script (el shell interactivo padre no hereda esto).
export PATH="$PREFIX:$PATH"
hash -r 2>/dev/null || true

# Sanity check: invoke --help so we catch syntax errors immediately.
if ! "$TARGET_BIN" --help >/dev/null 2>&1; then
  echo "Warning: '$BIN_NAME --help' did not run cleanly; check shell compatibility." >&2
fi

if [ "$MISSING_REQUIRED" = 1 ]; then
  echo
  echo "Installation finished, but some REQUIRED dependencies are missing."
  echo "Install them, then run: $BIN_NAME version"
  exit 0
fi

echo "OK: $BIN_NAME listo."
echo ""
echo "────────────────────────────────────────────────────────────────────"
echo "Siguiente paso (obligatorio en la terminal donde escribes):"
echo "  ./install.sh se ejecuta en un subproceso: el PATH de TU ventana actual"
echo "  no se actualiza hasta que recargues el perfil o abras otra terminal."
echo ""
echo "  Opción A — recomendada: cierra esta pestaña/ventana de terminal y abre una nueva."
echo "  Opción B — sin cerrar: recarga el perfil de tu shell, por ejemplo:"
case "${SHELL:-}" in
  */fish)
    echo "         source ~/.config/fish/conf.d/saturnodev-agents-cli.fish"
    ;;
  */bash)
    echo "         source ~/.bashrc   # o: source ~/.bash_profile"
    ;;
  *)
    echo "         source ~/.zshrc    # zsh (por defecto en macOS)"
    ;;
esac
echo ""
echo "  Luego:  $BIN_NAME version"
echo "────────────────────────────────────────────────────────────────────"
