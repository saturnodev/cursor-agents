# Categoría: arquitectura

**Versión (documentación):** 2 (Saturnodev Labs — plantillas de agentes, v2). [README raíz](../README.md).

Aquí viven **roles vinculados a diseño de software y solución**: arquitectura, lineamientos, TSD, ADR, y contexto técnico documentado bajo la carpeta de trabajo **`.architecture`** en el repositorio de producto (no se confunde con *esta* carpeta del repositorio de plantillas `architecture/`).

## Estructura

- Un **rol = un** `*.md` (kebab-case) con frontmatter y el cuerpo del agente.
- Pueden convivir varios perfiles; si crece el número de archivos, añadid un subíndice al final de este README con la lista y una línea de propósito de cada rol.

**Ejemplo en esta carpeta:** `software-architect.md`. Otros roles de plataforma o pipelines residen en [../devops-iac/](../devops-iac/README.md) si aplica a vuestro modelo.

## Cómo añadir un rol nuevo

1. **Plantilla base:** utiliza [../development/role-template.md](../development/role-template.md) como guía de secciones (ámbito, fuente de verdad, entregables, limitaciones).
2. Crea en esta carpeta `nombre-rol.md` (kebab-case) y rellena `name`, `description` (y `model: inherit` u otros metadatos si vuestro tooling los usa).
3. Toma de referencia **`software-architect.md`**: diseño **sin** implementación; entregas descritas para el directorio **`.architecture/`** en el repositorio de la aplicación.

## Convención

- Distingue en el texto del agente el path de **plantillas** (este repositorio) y la carpeta de proyecto **`.architecture/`** en el repo del producto.

## Saturnodev Labs v2 en el repo de producto

- Diseño y lineamientos bajo **`.architecture/`**; espejo opcional **`architecture-wiki/`** con **`README.md`** como índice; si existe **`handoff-to-fullstack.md`**, implementación lo lee primero (orden en [fullstack-developer](../development/fullstack-developer.md)).
- Reglas Cursor: línea base en [software-architect.md](software-architect.md); cuerpos canónicos de **`saturnodev-labs-v2-doc-sync-on-commit.mdc`** y **`saturnodev-labs-v2-technical-manual.mdc`** (globs en código) **solo** en el repo de aplicación, no en esta plantilla.
