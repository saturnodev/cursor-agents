# Categoría: desarrollo

**Versión (documentación):** 2 (Saturnodev Labs — plantillas de agentes, v2). [README raíz](../README.md).

Roles de **implementación** de producto: front, back, full stack y **especialistas por tecnología**.

## Estructura

```
development/
├── README.md                 # este archivo
├── role-template.md          # plantilla base en inglés (obligatoria para roles nuevos)
├── fullstack-developer.md   # rol genérico (raíz de la categoría)
└── <tecnologia>/             # subcarpeta por stack (React, Go, Flutter, etc.)
    └── <rol>.md
```

- **Rol genérico:** en la **raíz** de `development/` (p. ej. el fullstack que cubre front + back según arquitectura).
- **Especialista por tecnología:** subcarpeta en **kebab-case** (p. ej. `react/`, `go-backend/`, `laravel/`) y dentro un `*.md` (p. ej. `react-developer.md`).

**Plantilla canónica:** [role-template.md](role-template.md) — leedla completa antes de añadir un rol.

**Ejemplos rellenados:** [fullstack-developer.md](fullstack-developer.md), y en subcarpetas: `react/react-developer.md`, `go-backend/go-backend-developer.md`, `flutter/flutter-developer.md`, `angular/angular-developer.md`, `laravel/laravel-developer.md`.

## Cómo añadir un rol nuevo

1. **Duplicá** [role-template.md](role-template.md) o clonad el rol existente **más parecido** a lo que necesitáis.
2. Si el rol es **solo para un stack** (p. ej. *Swift iOS*), cread `development/<tecnologia>/` y dentro `nombre-rol.md`.
3. Sustituid el contenido; verificad el **checklist** al final de la plantilla.
4. El `name` del frontmatter = nombre del fichero (sin extensión).

## Convención Saturnodev Labs v2

- Implementación bajo criterio de **`.architecture/`** y alineada con **[software-architect](../architecture/software-architect.md)**. Si existe **`.architecture/handoff-to-fullstack.md`**, seguir su **Read order**; el espejo legible vive en **`architecture-wiki/`** en la **raíz del repo de producto** (índice **`architecture-wiki/README.md`**; slots **05** APIs/eventos, **06** seguridad, **10** coding guidelines, **ADRs**, más **09** UX, **07** observabilidad, **03/04** TSD/C4 cuando existan). Ese espejo y los `*.md` bajo **`.architecture/`** forman un solo contrato. Wiki externo opcional solo si el README del espejo lo documenta. **Contratos API:** **OpenAPI** (u otro canónico en **`architecture-wiki/05-data-apis-and-events/`** o **`.architecture/`** `api-conventions.md`), *contract-first*, lint (p. ej. Spectral) y **problem+json** solo donde estén documentados.
- No tocar en principio **`.iac`**, **`.testing`** (QA), **`.security`** (pentester / QA seguridad) ni reescribir documentos de arquitectura salvo excepción acordada.
- El **[technical-leader](../management/technical-leader.md)** promueve historias desde **`.analyst/approved/`** a **`.delivery-control/`**. El desarrollo lee **`story.md`** en la carpeta de sprint y usa **`docs/specs/story-<id>-<kebab-name>.md`** con **## Unit tests (mandatory)**; rama **`story-<id>-<kebab-name>`** desde **`dev`**. **Sin** `commit`/`push` sin autorización explícita del usuario; **100%** pruebas unitarias antes del *push*; tras *push*: actualizar **evidencia en `story.md`** y **`docs/manual-tecnico.md`** cuando el cambio lo requiera (detalle: [fullstack-developer](fullstack-developer.md)). Los especialistas remiten a ese `*.md`.
- Antes de cada **`git commit`** autorizado: checklist **`saturnodev-labs-v2-doc-sync-on-commit.mdc`** y, si aplica, regla **`saturnodev-labs-v2-technical-manual.mdc`** (bloques canónicos en [software-architect](../architecture/software-architect.md)), revisando **`.architecture`**, **`architecture-wiki/`**, **`docs/specs/`**, **`docs/manual-tecnico.md`**.
