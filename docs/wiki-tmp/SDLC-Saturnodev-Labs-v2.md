# SDLC – Modelo Saturnodev Labs v2 (fases 1 a 7)

En **Saturnodev Labs v2** el ciclo de vida se organiza en **seis fases de *delivery***; el modelo de agentes añade la **fase 7 (monitoreo)** para ubicar al *Technical Leader* **sin** confundirlo con un octavo paso obligatorio **después** de la 6. Las fases 1–6 pueden repetirse o solaparse en ciclos ágiles.

[Volver al inicio](/Home)

---

## Fases 1 a 6 (entrega)

| Fase | Nombre | Objetivo |
|------|--------|----------|
| **1** | Iniciativa comercial (análisis de requisitos) | Viabilidad de negocio y alcance: requisitos que alimenten la cadena de valor. |
| **2** | Planeación | Requisitos → plan de trabajo, prioridades, *timeline*, capacidad, criterios de aceptación iniciales. |
| **3** | Análisis y diseño | Backlog detallado y **diseño de arquitectura** + criterio UI/UX bajo **`.architecture/`**; arquitecto **solo** con backlog aprobado del analista (**`.analyst/approved/`**). |
| **4** | Desarrollo | *Build* *spec driven* y *vibe coding* contra **`.architecture/`** y `docs/specs/story-*.md` (incl. **## Unit tests (mandatory)**). Git `commit`/`push` **solo** con aprobación explícita; **100%** tests unitarios antes de *push*; rama `story-*` desde `dev`; evidencia en **`.delivery-control/`**. |
| **5** | Pruebas | Validación, regresión, automatización, informes en **Markdown**; **`.testing/`**; **`.security/`** ([pentester](../../testing/pentester.md)); bugs al TL en **`.delivery-control/`**; **`docs/manual-de-usuario.md`** al cerrar iteración. |
| **6** | Release | Despliegue, *pipelines*, *gates*, **`.iac`**, versionado, cierre de *release*. |

---

## Fase 7 (monitoreo – etiqueta documental)

- **Qué es:** *slot* en el modelo **Saturnodev Labs v2** para **separar** el hilo 1–6 de la **gobernanza** y el **seguimiento continuo** (**.delivery-control/**, Git, CI, riesgo, calidad de entrega).
- **Roles asociados:** *Technical Leader* (dueño **`.delivery-control/`**) y *Project Manager* ([project-manager.md](../../management/project-manager.md), solo **`.pmo/*.md`**) para planes de entrega, *semáforo* e informes — sin sustituir al PO humano.
- **Importante:** en la **práctica** el liderazgo técnico y la gestión **cubren en paralelo** fases 1–6 (y a menudo post-*release*). La **7** nombra el *monitoreo*; **no** implica “solo al terminar la 6”.

---

## Flujo lógico (vista en una línea)

` (1) → (2) → (3) → (4) → (5) → (6) ` (flujo principal)  

El **Technical Leader** actúa como *oversight* transversal sobre **1–6** y bajo el epígrafe **fase 7** en documentación.

Texto estructurado (sin Mermaid) como en el repositorio:

```text
  (1) Iniciativa   →   (2) Planeación   →   (3) Análisis y diseño
                                                ↓
  (4) Desarrollo   →   (5) Pruebas   →   (6) Release

  (7) Monitoreo: Technical Leader en paralelo (lectura/riesgo), no *gate* obligatoria
```

---

## Enlaces útiles

- [Roles por fase](/Roles-y-fases)
- Repositorio: `README.md` (tabla ampliada y notas de *spec* en fase 4)
