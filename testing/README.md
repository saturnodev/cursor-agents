# Categoría: QA y pruebas

**Versión (documentación):** 2 (Saturnodev Labs — plantillas de agentes, v2). [README raíz](../README.md).

Roles de **diseño, ejecución e informe de pruebas**; el material vive bajo **`.testing/`** (QA funcional y frameworks); el **[pentester](pentester.md)** usa **`.security/`** para escenarios e informes de seguridad. **Trazabilidad** a historias en **`.delivery-control/`**; **bugs** visibles para el **[technical-leader](../management/technical-leader.md)**. Sin editar código de aplicación salvo excepción explícita.

## Estructura

```
testing/
├── README.md
├── role-template.md
├── qa-tester.md
├── pentester.md
└── <tecnologia-o-framework>/
    └── <rol>.md
```

**Plantilla:** [role-template.md](role-template.md).

| Rol | Archivo | Enfoque |
|-----|---------|----------|
| QA genérico | [qa-tester.md](qa-tester.md) | Planes en Markdown, **StoryId**, **`docs/manual-de-usuario.md`**, bugs → TL |
| Pentester | [pentester.md](pentester.md) | **`.security/`**, specs antes de ejecutar, bugs de seguridad → **`.delivery-control/`** |
| Jest móvil | [jest-mobile/qa-jest-mobile.md](jest-mobile/qa-jest-mobile.md) | Jest RN/Expo bajo **`.testing/`** |
| Cypress web | [cypress/qa-cypress-web.md](cypress/qa-cypress-web.md) | E2E web bajo **`.testing/`** |

## Cómo añadir un rol nuevo

1. Partir de [role-template.md](role-template.md).
2. Documentar trazabilidad a **`.delivery-control/`** y formato **Markdown**; ámbito de escritura **`.testing/`** o **`.security/`**.
3. Perfiles por stack: `testing/<stack>/<rol>.md`.

## Convención

- Suites E2E centralizadas bajo **`.testing/`** salvo excepción en **`.architecture`**.
- **Pentester:** consentimiento explícito antes de herramientas contra URLs; no producción sin aprobación.
- **Pruebas unitarias al 100%** antes de *push* en desarrollo: [fullstack-developer](../development/fullstack-developer.md).
