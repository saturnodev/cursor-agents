# Saturnodev Labs — Agentes, SDLC y plantillas (v2)

Esta wiki documenta el **modelo de ciclo de vida (SDLC) Saturnodev Labs**, **qué roles de agente existen**, **en qué fase intervienen**, **qué artefactos producen** y **cómo usarlos en Cursor**. La **fuente de verdad** es el **Markdown versionado en git** del repositorio de plantillas (clonar o copiar al repo de producto).

**Repositorio de plantillas:** ver el `README.md` en la raíz del mismo repositorio donde vive `docs/wiki-tmp/`.

---

## Contenido de esta wiki

| Página | Descripción |
|--------|-------------|
| [SDLC – Modelo v2 (fases 1 a 7)](/SDLC-Saturnodev-Labs-v2) | Fases de entrega, fase 7 (monitoreo), flujo lógico |
| [Roles por fase y entregables](/Roles-y-fases) | Tabla de agentes, cuándo trabajan, workflow |
| [Artefactos en el repositorio de producto](/Artefactos) | `.architecture`, `.delivery-control`, `.pmo`, `docs/`, `.iac`, `.testing`, **`.security`**, `.analyst` |
| [Cursor: cómo usar los agentes](/Cursor-agentes) | `.cursor/agents`, `@` a archivos, reglas |

---

## Resumen ejecutivo

- **Seis fases de entrega (1–6):** desde iniciativa y requisitos hasta *release*; en la práctica el trabajo es **ágil** y las fases pueden **solaparse**.
- **Fase 7 (etiqueta de documentación):** *monitoreo y salud del proyecto*; el rol [Technical Leader](../../management/technical-leader.md) se ubica en la **7** para separar *governance* del hilo 1–6, pero **trabaja en paralelo** en todo el ciclo, no solo al final.
- **Backlog operativo:** [Technical Leader](../../management/technical-leader.md) mantiene **`.delivery-control/`** (sprints semanales lun–dom, historias con esfuerzo en **h**). El analista entrega en **`.analyst/`** hasta **`.analyst/approved/`** para promoción por el TL.
- **Project Manager:** solo escribe **`.pmo/*.md`** (p. ej. `dashboard.md`); lee **`.delivery-control/`** y Git.
- **Plantillas de agente:** archivos `*.md` con *frontmatter*; se **copian** al repo de producto (p. ej. bajo `.cursor/agents/`) y se gobiernan con el mismo criterio que el código.
- **QA seguridad ([pentester](../../testing/pentester.md)):** planes e informes bajo **`.security/`**; ejecuta con **consentimiento** explícito; eleva **bugs** al TL en **`.delivery-control/`** para priorización. **No** corrige código de aplicación.

> Para tablas ampliadas y diagramas en texto, consultad el `README.md` en la raíz del repositorio de plantillas. Esta wiki se mantiene alineada con `docs/wiki-tmp/`.
