# Categoría: liderazgo y gestión técnica

**Versión (documentación):** 2 (Saturnodev Labs — plantillas de agentes, v2). [README raíz](../README.md).

Roles de **seguimiento, riesgo, progreso y plan operativo** usando artefactos **Markdown en el repositorio** (sin Azure DevOps como fuente de verdad del backlog).

## Estructura

- Cada **rol = un** `*.md` en kebab-case con `name` y `description` en frontmatter.

**Roles en esta carpeta:**

- [technical-leader.md](technical-leader.md) — dueño de **`.delivery-control/`** (sprints semanales lun–dom, historias, bugs, riesgos, esfuerzo en h); promoción desde **`.analyst/approved/`**; **fase 7** del modelo **Saturnodev Labs v2** y en paralelo con 1–6.
- [project-manager.md](project-manager.md) — lectura de **`.delivery-control/`** y Git; **solo escribe** bajo **`.pmo/*.md`** (p. ej. `dashboard.md`); **fases 2 y 7**.

## Cómo añadir un rol nuevo

1. **Plantilla base:** [../development/role-template.md](../development/role-template.md) — adaptar a evaluación / gestión.
2. Duplicad **technical-leader** o **project-manager** si el perfil es de lectura o planificación en repo.
3. Cread `management/nombre-del-rol.md` con alcance claro (qué carpetas se leen y cuáles se escriben).

## Relación con otras categorías

- No sustituyen a [../analysis/](../analysis/README.md) ni a [../architecture/](../architecture/README.md).
- Convenciones de entrega en desarrollo: [fullstack-developer](../development/fullstack-developer.md) (`story-*`, `docs/specs/story-*.md`, evidencia en **`.delivery-control/`**, **`docs/manual-tecnico.md`**).
