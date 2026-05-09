# Categoría: DevOps e infraestructura (IaC)

**Versión (documentación):** 2 (Saturnodev Labs — plantillas de agentes, v2). [README raíz](../README.md).

Roles orientados a **CI/CD** (por defecto **GitHub Actions**), **Terraform** multinube y operaciones bajo **`.iac/`**, sin modificar lógica de negocio de la aplicación.

## Estructura

- Cada **rol = un** archivo `kebab-case.md` con frontmatter y cuerpo.
- Si en el futuro añadís más perfiles (p. ej. *GitHub Actions only*, *Kubernetes*), colocadlos en esta misma categoría; si el volumen crece, se puede introducir subcarpetas `devops-iac/<subdominio>/` con el mismo criterio que en [development/](../development/README.md).

**Ejemplo en esta carpeta:** [devops-engineer.md](devops-engineer.md).

## Cómo añadir un rol nuevo

1. **Plantilla base (estructura y limitaciones):** usad [../development/role-template.md](../development/role-template.md) y adaptad las secciones al dominio DevOps (ámbito `read-only` vs *write* en la nube, carpeta **`.iac`**, CLI, etc.).
2. Cread en esta carpeta `devops-iac/mi-rol.md` o, si aplica subcarpeta, `devops-iac/…/mi-rol.md`.
3. Para consistencia, revisad al menos **[devops-engineer.md](devops-engineer.md)** para alinear criterio de *no* tocar `src/` y uso de **`.iac/`** + **GitHub Actions**.

## Convención

- Nombre de carpeta en repo de producto: **`.iac`**, no *`.iaac`*. Los roles existentes asumen **Terraform** bajo **`.iac/`** salvo que lo documentes distinto en el propio `*.md`.
- Requisitos de infra en prosa bajo **`.architecture`** ([software-architect](../architecture/software-architect.md)); espejo **`architecture-wiki/`**; alineación con [fullstack-developer](../development/fullstack-developer.md) y **`saturnodev-labs-v2-doc-sync-on-commit.mdc`** cuando el diff afecte contratos o infra documentada.
