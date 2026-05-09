# Saturnodev Labs — Plantillas de agentes (v2)

**Versión (documentación): 2** (Saturnodev Labs — plantillas de agentes, **v2**). Este repositorio y sus `README` siguen la línea **v2**: alineación reciente (reglas Cursor canónicas en [architecture/software-architect.md](architecture/software-architect.md), política **doc-sync** antes de `git commit` descrita allí, cruces entre `README` por categoría, herramientas [`agents-cli`](agents-cli) / [`install.sh`](install.sh) para volcar roles en `.cursor/agents/` del producto, etc.).

Plantillas de **agentes** para **Cursor**, **Claude** (Code / *desktop*) y **GitHub Copilot** (Chat / *agent* según el producto). Misma intención de rol; la forma de usar el `*.md` (carpeta de agentes, *skills*, *custom instructions*) depende de cada herramienta.

Repositorio de **plantillas de roles** para esas integraciones y equivalentes, que usa **Saturnodev Labs** para alinear criterio entre proyectos: mismos nombres de perfiles, mismos límites (qué toca y qué no) y documentación bajo la misma estructura por **categoría** (análisis, arquitectura, desarrollo, validación, gestión, DevOps).

No es un framework ejecutable: son archivos **Markdown** con *frontmatter* y texto que el equipo **copia**, **sincroniza con [`agents-cli`](agents-cli)** o **versiona** en cada repositorio de producto según necesite.

## Mejoras en esta versión 2

Cambios de línea **v2** que ya están reflejados en este repositorio (complementan el párrafo inicial sobre alineación):

