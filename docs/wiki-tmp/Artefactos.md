# Artefactos que genera cada criterio (carpetas en el repo de producto)

Cada *rol* escribe bajo **carpetas de trabajo** acordadas. En el repositorio de **plantillas** solo hay los `*.md` de los agentes; en el **repositorio de la aplicación** viven las carpetas reales.

[Volver al inicio](/Home)

---

## Mapa rol → carpeta (dueño del criterio)

| Carpeta (producto) | Uso | Rol que define el criterio (plantilla) |
|----------------------|-----|----------------------------------------|
| **`.analyst/`** | Borradores, requisitos, *research*; **`.analyst/approved/`** para promoción por el TL | [business-functional-analyst](../../analysis/business-functional-analyst.md) |
| **`.delivery-control/`** | Sprints, historias (esfuerzo **h**), bugs, riesgos, `workplan.md` | [technical-leader](../../management/technical-leader.md) |
| **`.pmo/`** | Informes del PM (**solo `.md`**, p. ej. `dashboard.md`) | [project-manager](../../management/project-manager.md) |
| **`.architecture/`** | TSD, *coding-guidelines*, *frontend*/*backend*, ADR, diagramas **solo en texto** en Markdown | [software-architect](../../architecture/software-architect.md) |
| **`architecture-wiki/`** | Espejo legible de lineamientos (índice `README.md`) | [software-architect](../../architecture/software-architect.md) |
| **`docs/specs/story-*.md`** | *Spec* por historia, con **## Unit tests (mandatory)** | [fullstack-developer](../../development/fullstack-developer.md) |
| **`docs/manual-tecnico.md`** | Manual técnico vivo (dev + regla Cursor con globs) | [fullstack-developer](../../development/fullstack-developer.md) |
| **`docs/manual-de-usuario.md`** | Manual de usuario (QA, tras cada iteración de pruebas) | [qa-tester](../../testing/qa-tester.md) |
| **`.testing/`** | *Suites*, *fixtures*, *reports*, planes en Markdown | [qa-tester](../../testing/qa-tester.md) y perfiles Cypress/Jest |
| **`.security/`** | Escenarios e informes del pentester | [pentester](../../testing/pentester.md) |
| **`.iac/`** | Terraform, `modules/`, `environments/` | [devops-engineer](../../devops-iac/devops-engineer.md) |
| **Código** (`src/`, `app/`, …) | Implementación | *fullstack* o especialista |
| **`.cursor/agents/`** | Copias *versionadas* de los roles que el producto invoca | [Cursor-agentes](/Cursor-agentes) |

---

## Repo como fuente de verdad (travesaño)

- **Backlog y sprint:** **`.delivery-control/`** (TL), no tablero externo obligatorio.
- **Control de cambios de alcance:** analista documenta → aprobación explícita → TL asigna sprint / modo de ataque.
- **Documentación narrativa generada por agentes:** preferentemente **Markdown (`.md`)** en `docs/`, `.pmo/`, `.delivery-control/`, `.testing/`, `.security/`.

## [Roles por fase](/Roles-y-fases)
