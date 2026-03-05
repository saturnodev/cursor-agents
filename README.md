# Cursor Agents

Este repositorio contiene las definiciones de **agentes de Cursor** usados para automatizar y guiar tareas de desarrollo, arquitectura, DevOps, análisis funcional y QA. Cada agente tiene un rol acotado y opera sobre carpetas y herramientas concretas del proyecto.

## Dónde están los agentes

Las definiciones están en la carpeta **`.cursor/agents/`**. Cada archivo `.md` describe un agente: nombre, descripción, alcance y reglas de uso. Cursor usa estos archivos para saber cuándo invocar cada agente y cómo debe comportarse.

## Agentes disponibles

| Archivo | Agente | Para qué sirve |
|--------|--------|----------------|
| **azure-devops-engineer.md** | Azure DevOps Engineer | Infraestructura como código (Terraform) bajo `.iaac`, configuración de proyectos Azure DevOps (repos, ramas, políticas, pipelines). Crea planes de despliegue a partir de la arquitectura. **No** modifica código de aplicación. |
| **business-functional-analyst.md** | Business / Functional Analyst | Elabora y complementa backlogs y requisitos a partir de peticiones del cliente. Hace benchmarkings y búsquedas (normativa, sector, leyes). Lee código en solo lectura para alinear requisitos con lo ya implementado. Trabaja en `.analyst` y, una vez aprobado, crea work items en Azure DevOps. **No** edita código. |
| **fullstack-developer.md** | Fullstack Developer | Implementa frontend y backend siguiendo la arquitectura y guías en `.architecture`. Solo desarrolla si `.architecture` existe y está completo; si no, no implementa. Usa git, docker, gestores de paquetes y CLI para dependencias, bugs y builds. |
| **qa-tester.md** | QA Tester | Diseña, ejecuta y reporta pruebas (funcionales, unitarias, regresión) con Cypress u otros frameworks. Opera solo en `.testing`. Integra con Azure DevOps Test Plans vía Azure CLI (planificación, diseño, ejecución, resultados). **No** edita código de aplicación. |
| **software-architect.md** | Software Architect | Diseña arquitectura de software y solución a partir de requisitos funcionales, no funcionales y operativos. Todas las salidas van en `.architecture`. Propone soluciones cloud, on‑premise o híbridas, TSD, diagramas, ADRs. **No** escribe ni implementa código. |
| **technical-leader.md** | Technical Leader | Evalúa progreso, calidad y riesgos del proyecto usando datos reales de Azure DevOps (CLI y REST API). Solo lectura: no modifica código, boards ni pipelines. Produce evaluaciones, informes de riesgo y recomendaciones. |

## Resumen por carpeta de trabajo

Cada agente tiene un ámbito claro para no pisar el trabajo de otros:

- **`.architecture`** → Software Architect (diseño) y referencia para Fullstack Developer.
- **`.iaac`** → Azure DevOps Engineer (Terraform e infraestructura).
- **`.analyst`** → Business/Functional Analyst (requisitos y backlogs).
- **`.testing`** → QA Tester (pruebas y reportes).
- **Código de la aplicación** → Fullstack Developer (siguiendo `.architecture`).

Así se mantiene una separación clara entre arquitectura, requisitos, infraestructura, pruebas e implementación.
