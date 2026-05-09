# Cómo usar los roles de agente en Cursor

**Saturnodev Labs (v2)** define la convención **`.cursor/agents/`** en la **raíz** del repositorio de producto. Los `*.md` se obtienen desde las plantillas de **este** repo (o del remoto público [github.com/saturnodev/cursor-agents](https://github.com/saturnodev/cursor-agents)) por **copia manual** o con **`agents-cli`** (`init`, `add`, `pick`, `sync`) y se **versionan en *git*** para *@* estables y revisiones con PR.

[Volver al inicio](Home.md)

---

## Pasos

1. **Clonar o vincular** el repositorio de plantillas (submódulo, *subtree*, o copia) según *policy* de Saturnodev Labs, o usar solo el remoto público con **`agents-cli`** (ver [README raíz](../../README.md)).
2. **Elegir** los roles que el equipo realmente use (fase + *stack*).
3. **Copiar** los `*.md` al producto (o `agents-cli init` / `add` / `pick` / `sync`), p. ej.:

```text
tu-proyecto/
├── .cursor/
│   ├── agents/                 # solo los perfiles invocados (p. ej. vía agents-cli)
│   │   ├── development/
│   │   │   ├── fullstack-developer.md
│   │   │   └── react/
│   │   │       └── react-developer.md
│   │   ├── testing/
│   │   │   └── pentester.md    # QA seguridad: .security/, bugs → .delivery-control/
│   │   └── management/
│   │       ├── technical-leader.md
│   │       └── project-manager.md
│   └── rules/                  # opcional: .mdc y *globs* (Project Rules)
├── src/
└── ...
```

4. En el chat, **@** a la ruta: `@.cursor/agents/development/react/react-developer.md`.
5. **`.cursor/rules`**: *complemento* (estilo, *globs*), **no** sustituto de la definición del rol. Incluir **`saturnodev-labs-v2-doc-sync-on-commit.mdc`** y **`saturnodev-labs-v2-technical-manual.mdc`** según [software-architect](../../architecture/software-architect.md).
6. Documentación de referencia: [README raíz](../../README.md) del repo de plantillas (sección **agents-cli** y convención `.cursor/agents/` en el producto).

---

## Frontmatter y nombre de archivo

- Cada `*.md` trae *frontmatter* con `name:`; el nombre de archivo en **kebab-case** debería coincidir.
- *Roles* nuevos: [development/role-template.md](../../development/role-template.md) o [testing/role-template.md](../../testing/role-template.md) en el repositorio de plantillas.

---

## Relación con el SDLC

- **Fase 3 y documentación de diseño:** *software-architect* (**`.architecture/`**, sin código de aplicación; desde **`.analyst/approved/`**).
- **Fase 4 y código:** *fullstack* o especialista; otras fases: ver [Roles y fases](Roles-y-fases.md).

---

## [Artefactos](Artefactos.md) · [SDLC](SDLC-Saturnodev-Labs-v2.md)