- **Reglas Cursor `saturnodev-labs-v2-doc-sync-on-commit.mdc` y `saturnodev-labs-v2-technical-manual.mdc`:** el cuerpo canónico vive en [architecture/software-architect.md](architecture/software-architect.md); en cada **repo de producto** se materializan bajo `.cursor/rules/` — **no** se versionan en **este** repositorio de plantillas. **Doc-sync** con **`alwaysApply: true`**: checklist **antes de cada** `git commit` autorizado sobre **`.architecture/`**, **`architecture-wiki/`**, **`docs/specs/story-*`**, **`docs/manual-tecnico.md`** cuando el cambio lo amerite. **Manual técnico** (globs en código): ver tabla de reglas en el rol del arquitecto.
- **README coherentes:** los índices de **analysis**, **architecture**, **development**, **devops-iac**, **management**, **testing** y [`docs/wiki-tmp`](docs/wiki-tmp/README.md) declaran **Versión (documentación): 2** y enlazan al README raíz para misma línea documental. En el **repo de producto**, la carpeta **`.cursor/agents/`** (rellena con `agents-cli` o copia manual) cumple la convención Cursor descrita en [docs/wiki-tmp/Cursor-agentes.md](docs/wiki-tmp/Cursor-agentes.md).
- **Tablas SDLC y workflow:** enlazan [fullstack-developer](development/fullstack-developer.md), *handoff* de fase 3 hacia **`.architecture/`**, `docs/specs/story-*.md`, **`.delivery-control/`** (dueño: [technical-leader](management/technical-leader.md)), **`.analyst/approved/`**, **`.pmo/*.md`** (PM) y criterios de *commit*/*push* en ese rol.
- **Wiki / copia legible:** [`docs/wiki-tmp`](docs/wiki-tmp/README.md) concentra Markdown alineado al mismo modelo; en repos de producto **Saturnodev Labs v2** el espejo normativo de arquitectura vive bajo **`architecture-wiki/`** en la raíz del producto (ver [software-architect](architecture/software-architect.md)).
- **`.cursor/rules` vs `.cursor/agents`:** la línea base de reglas para repos de producto está en [software-architect](architecture/software-architect.md). Uso de **agentes** en Cursor (rutas `@`, qué copiar): [docs/wiki-tmp/Cursor-agentes.md](docs/wiki-tmp/Cursor-agentes.md). La regla **doc-sync** canónica **no** se versiona en **este** repo de plantillas (se genera en cada app según ese rol).
- **DevOps:** [devops-iac/README.md](devops-iac/README.md) enlaza **`.architecture/`**, espejo wiki y la regla canónica / [fullstack-developer](development/fullstack-developer.md) en la misma política v2.
- **Plantillas por categoría:** cada carpeta expone `README.md` v2 y, donde aplica, `role-template.md` o roles ejemplo con convención de *frontmatter* y nombres **kebab-case** alineada al README raíz.
- **QA y gestión:** roles bajo [testing/](testing/README.md) y [management/](management/README.md) quedan integrados en las tablas de fases (p. ej. fase 5, fase 7 / monitoreo) con enlaces cruzados desde este índice.

## Para qué sirve

- **Estandarizar** cómo se describen los agentes (alcance, entregas, limitaciones, carpetas como **`.architecture/`**, **`.iac/`**, **`.testing/`**, **`.security/`**, **`.analyst/`**, etc.).
- **Reutilizar** roles en varios repositorios de la organización sin reescribirlos desde cero.
- **Evolución** con la organización: al cambiar una plantilla aquí, los equipos deciden qué difundir a sus productos (*merge*, *cherry-pick*, copia manual o **`agents-cli sync`** contra el remoto / *lockfile*).

Cada **categoría** tiene al menos un `README.md` y, donde aplica, una **plantilla base** en inglés (`role-template.md`) o un **rol de ejemplo** ya rellenado. **Plantilla canónica** para *roles* nuevos de entrega: [development/role-template.md](development/role-template.md). **Variante QA:** [testing/role-template.md](testing/role-template.md). Las carpetas *analysis*, *architecture*, *devops-iac* y *management* reutilizan la misma mecánica de *frontmatter* y sección *Scope* que en esa plantilla salvo que el `README` de la categoría indique lo contrario.

| Carpeta | Uso resumido |
|--------|----------------|
| [analysis/](analysis/README.md) | Analistas funcionales, backlog, requisitos (bajo **`.analyst/`**, aprobación en **`.analyst/approved/`**) |
| [architecture/](architecture/README.md) | Arquitectura y diseño (entregas en **`.architecture/`** en el repo de app) |
| [development/](development/README.md) | Desarrollo: [role-template](development/role-template.md), fullstack, perfiles **por tecnología** (React, Go, Flutter, Angular, Laravel, etc.) |
| [testing/](testing/README.md) | QA: [role-template](testing/role-template.md), genérico, **pentester** (seguridad / CLI), **Jest móvil**, **Cypress web** |
| **Seguridad** | Criterio y escenarios: [testing/pentester.md](testing/pentester.md); artefactos en **`.security/`** en el repo de producto (no hay carpeta `security/` de plantillas en la raíz). |
| [management/](management/README.md) | **Technical Leader** (dueño **`.delivery-control/`**) y **PM** (solo **`.pmo/*.md`**); sin código |
| [devops-iac/](devops-iac/README.md) | **DevOps engineer:** Terraform multinube, **GitHub Actions** por defecto, **`.iac/`** en el producto |

## `agents-cli` e `install.sh` (sync desde GitHub)

En la raíz del repo hay un **CLI en Bash** y un instalador para mantener los roles de Cursor **alineados con la última versión** publicada en GitHub (sin Azure DevOps ni `az`).

| Recurso | Descripción |
|--------|----------------|
| [`agents-cli`](agents-cli) | Descarga Markdown desde [github.com/saturnodev/cursor-agents](https://github.com/saturnodev/cursor-agents) (rama por defecto **`main`**) usando la API de GitHub y `raw.githubusercontent.com`. Comandos: `init`, `list`, `pick` (requiere `fzf`), `add`, `remove`, `sync` (opción `--check` para detectar *drift*), `pin`, `banner`, `version`. |
| [`install.sh`](install.sh) | Copia `agents-cli` a `~/.local/bin` (o `--prefix`). Añade **PREFIX** al **PATH** en `~/.zshrc` (y bash/fish si aplica) de forma **idempotente**. Tras instalar, debes **cerrar y abrir la terminal** o **`source ~/.zshrc`** (el script lo recuerda): el proceso del instalador no modifica el PATH de la ventana actual. `--no-shell-update` desactiva los cambios en los perfiles. Opcional `--with-deps` (Homebrew) para `jq` / `fzf`. Variables: `SATURNODEV_LABS_AGENTS_PREFIX`, `SATURNODEV_LABS_AGENTS_BIN` (alias legacy `TMHUS_AGENTS_*`); `GITHUB_TOKEN` opcional. |

**Requisitos:** `curl` y `jq`. **Opcionales:** `fzf` (solo `pick`), `GITHUB_TOKEN`.

Tras `init`, el CLI mantiene **`.cursor/agents/agents.lock.yml`**: ref de rama o *commit* (`pin`) y lista de rutas sincronizadas; `sync` vuelve a bajar solo esos ficheros.

**Flujo típico en un repo de aplicación:** `agents-cli init` → `agents-cli list --ref main` para ver rutas (p. ej. `development/react/react-developer.md`) → `agents-cli pick` o `agents-cli add <ruta>...` → más adelante `agents-cli sync` para actualizar. Las opciones globales (`--ref`, `--dest`, `-q`) van **antes** del subcomando, p. ej. `agents-cli --ref main add development/fullstack-developer.md`.

**Fork o mirror:** `SATURNODEV_GH_OWNER`, `SATURNODEV_GH_REPO`, `SATURNODEV_GH_API` si el remoto no es el público por defecto.

### Wiki y documentación (este repositorio)

- **Índice:** [docs/wiki-tmp/README.md](docs/wiki-tmp/README.md) — Markdown espejo del modelo SDLC y roles (misma fuente de verdad que este repo).
- **Páginas:** [Home](docs/wiki-tmp/Home.md), [SDLC](docs/wiki-tmp/SDLC-Saturnodev-Labs-v2.md), [Roles y fases](docs/wiki-tmp/Roles-y-fases.md), [Artefactos](docs/wiki-tmp/Artefactos.md), [Cursor / agentes](docs/wiki-tmp/Cursor-agentes.md).
- **Publicación externa:** opcional (wiki de GitHub, sitio interno, u otra herramienta); el **contenido normativo** se edita en **git** (`docs/wiki-tmp/` aquí; en el producto: **`docs/`** para manuales, **`.delivery-control/`**, **`.pmo/`**, etc.).
- **Repos de aplicación (Saturnodev Labs v2):** espejo **`architecture-wiki/`** en la raíz del producto (ver [software-architect](architecture/software-architect.md)); no confundir con `docs/wiki-tmp/` de *este* repo de plantillas.

---

## Fases del SDLC (Saturnodev Labs v2)

En **Saturnodev Labs v2** el *Software Development Life Cycle* se organiza en **seis fases** de *delivery*; además, el **modelo de agentes** usa la **fase 7 (monitoreo)** para ubicar al líder técnico (ver nota bajo la tabla, sin confundir con un *paso* estricto después de la 6). Las fases 1-6 pueden solaparse o repetirse en ciclos ágiles; el orden lógico *delivery* es el siguiente:

| Fase | Nombre | Objetivo |
|------|--------|----------|
| **1** | **Iniciativa comercial (análisis de requisitos)** | Asegurar **viabilidad de negocio y alcance**: captar y estructurar requisitos que alimenten la cadena de valor, antes o en paralelo con *discovery*. |
| **2** | **Planeación** | Convertir requisitos en **plan** de trabajo, prioridades, *timeline*, capacidad y criterios de aceptación iniciales (sin sustituir el detallado de diseño). |
| **3** | **Análisis y diseño** | **Detallar el backlog** (épicas, *features*, *stories* con criterios de aceptación) y producir el **diseño de arquitectura de software** y, en la misma etapa, el criterio de **UI/UX** (flujos, *wireframes* de referencia, lineamientos o prototipos) documentados para implementación, típicamente bajo **`.architecture/`**. |
| **4** | **Desarrollo** | *Build* del producto: **vibe coding** y **spec driven** contra **`.architecture/`**, `docs/specs/story-*.md` (con pruebas unitarias obligatorias en el *spec*), historias planificadas en **`.delivery-control/`**. **Git** (`commit`/`push`) **solo** con aprobación del usuario; **pruebas unitarias al 100%** antes de *subir*; rama `story-*` desde `dev`; tras *push* aprobado, actualizar evidencia en la ficha de historia bajo **`.delivery-control/`** (ver [fullstack-developer](development/fullstack-developer.md)). |
| **5** | **Pruebas** | *Validación* funcional, *regresión*, automatización y reporte de calidad de cara al *release* (bajo **`.testing/`**; planes e informes en **Markdown**; **bugs** elevados al TL en **`.delivery-control/`**). |
| **6** | **Release** | Empaquetar, aprobar y desplegar a *staging/producción*: *pipelines*, *gates*, **`.iac/`**, versionado y cierre *release* (o *rollout* controlado). |

**Fase 7 (monitoreo y salud del proyecto):** no es un octavo *paso* consecutivo después de la 6. Es una **etiqueta** en el modelo **Saturnodev Labs v2** para **separar** el hilo *delivery* (fases 1 a 6) de la gobernanza y el **seguimiento continuo** (lectura de **`.delivery-control/`**, Git, CI, *health* de entrega). El agente [management/technical-leader.md](management/technical-leader.md) se documenta en **fase 7** con ese criterio; **en la práctica** el liderazgo técnico **cubre en paralelo** el proyecto (1 a 6 y más allá del *release*), sin que haya un solo momento “fase-7 *solo* al final”.

**Nota (fase 4):** la *spec* trazable vive en **`docs/specs/story-*.md`** junto a **`.architecture/`**; el backlog operativo y las fechas de sprint están en **`.delivery-control/`** (TL). El enfoque *spec driven* usa esas fuentes como referencia para el *vibe coding* asistido por la IA.

---

## Workflow por agente y fase del SDLC

Cada `*.md` en **este** repositorio de plantillas fija *límites* y *entregables*; aquí se conecta cada **rol** con las fases: **1–6** (entrega) y, para el **líder técnico**, además la **7** (monitoreo, como *slot* de documentación). **Principal** = uso más frecuente. **Transversal** = aplica a varias fases para gobierno, lectura o riesgo.

| Rol (archivo) | Qué hace (workflow) | Fase o fases |
|---------------|---------------------|-------------|
| **Analista funcional / negocio** [analysis/business-functional-analyst.md](analysis/business-functional-analyst.md) | *Requisitos* y *backlog* en **`.analyst/`**; *benchmark* y marco legal; *read-only* de código; aprobación en **`.analyst/approved/`** para que el TL promueva a **`.delivery-control/`**. | **1** (requisitos comerciales) **y 2** (soporte a *planeación* y priorización) **y 3** (detallado de *backlog* y aceptación). |
| **Arquitecto de software** [architecture/software-architect.md](architecture/software-architect.md) | TSD, ADR, arquitectura, lineamientos y riesgo técnico; **`.architecture/`**, sin código; **solo** desde backlog aprobado del analista. **UI/UX:** `ux-branding.md`, wiki **09**, **Figma MCP**, revisión **Stitch**. | **3** principal. |
| **Desarrollador fullstack** [development/fullstack-developer.md](development/fullstack-developer.md) | Front/back bajo **`.architecture/`**; `docs/specs/story-*.md` con **pruebas unitarias** *obligatorias*; `docs/manual-tecnico.md`; `commit`/`push` **solo** con OK del usuario; **100%** *unit* *tests*; rama `story-*` desde `dev`; evidencia en **`.delivery-control/`** tras *push* aprobado. | **4** principal. |
| **Especialistas por stack** (React, Go, Flutter, Angular, Laravel) [development/](development/README.md) | Mismas reglas **Saturnodev Labs v2** de *entrega* que *fullstack*; *stack* acotado. | **4** principal. |
| **QA (genérico)** [testing/qa-tester.md](testing/qa-tester.md) | *Suite* bajo **`.testing/`**, planes e informes en **Markdown**; **bugs** al TL; **`docs/manual-de-usuario.md`** al cerrar cada iteración de pruebas. Puede acompañar **4** (*shift-left*); **gate** duro **5**. | **5** principal; apoyo a **4**; humo/validación hacia **6** si aplica. |
| **QA Jest móvil** [testing/jest-mobile/qa-jest-mobile.md](testing/jest-mobile/qa-jest-mobile.md) | Jest para móvil bajo **`.testing/`**, informes en repo. **No cubre** E2E nativo (Detox, Appium, Maestro, etc.) salvo que el equipo amplíe el rol. | **5** principal. |
| **QA Cypress web** [testing/cypress/qa-cypress-web.md](testing/cypress/qa-cypress-web.md) | *E2E* web; informes. | **5** principal; **6** (humo *post-deploy* o *e2e* *staging*). |
| **QA Pentester** [testing/pentester.md](testing/pentester.md) | Seguridad: planes bajo **`.security/`**, ejecución con *consentimiento*; hallazgos como **bugs** para el TL en **`.delivery-control/`**; lectura de **`.architecture/`**. | **5** principal; apoyo **4** (*shift-left*); validaciones hacia **6** en *staging* si aplica. |
| **Líder técnico** [management/technical-leader.md](management/technical-leader.md) | Dueño de **`.delivery-control/`** (sprints semanales, esfuerzo en h, riesgos, `workplan.md`); promoción desde **`.analyst/approved/`**; sin código de aplicación. | **7** (monitoreo, *slot* documental) **y, en paralelo, 1–6**. |
| **Project Manager** [management/project-manager.md](management/project-manager.md) | Avance, riesgos y comunicación; lectura **`.delivery-control/`** + Git + `docs/`; **solo escribe** **`.pmo/*.md`** (p. ej. `dashboard.md`). | **2** (planificación) **y 7** (gobernanza como foco documental); **en paralelo** con otras fases si el equipo lo usa. |
| **DevOps / IaC** [devops-iac/devops-engineer.md](devops-iac/devops-engineer.md) | Terraform multinube, **GitHub Actions** por defecto, **`.iac/`**, *deployment plans* alineados a arquitectura. | **2** **y 3** (entornos y CI con diseño) **y 4** (CI *dev*) **y 6** (release, *apply*). |

**Flujo lógico *end-to-end* (referencia, no *waterfall* rígido):** fase **1** (requisitos) → **2** (*plan*) → **3** (*diseño + backlog detallado* + *`.architecture/`*) → **4** (*vibe + spec driven*) → **5** (*pruebas*) → **6** (*release*). **Monitoreo (fase 7)** añade la **categoría** *monitoreo* para [management/technical-leader.md](management/technical-leader.md) (**`.delivery-control/`**) y reportes en **`.pmo/`** con [management/project-manager.md](management/project-manager.md); ambos en **paralelo** a **1–6**. **Analista** acompaña **1–3**; **arquitecto** concentra **3**; **dev** en **4**; **QA** en **5** (y apoyo 4/6); **DevOps** en **2, 3, 4 y 6**; **PM** refuerza **2** y **7**.

**Diagrama de flujo (solo texto; sin Mermaid, sin render externo):** primero el *camino* en una línea (como *flowchart LR*), luego el detalle vertical.

```text
  (1) --> (2) --> (3) --> (4) --> (5) --> (6)     flujo principal, lectura LR (izquierda → derecha)
  1: Inic.   2: Plan.   3: A+D   4: Desa.   5: Pru.   6: Rel.
  (3) análisis y diseño: backlog, arq, UI-UX.  (4) dev: spec driven, vibe.  (6) release: pipelines, .iac/, despliegue.

  Detalle en vertical:

  (1) Iniciativa y requisitos
        |
        v
  (2) Planeación
        |
        v
  (3) Análisis y diseño  --  backlog, arq, UI-UX
        |
        v
  (4) Desarrollo  --  spec driven, vibe coding
        |
        v
  (5) Pruebas
        |
        v
  (6) Release  --  pipelines, .iac/, despliegue

  (7) Monitoreo del proyecto  --  rol: technical-leader (fase 7 = etiqueta; vive en paralelo, no *después* de 6)
  Líder técnico:  ~~~>  1, 2, 3, 4, 5, 6  (+ fase 7 en documentación)   lectura/riesgo transversal; no *gate* obligatoria
```

*El **líder técnico** no es *gate* obligatoria: aporta lectura, *metrics* y riesgo; la **7** nombra el *monitoreo* y separa el hilo 1-6; el alcance del rol sigue el calendario completo del producto, no un único tramo. El bloque anterior es un *fence* de código con etiqueta `text` (monoespaciado) para que se alinee en cualquier visor.*

### Workflow operativo por fase (qué se hace, qué agente, qué se entrega)

Orden lógico **1–6**; en **paralelo** a cualquier fase, **Líder técnico** ([management/technical-leader.md](management/technical-leader.md)). No todos los ciclos usan todos los roles a la vez: elegir plantillas según *stack* (p. ej. [react-developer](development/react/react-developer.md) o [qa-cypress-web](testing/cypress/qa-cypress-web.md)).

| Fase | Qué hace el equipo (workflow) | Agente(s) (plantilla de referencia) | Entregables principales (esta fase) |
|------|--------------------------------|--------------------------------------|-------------------------------------|
| **1** *Iniciativa / requisitos* | *Discovery*, capturar requisitos de negocio, límites y riesgo inicial; *benchmark* y contexto; preparar o depurar el *backlog* a alto nivel. | [business-functional-analyst](analysis/business-functional-analyst.md) **(principal).** *Paralelo:* [technical-leader](management/technical-leader.md). | Borradores y búsquedas bajo [`.analyst/`](analysis/README.md); requisitos y criterios en curso; resúmenes de *benchmark* o marco legal (p. ej. `.analyst/research/`). |
| **2** *Planeación* | Priorizar, calendario y capacidad; criterios de aceptación iniciales; políticas de repo/CI (GitHub por defecto). | [business-functional-analyst](analysis/business-functional-analyst.md); [devops-engineer](devops-iac/devops-engineer.md) (repos, políticas, CI a alto nivel). *Paralelo:* [technical-leader](management/technical-leader.md); [project-manager](management/project-manager.md) (planes de entrega, estatus, capacidad). | Ajuste de *backlog*; documentación en [`.analyst/`](analysis/README.md); criterios iniciales enlazables a historias futuras en **`.delivery-control/`**. |
| **3** *Análisis y diseño* | Refinamiento de *backlog*; arquitectura, ADR, lineamientos, *handoff* UI/UX hacia **`.architecture/`**; alinear entornos e integración CI con diseño. | [software-architect](architecture/software-architect.md) **(diseño).** [business-functional-analyst](analysis/business-functional-analyst.md) (historias y criterios hasta **`.analyst/approved/`**). [devops-engineer](devops-iac/devops-engineer.md) (entornos, *workflows* co-diseñados). *Paralelo:* [technical-leader](management/technical-leader.md). | Documentación bajo [`.architecture/`](architecture/README.md) (TSD, `coding-guidelines`, `ux-branding` opc., ADR). El TL promueve trabajo operativo a **`.delivery-control/`**. *Terraform* bajo [`.iac/`](devops-iac/README.md) según *deployment plan*. |
| **4** *Desarrollo* | *Spec* con **## Unit tests (mandatory)**; rama `story-*` desde `dev`; **100%** pruebas *unit* *OK*; `commit`/`push` **solo** con aprobación del *usuario*; evidencia en **`.delivery-control/`**. *Vibe* / *spec*; *PR*; CI (GHA por defecto). | [fullstack-developer](development/fullstack-developer.md) o [development/](development/README.md). [devops-engineer](devops-iac/devops-engineer.md) (CI). [qa-tester](testing/qa-tester.md) (opc. *shift-left*). *Paralelo:* [technical-leader](management/technical-leader.md). | `docs/specs/story-*.md`, **`docs/manual-tecnico.md`**, **código** y *unit* *tests*; *push* según política de ramas / *PR*. |
| **5** *Pruebas* | *Test design*, ejecución, regresión, informes en **Markdown**; bugs al TL; **`docs/manual-de-usuario.md`** al cerrar iteración. | [qa-tester](testing/qa-tester.md); [pentester](testing/pentester.md); [qa-jest-mobile](testing/jest-mobile/qa-jest-mobile.md) o [qa-cypress-web](testing/cypress/qa-cypress-web.md). *Paralelo:* [technical-leader](management/technical-leader.md). | [`.testing/`](testing/README.md), **`.security/`**; trazabilidad a historias en **`.delivery-control/`**. |
| **6** *Release* | *Gates* de *release*; *apply* de **`.iac/`**; *deploy* a *staging* / *prod*; *smoke* o e2e contra entorno. | [devops-engineer](devops-iac/devops-engineer.md) **(principal).** [qa-cypress-web](testing/cypress/qa-cypress-web.md) u otro QA si aplica *humo* *post-deploy*. *Paralelo:* [technical-leader](management/technical-leader.md). | *Workflows* de *release* y ejecuciones; artefacto desplegado; estado de *infra* aplicada desde **`.iac/`**. |
| **7** *Monitoreo* | Lectura de **`.delivery-control/`**, Git, CI; informes en **`.pmo/`**; el **PM** complementa sin sustituir al PO humano. | [technical-leader](management/technical-leader.md) (fase 7 en documentación; **paralelo** a 1–6). [project-manager](management/project-manager.md) (*Executive Summary*, *semáforo*, bloqueos). | **`.delivery-control/`** (TL) y **`.pmo/*.md`** (PM) alineados al estado del repo. |

### Entregables del workflow (vista de conjunto)

Según fase y producto, el flujo deja trazas en **repositorio** (Markdown en carpetas acordadas) y, si aplica, en informes del líder o del PM. Lista **típica** (alinear a vuestro proyecto):

- **[`.analyst/`](analysis/README.md)** — requisitos, *drafts*, **`.analyst/approved/`**, *research* (*benchmark*, normas); el TL promueve a **`.delivery-control/`** (ver [business-functional-analyst](analysis/business-functional-analyst.md)).
- **[`.delivery-control/`](management/technical-leader.md)** — sprints **SPRINT-NN** (lun–dom), historias con esfuerzo en **h**, bugs, riesgos, `workplan.md`; fuente operativa del backlog en repo.
- **[`.pmo/`](management/project-manager.md)** — *dashboard* e informes del PM (**solo `.md`**).
- **[`.architecture/`](architecture/)** — diseño de arquitectura, TSD, lineamientos de *front*/*back*, ADR, diagramas **solo en texto** en *Markdown*; criterio de marca / UX (ver [software-architect](architecture/software-architect.md)).
- **`docs/specs/story-*.md`** y **`docs/manual-tecnico.md`** / **`docs/manual-de-usuario.md`** (ver [fullstack-developer](development/fullstack-developer.md) y [qa-tester](testing/qa-tester.md)).
- **Código de aplicación** (p. ej. `src/`, `app/`) — conforme a **`.architecture/`**; no *vive* en **este** repo de plantillas (aquí solo hay Markdown de roles por categoría y documentación).
- **[`.testing/`](testing/)** — *suites*, *fixtures*, *reports*, *config* en **Markdown** donde aplique narrativa (ver [qa-tester](testing/qa-tester.md)).
- **[`.security/`](testing/pentester.md)** — escenarios e informes del [pentester](testing/pentester.md).
- **[`.iac/`](devops-iac/)** — Terraform, módulos, `environments/`, *deployment plans* (ver [devops-engineer](devops-iac/devops-engineer.md)).
- **Gobernanza (TL + PM)** — estado en **`.delivery-control/`** y **`.pmo/`**; lectura adicional de Git y CI según el rol.
- **Agentes en Cursor (producto)** — *copias* de los `*.md` bajo **`.cursor/agents/`**, generadas con [`agents-cli`](agents-cli) o a mano desde las rutas de este repo (ver [docs/wiki-tmp/Cursor-agentes.md](docs/wiki-tmp/Cursor-agentes.md)).

