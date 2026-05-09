# Roles de agente: qué hacen, cuándo y en qué fase

Cada `*.md` en el repositorio de **plantillas Saturnodev Labs v2** fija *límites* (carpetas que tocan o no) y *entregables*. **Principal** = uso más frecuente. **Transversal** = lectura, riesgo o gobierno en varias fases.

[Volver al inicio](/Home)

Rutas en el repo de plantillas (relativas a la raíz): `analysis/`, `architecture/`, `development/`, `testing/`, `management/`, `devops-iac/`.

---

## Resumen por rol (referencia)

| Rol | Ruta en repo (carpeta) | Qué hace (resumen) | Fase(s) |
|-----|-------------------------|--------------------|---------|
| **Business / Functional Analyst** | `analysis/business-functional-analyst.md` | Requisitos, HU, AC, *benchmark* y marco legal; *read-only* código; **`.analyst/`** → **`.analyst/approved/`**; no promueve a `.delivery-control` (TL). | **1, 2, 3** (principal 1–3) |
| **Software Architect** | `architecture/software-architect.md` | TSD, ADR, arquitectura; **solo** desde backlog aprobado del analista; **`.architecture/`**; espejo **`architecture-wiki/`**. | **3** (principal) |
| **Fullstack Developer** | `development/fullstack-developer.md` | `docs/specs/story-*.md`, *unit* obligatorias, rama `story-*` desde `dev`, evidencia en **`.delivery-control/`**; **`docs/manual-tecnico.md`**. | **4** (principal) |
| **Especialistas** (React, Go, Flutter, Angular, Laravel) | `development/<stack>/` | Mismas reglas **Saturnodev Labs v2**; *stack* acotado. | **4** (principal) |
| **QA Tester (genérico)** | `testing/qa-tester.md` | **`.testing/`**, informes Markdown; bugs al TL; **`docs/manual-de-usuario.md`** tras cada iteración de pruebas. | **5** (principal; apoyo **4** *shift-left*) |
| **QA Pentester / seguridad** | `testing/pentester.md` | **`.security/`**, consentimiento, hallazgos → **`.delivery-control/`** para el TL. | **5** (principal); apoyo **4**; validación hacia **6** |
| **QA Jest móvil** | `testing/jest-mobile/qa-jest-mobile.md` | Jest móvil en **`.testing/`**. | **5** (principal) |
| **QA Cypress web** | `testing/cypress/qa-cypress-web.md` | E2E web; humo hacia **6** si aplica. | **5** (principal); **6** (*smoke* *post-deploy*) |
| **Technical Leader** | `management/technical-leader.md` | Dueño **`.delivery-control/`**; sprints lun–dom; esfuerzo en **h**; sin código de app. | **7** (etiqueta) **y 1–6 en paralelo** |
| **Project Manager** | `management/project-manager.md` | Solo **`.pmo/*.md`**; lectura **`.delivery-control/`** + Git. | **2** y **7** (foco documental); en paralelo |
| **DevOps / IaC** | `devops-iac/devops-engineer.md` | Terraform multinube, **GitHub Actions** por defecto, **`.iac/`**, alineado a **`.architecture/`**. | **2, 3, 4, 6** (énfasis *release* en 6) |

---

## Flujo lógico *end-to-end* (referencia)

1 → 2 → 3 → 4 → 5 → 6, con **monitoreo** (fase 7) como categoría de *oversight* en paralelo, no *waterfall* rígido.

- **Analista:** acompaña **1–3**.
- **Arquitecto:** concentra **3** (desde aprobación del analista).
- **Desarrollo:** **4**.
- **QA** (funcional + seguridad): **5** (y apoyo 4/6).
- **DevOps:** **2, 3, 4, 6** (énfasis *infra* y *release* en **6**).
- **PM:** refuerza **2** y **7**.

## Workflow operativo por fase (agentes y entregables)

| Fase | Agente(s) (principal) | Entregables clave |
|------|------------------------|-------------------|
| **1** *Iniciativa* | business-functional-analyst; *paralelo:* technical-leader | **`.analyst/`** (borradores, *research*) |
| **2** *Planeación* | business-functional-analyst; devops-engineer; *paralelo:* technical-leader, **project-manager** | Backlog afinado; políticas repo/CI (GitHub por defecto) |
| **3** *Diseño* | software-architect; business-functional-analyst; devops-engineer; *paralelo:* technical-leader | **`.architecture/`**; **`.analyst/approved/`**; TL → **`.delivery-control/`**; **`.iac/`** esbozado |
| **4** *Desarrollo* | fullstack o especialista; devops-engineer (CI); qa opc. *shift-left* | `docs/specs/story-*.md`, **`docs/manual-tecnico.md`**, código, *PR* |
| **5** *Pruebas* | qa-tester; **pentester**; jest / cypress | **`.testing/`** y/o **`.security/`**; bugs en **`.delivery-control/`**; **`docs/manual-de-usuario.md`** |
| **6** *Release* | devops-engineer; qa (humo) | *Workflows* de *release*, *apply* **`.iac/`**, despliegue |
| **7** *Monitoreo* | technical-leader; **project-manager** | **`.delivery-control/`** + **`.pmo/*.md`** |

Más detalle: `README.md` en la raíz del repositorio de plantillas, sección *Workflow por agente y fase del SDLC*.

---

## [Artefactos](/Artefactos) · [Uso en Cursor](/Cursor-agentes)
