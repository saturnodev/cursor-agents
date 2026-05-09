# Cómo usar los roles de agente en Cursor

**Saturnodev Labs (v2)** define la convención **`.cursor/agents/`** en la **raíz** del repositorio de producto. Los `*.md` se **copian** desde **este** repositorio de plantillas y se **versionan en *git*** para *@* estables y revisiones con PR.

[Volver al inicio](/Home)

---

## Pasos

1. **Clonar o vincular** el repositorio de plantillas (submódulo, *subtree*, o copia) según *policy* de Saturnodev Labs.
2. **Elegir** los roles que el equipo realmente use (fase + *stack*).
3. **Copiar** los `*.md` al producto, p. ej.:

```text
tu-proyecto/
├── .cursor/
│   ├── agents/                 # solo los perfiles invocados
│   │   ├── fullstack-developer.md
│   │   ├── react/
│   │   │   └── react-developer.md
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
6. Documentación de referencia: **`.cursor/agents/README.md`** (plantilla en el repo de plantillas Saturnodev Labs v2).

---

## Frontmatter y nombre de archivo

- Cada `*.md` trae *frontmatter* con `name:`; el nombre de archivo en **kebab-case** debería coincidir.
- *Roles* nuevos: [development/role-template.md](../../development/role-template.md) o [testing/role-template.md](../../testing/role-template.md) en el repositorio de plantillas.

---

## Relación con el SDLC

- **Fase 3 y documentación de diseño:** *software-architect* (**`.architecture/`**, sin código de aplicación; desde **`.analyst/approved/`**).
- **Fase 4 y código:** *fullstack* o especialista; otras fases: ver [Roles y fases](/Roles-y-fases).

---

## [Artefactos](/Artefactos) · [SDLC](/SDLC-Saturnodev-Labs-v2)
