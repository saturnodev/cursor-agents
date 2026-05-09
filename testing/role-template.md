# Template: QA / testing roles (Saturnodev Labs v2)

**How to use:** copy this file, rename it to `role-name.md` (kebab-case) and replace each `{{ ... }}` or _[instruction]_ with the role content (Cypress, Playwright, mobile, a11y, performance, etc.).

**Rule common to all roles under `testing/`:** test code and configuration live **only** under the agreed working directory (e.g. **`.testing`**); the role does not edit application code unless a specific role redefines that (Saturnodev Labs default: **do not** touch `src/`, `app/`, etc.).

**Reference:** full example in `testing/qa-tester.md`.

**Folder layout (Saturnodev Labs v2):** under `testing/`, **specialist** profiles (Cypress, Playwright, k6, API, mobile) sit under **`testing/<technology-or-framework>/`**, e.g. `testing/cypress/qa-cypress.md`. The template **`testing/role-template.md`** and a **generic** role (e.g. `qa-tester.md`) can stay at the **root** of `testing/`.

**Ver también (Saturnodev Labs v2):** [README de testing](./README.md) · [README raíz del repositorio](../README.md)

---

## Frontmatter (required)

```markdown
---
name: {{kebab-case-id, e.g. qa-cypress, qa-api}}
description: {{Designs/runs tests; frameworks; .testing/; Markdown plans; StoryId; bugs to .delivery-control; docs/manual-de-usuario when applicable. "Use when …"}}
---
```

## Suggested body (keep order; adapt titles to the role)

```markdown
# {{Readable title (e.g. QA Tester, QA API, QA Mobile)}}

Intro: what is tested, which folder (typically `.testing/`), what is published, what is not touched.

---

## Role and scope

**In scope:** test design in **Markdown** under **`.testing/`**, execution, reports, {{frameworks}}, traceability to **`.delivery-control/`** stories, optional CI (e.g. GitHub Actions).

**Out of scope:** edit application sources; hand off to the developer; how this role differs from the generic profile (e.g. E2E only vs unit).

---

## Operating boundary: `{{.testing or subfolder, e.g. .testing/cypress}}` only

- Bullets: which paths can be created or modified; explicit prohibition of touching `src/`, `app/`, etc.

---

## `{{.testing/...}}` folder structure (recommended)

Reference tree: specs, reports, artifacts, config, plans, other-frameworks, etc. Adjust names to the stack (Cypress, Playwright, k6, …).

---

## Plans, CI, and traceability

Steps: read **story** / AC; plan under **`.testing/plans/*.md`**; design (code under **`.testing/`**); execute; reports under **`.testing/reports/`**; optional **GitHub Actions** artifacts; **bugs** under **`.delivery-control/.../bugs/`** for TL.

---

## Test types and frameworks

- List: functional, unit, regression, smokes, or domain types (API, a11y, load).
- Subfolder names under `.testing/`.

---

## Best practices (apply always)

- Structure, naming, traceability, reporting, stability (selectors), secrets/env, CI/scripts documented in `.testing/README.md`.

---

## Deliverables per execution (optional; recommended)

- Report, artifacts, CI upload if configured, summary to the user.

---

## Limitations (strict)

- No application code; only `.testing/`; no production config; flaky/fail → report, do not fix app code (unless the role says otherwise).

---

## {{CLI / herramientas}} (minimum required)

- Extensions, env vars, where to store org/project (no secrets in repo).
```

---

## Checklist before finalizing a new QA role

- [ ] `name` matches the file name (kebab-case).
- [ ] `description` has the "Use when …" trigger and the framework/area.
- [ ] Limits vs **Fullstack/Backend** (do not touch app) and vs **analyst/architecture** (who owns requirements and published architecture).
- [ ] Explicitly what goes to **`.testing/reports/`** and **`.testing/artifacts/`**.
- [ ] No personal paths; plan/suite IDs documented under `.testing/plans/` or the test area `README`.

## Naming convention

`{{role}}.md` in `testing/`, e.g. `qa-tester.md`, `qa-cypress.md`, `qa-api-postman.md`.
