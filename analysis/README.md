# Categoría: análisis

**Versión (documentación):** 2 (Saturnodev Labs — plantillas de agentes, v2). [README raíz](../README.md).

Esta carpeta reúne **roles de análisis funcional, negocio y requisitos** (backlog, user stories, investigación con contexto de industria, etc.).

## Estructura

- Cada rol es un archivo **`.md`** con **frontmatter YAML** (`name`, `description` como mínimo) y cuerpo en Markdown.
- El **nombre del archivo** debe ir en **kebab-case** y coincidir con el campo `name` del frontmatter (sin `.md`).

**Ejemplos en esta carpeta:** `business-functional-analyst.md`.

## Cómo añadir un rol nuevo

1. **Plantilla base (estructura):** abre y sigue [../development/role-template.md](../development/role-template.md). Área de trabajo **`.analyst/`**; límites respecto a código, **`.delivery-control/`** (dueño: Technical Leader) y **`.architecture/`**: adapta en consecuencia.
2. Crea en **esta** carpeta un fichero `nombre-del-rol.md` (kebab-case).
3. Asegura que el rol indique con claridad qué toca, qué no, y a qué carpetas o sistemas aplica.
4. Haz un **PR** o revisión con otra persona en Saturnodev Labs para alinear criterio.

Si no existiera en esta categoría un rol de referencia cercano, parte igualmente de la **plantilla** o duplica `business-functional-analyst.md` y ajusta ámbito y nombres.

## Convención Saturnodev Labs v2 (recordatorio)

- No redefinir a solas: **`.architecture`** (diseño) y **`.iac`** (IaC) suelen ser responsabilidad de otras carpetas/roles, salvo que el texto del agente de análisis diga lo contrario.
- Tras aprobación en **`.analyst/approved/`**, el **[technical-leader](../management/technical-leader.md)** promueve a **`.delivery-control/`**; la implementación sigue [fullstack-developer](../development/fullstack-developer.md) y [software-architect](../architecture/software-architect.md) (**`.architecture/`**, **`architecture-wiki/`**).
