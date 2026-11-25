# Prompt de respaldo 07 · Revisión de SEO, OG tags y conversión

> **Para el personal de apoyo.** Respaldo para la etapa *SEO, OG tags y conversión*.

**Dónde se usa:** en el chat del agente de Cursor, con tu proyecto abierto.
**Qué sale:** un reporte de qué falta y los arreglos hechos.

---

## Copia y pega esto

```
Contexto:
Mi landing ya está construida y publicada en Vercel en: [tu URL .vercel.app].
El contenido está en contenido.md y el diseño en brief-visual.md.

Qué quiero:
Revisa mi landing contra este checklist. Primero dame una tabla con cada punto
marcado como ✅ cumple / ❌ falta y una línea de por qué. Después espera mi OK
y arregla los que fallan.

Checklist:
Contenido
- El headline dice qué es, para quién y qué gana el cliente.
- Una sola acción principal, repetida en el hero, a mitad y al final.
- Las preguntas frecuentes responden objeciones.
- No hay testimonios, cifras ni logos inventados.
Diseño
- Usa la paleta y tipografías de brief-visual.md.
- Se ve bien en celular (375 px).
- El texto se lee bien sobre el fondo (contraste).
SEO
- Title de máximo 60 caracteres y meta description de máximo 155, con mi keyword.
- Un solo h1 y títulos h2/h3 en orden.
- lang="es-MX", canonical, sitemap.xml y robots.txt.
- alt en todas las imágenes.
- Datos estructurados JSON-LD tipo LocalBusiness u Organization con mis datos reales.
Redes (Open Graph)
- og:title, og:description, og:url, twitter:card.
- og:image de 1200x630 con URL absoluta (que empiece con https://).
- Favicon.
Conversión
- Los botones llevan al lugar correcto: [WhatsApp con lada / agenda / formulario].
- Si es WhatsApp, el mensaje viene prellenado.
- Botón principal visible sin hacer scroll en celular.
Velocidad
- Imágenes optimizadas (WebP o AVIF) y con medidas definidas.
- Sin scripts pesados.

Cómo lo quiero:
- Explicación en lenguaje simple, sin tecnicismos.
- Al terminar, dime qué tengo que revisar yo a mano (WhatsApp y PageSpeed).

Qué evitar:
- No cambies mis textos ni mi diseño salvo para arreglar un punto del checklist.
- No inventes datos para el JSON-LD: si falta algo (dirección, teléfono), pregúntame.
```

---

## Revisión a mano (después de volver a publicar)

1. Pega tu URL en un chat de WhatsApp contigo mismo: debe salir imagen, título y descripción.
2. Abre pagespeed.web.dev, pega tu URL y revisa el resultado de **celular**. Meta: más de 85.
3. Abre tu landing en tu celular y toca cada botón.
