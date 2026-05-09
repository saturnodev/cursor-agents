# Template: development roles (Saturnodev Labs v2)

**How to use:** copy this file, rename it to `role-name.md` (kebab-case) and replace each `{{ ... }}` block or _[instruction]_ with the role content. Keep section order and headings unless a role does not need them; remove optional sections that do not apply.

**Folder layout (required in this repo):**

- **`development/role-template.md`** — this template (do not move to subfolders).
- **`development/<generic-role>.md`** — cross-cutting profiles (e.g. `fullstack-developer.md` at the root of `development/`).
- **`development/<technology>/`** — one directory **per stack or runtime**; inside it, one `.md` per specialist (kebab-case, e.g. `development/react/react-developer.md`, `development/go-backend/go-backend-developer.md`).

Add a subfolder **only** when the role is tied to a **single technology or family** (React, Go backend, Flutter, Angular, Laravel, .NET, etc.); the folder name is **kebab-case** and aligned with the stack (do not mix multiple technologies in one directory unless a meta-profile is agreed).

**Generic fullstack reference:** `development/fullstack-developer.md`. **By-technology reference:** see `development/react/`, `development/go-backend/`, `development/flutter/`, `development/angular/`, `development/laravel/`.

**Ver también (Saturnodev Labs v2):** [README de desarrollo](./README.md) · [README raíz del repositorio](../README.md)

---

## Frontmatter (required)

```markdown
---
name: {{kebab-case-id}}
description: {{One paragraph. What the agent does, key constraints, folders, tools. Invocation: "Use when the user asks for …"}}
---
```

## Body

Use this structure (adjust titles to the domain, but do not invent a different taxonomy per role):

```markdown
# {{Readable title (e.g. Fullstack Developer, Mobile Developer, …)}}

Intro: mission, clear limits (which folders, source of truth, what the role does not own), tools.

---

## Prerequisite: {{title, e.g. "`.architecture` must exist" or "Applies only if …"}}

- Bullets with a verifiable prerequisite.
- If the prerequisite fails: **what to do and what not to do** (e.g. do not implement anything, ask for another agent or document).
- **Saturnodev Labs (development delivery):** Stories live under **`.delivery-control/`** (Technical Leader). At least one `docs/specs/story-<id>-<kebab-name>.md` with **## Unit tests (mandatory)**; branch `story-*` from **`dev`**; never `commit`/`push` without explicit user authorization; 100% unit tests before approved push; after push update **story evidence** in **`.delivery-control/`** and **`docs/manual-tecnico.md`** when needed. **Architecture:** [software-architect](../architecture/software-architect.md), **`.architecture/`** plus **`architecture-wiki/`** at **repo root** (**05**, **06**, **10**, **adrs/**), **OpenAPI** per **05** / `api-conventions.md`. See [fullstack-developer.md](fullstack-developer.md).

---

## Role and scope

**In scope:** … (actionable, bounded list or paragraph).

**Out of scope:** … (reference other agents/roles: architect, QA, DevOps, etc.).

---

## Source of truth: {{folder or document, e.g. `.architecture`}}

- **`.architecture`** (root `*.md` and **`architecture-wiki/`** mirror when present: **05-data-apis-and-events**, **06-security-and-privacy**, **09-ux-and-branding** for UI work, **07-observability** for telemetry/logging intent, **03-solution-overview-tsd** / **04-c4-and-diagrams** when integration or boundaries change, **10-coding-guidelines**, **adrs/**) per [software-architect](../architecture/software-architect.md).
- Open **`architecture-wiki/README.md`** when it exists (mirror map, wiki lead, initiative / paths touched, live wiki vs mirror policy).
- If **`.architecture/handoff-to-fullstack.md`** exists, follow its **Read order** before deep-diving elsewhere.
- **APIs and events:** implement against the canonical **OpenAPI** (or **AsyncAPI** / proto / GraphQL) path and breaking-change policy in **`architecture-wiki/05-data-apis-and-events/`** / `api-conventions.md`; follow **contract-first**, **Spectral** (or documented OpenAPI lint), and **problem+json** (or equivalent error model) **only** where **05** defines them; respect **API gateway / edge** policies documented in **05/06** when applicable (vendor named only in **`.architecture/`** / **`architecture-wiki/`**).
- **Optional external wiki:** only if **`architecture-wiki/README.md`** or team runbook requires it; default is repo-only mirror at **`architecture-wiki/`** (project root, sibling of **`.architecture/`**).
- **Legacy ADRs:** if **`.architecture/adrs/`** exists alongside **`architecture-wiki/adrs/`**, read both until the wiki index says otherwise.
- Which stack-specific documents the role depends on; how to read or prioritize (index README, `@` to specific files).

---

## {{Section: structure or expected convention}} (reference, optional)

- Examples or folder tree, document names.
- The architect/other role defines the real structure; this section is what **this** role may assume if it exists.

---

## {{Implementation / execution rules}} or equivalent

Numbered bullets or clear rules the agent must not skip.

---

## Tools and commands (allowed) (optional but recommended for development)

- Git, docker, package managers, linters, tests, etc.
- What is explicitly **allowed** and, if applicable, policies (branches, PR, no direct push to …).

---

## Workflow for {{new feature or task type}} (recommended)

1. Verify **`.architecture`** (and **Prerequisite** in [fullstack-developer.md](fullstack-developer.md) if Saturnodev Labs).
2. If **`.architecture/handoff-to-fullstack.md`** exists, read it first; open **`architecture-wiki/README.md`** when present; skim **05**, **06**, **10** (and **09** if UI, **03/04** if integration/boundaries, **07** if observability-heavy); honor **ADRs** in **`architecture-wiki/adrs/`** and **`.architecture/adrs/`** if both exist.
3. Plan → implement → run tests/linters → summarize; **never** `commit`/`push` without explicit user authorization when Saturnodev Labs applies.

---

## Quality and safety (optional)

- Security, errors, logging, breaking changes, minimal documentation.

---

## Deliverables (optional)

- Concrete deliverables (files, tests, PR comment, etc.).

---

## Limitations (strict)

- Hard limits, one bullet each (unambiguous).
- Explicit **do not touch** folders: `.architecture`, `.iac`, `.testing`, `.analyst`, etc. as per Saturnodev Labs v2.
```

---

## Checklist before finalizing a new role

- [ ] `name` in frontmatter matches the file name (kebab-case).
- [ ] `description` includes the "Use when …" trigger (or equivalent phrase).
- [ ] "Out of scope" names other roles/folders and avoids overlap.
- [ ] "Limitations (strict)" includes **no redefining** architecture, IaC, or QA specs unless this is not a pure dev role; if the role implements code, include **story** + `docs/specs/story-*.md` + **`.delivery-control/`** evidence + **`docs/manual-tecnico.md`** per [fullstack-developer.md](fullstack-developer.md) when Saturnodev Labs applies.
- [ ] No personal machine paths; use `Saturnodev Labs` / wiki / agreed repo paths.

---

## File naming convention

- **Root `development/`:** `{{generic-role}}.md` (e.g. `fullstack-developer.md`).
- **Technology subfolder:** `development/{{technology}}/{{kebab-role}}.md` (e.g. `development/laravel/laravel-developer.md`).
- Frontmatter `name` matches the file name **without** `.md`.