Más abajo, en **Cómo utilizarlo (flujo de trabajo con plantillas)**, se explica cómo **versionar** esas plantillas en vuestro repo de producto.

---

## Cómo utilizarlo (flujo de trabajo con plantillas)

1. **Clonar o añadir** este repositorio (submódulo, paquete interno, o copia) según el proceso acordado por **Saturnodev Labs v2**.
2. Elegir **roles** según **fase** del SDLC (tabla de arriba) y *stack* del producto; abrís el `*.md` en la categoría adecuada (`analysis/`, `development/`, etc.).
3. **Llevar los roles al repo del producto:** copia manual de los `*.md` **o** instalar [`agents-cli`](agents-cli) con [`install.sh`](install.sh) y usar `init` / `add` / `pick` / `sync` contra [github.com/saturnodev/cursor-agents](https://github.com/saturnodev/cursor-agents) (público). Ajustar solo lo mínimo (enlaces, org, nombres de repo) cuando sea copia manual.
4. **Versionar** con el código; **no** *mezclar* *roles* incompatibles en el mismo *@* salvo tarea *explícitamente* cruzada.
5. Pauta **kebab-case** en nombres de fichero, alineada al campo `name` del *frontmatter*; leer los `README` por categoría y [development/role-template.md](development/role-template.md) / [testing/role-template.md](testing/role-template.md) al crear *roles* nuevos.

## Configuración en Cursor: carpeta `.cursor/agents`

En el **repositorio con Cursor** (código de aplicación), dejad en la **raíz** los **roles** concretos que inyecte el equipo al asistente.

```text
tu-proyecto/
├── .cursor/
│   ├── agents/                 # copias de los que *este* producto invoca (p. ej. vía agents-cli)
│   │   ├── development/
│   │   │   ├── fullstack-developer.md
│   │   │   └── react/
│   │   │       └── react-developer.md
│   │   ├── testing/
│   │   │   └── pentester.md
│   │   └── management/
│   │       ├── technical-leader.md
│   │       └── project-manager.md
│   └── rules/                  # (opcional) .mdc y globs — *Project Rules* de Cursor
├── src/
└── ...
```

- **Solo** los *roles* *necesarios*; estructura por *subcarpetas* alineada a **este** repo (`development/`, `testing/`, …) para mismas rutas que `agents-cli list`; criterio adicional en [docs/wiki-tmp/Cursor-agentes.md](docs/wiki-tmp/Cursor-agentes.md).
- Uso: **@** y ruta, p. ej. **@.cursor/agents/development/react/react-developer.md**. Las **reglas** en `.cursor/rules` son *complementarias* (estilo, *globs*), no el sustituto de la definición del *rol*.
- **Repos de producto:** arrancar **`.cursor/rules/*.mdc`** según la línea base del [software-architect](architecture/software-architect.md). El checklist **pre-commit** canónico (**`saturnodev-labs-v2-doc-sync-on-commit.mdc`**, **`alwaysApply: true`**) se **genera en cada repo de aplicación** copiando el bloque indicado en ese rol — **no** se versiona en **este** repositorio de plantillas.

> La convención **`.cursor/agents/`** en el **producto** forma parte de **Saturnodev Labs v2**; *versionar* en *git* para *@* estables. En **este** repo las fuentes canónicas de los roles están por **categoría** en la raíz (`development/`, `testing/`, …), no duplicadas bajo `.cursor/agents/`.

## Contribuir o actualizar plantillas

1. Cambios con **branch/PR** y *review* (arquitectura o *chapter* de prácticas **Saturnodev Labs v2**).  
2. *Roles* nuevos con la *plantilla* y *checklist* de la categoría correspondiente.  
3. Tras *merge* en `main`, los equipos pueden **actualizar** el `.cursor/agents/` del producto con `agents-cli sync` (misma ref que el *lockfile*) o copiando los ficheros afectados a mano.

## Referencia rápida: carpetas en el repositorio de producto

| Carpeta (producto) | Uso | Rol “dueño” del criterio |
|--------------------|-----|---------------------------|
| **`.architecture/`** | Diseño, TSD, lineamientos, ADR | [architecture/](architecture/README.md) |
| **`.iac/`** | Terraform, IaC | [devops-iac/](devops-iac/README.md) |
| **`.delivery-control/`** | Sprints, historias, bugs, riesgos, `workplan.md` | [technical-leader](management/technical-leader.md) |
| **`.pmo/`** | Informes del PM (`dashboard.md`, etc.) | [project-manager](management/project-manager.md) |
| **`docs/`** | Manuales (`manual-tecnico`, `manual-de-usuario`), `specs/story-*` | [fullstack-developer](development/fullstack-developer.md), [qa-tester](testing/qa-tester.md) |
| **`.testing/`** | *Suites* QA, informes, planes locales | [testing/](testing/README.md) |
| **`.security/`** | Escenarios y evidencia pentester | [pentester](testing/pentester.md) |
| **`.analyst/`** | *Drafts* y requisitos; **`.analyst/approved/`** | [analysis/](analysis/README.md) |
| **`.cursor/agents/`** | Roles de Cursor que el producto invoca (`@…`) | [docs/wiki-tmp/Cursor-agentes.md](docs/wiki-tmp/Cursor-agentes.md), [`agents-cli`](agents-cli) |

## Licencia y uso

Uso interno **Saturnodev Labs** salvo otra *policy*; la *fuente de verdad* de roles para *merge* séguro es el *Markdown* versionado y *review* humano.
