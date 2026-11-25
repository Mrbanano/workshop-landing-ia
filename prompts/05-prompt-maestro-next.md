# Prompt de respaldo 05 · Prompt maestro para Cursor (versión Next.js)

> **Para el personal de apoyo.** Respaldo para quien no logró armar su propio prompt maestro. Úsalo si la persona eligió **Next** (porque va a crecer a login, panel, formularios con lógica o contenido dinámico).

**Dónde se usa:** en el chat del agente de Cursor, con tu proyecto abierto.
**Antes de pegarlo, confirma que tu proyecto tiene:** `contenido.md` lleno, `brief-visual.md` lleno y tus capturas en `referencias/`.

Llena los espacios entre [corchetes] antes de pegarlo.

---

## Copia y pega esto

```
Contexto:
Eres un desarrollador front-end senior. Vas a construir la landing page de ventas
de mi negocio. Yo no soy técnico, así que explícame todo en lenguaje simple.
Mi negocio: [qué vendes y a quién, en una línea].
Mi acción principal: [WhatsApp / agenda / formulario / pago] → [link o número de WhatsApp con lada, ej. 5215512345678].
Elegí Next porque más adelante quiero: [login / panel / formularios con lógica / blog / otro].

Qué quiero:
Una landing de una sola página, con las secciones de contenido.md en ese mismo orden,
que se vea como mi brief visual, que esté lista para publicarse en Vercel y que
deje la base ordenada para crecer después.

Con qué archivos (léelos antes de empezar):
- ./contenido.md → el texto exacto de cada sección. Úsalo tal cual.
- ./brief-visual.md → paleta, tipografías y estilo.
- ./referencias/ → capturas de referencia visual.

Cómo lo quiero:
Stack:
- Next.js con App Router + TypeScript + Tailwind CSS.
- La landing se genera estática (sin servidor) mientras no necesite lógica.
- Cada sección es un componente en su propio archivo.
- Colores y tipografías de brief-visual.md como tokens en la configuración de Tailwind.
- Tipografías con next/font (Google Fonts) e imágenes con next/image.
Requisitos:
- Mobile-first: primero que se vea perfecto en celular, luego en computadora.
- El botón principal aparece en el hero, a mitad de página y al final.
- Si mi acción es WhatsApp: botón flotante de WhatsApp con mensaje prellenado.
- HTML semántico: un solo h1, alt en todas las imágenes, buen contraste.
- SEO con la Metadata API de Next: title y description de contenido.md,
  lang="es-MX", canonical, sitemap.ts y robots.ts.
- Open Graph y Twitter Card completos (og:title, og:description, og:image 1200x630, og:url).
- Favicon.
- Imágenes: NO uses fotos de stock, imágenes de internet ni links que se rompan.
  En cada lugar donde vaya una imagen (hero, beneficios, pasos, producto, OG) crea un
  placeholder SVG en ./public/img/ (muéstralos con <img> o con next/image en modo unoptimized) con la medida y proporción correctas, un color claro
  de mi paleta y una etiqueta centrada con su nombre y medida (ej. "Hero 1600x900").
  Nómbralos claro (hero.svg, beneficio-1.svg, og.svg) para que después solo cambie el archivo.
  Deja og:image apuntando a /og.png (la voy a generar después; usa og.svg solo de guía).
- Al final dame la lista de imágenes que necesito: archivo, sección, medida y qué debería mostrar.
- Todo el texto editable centralizado en un solo archivo fácil de encontrar.
Forma de trabajo:
1. Primero muéstrame un plan corto de archivos y componentes. Espera mi OK antes de programar.
2. Implementa por pasos y dime en lenguaje simple qué hiciste en cada uno.
3. Al final dime cómo verla en local (pnpm dev) y qué archivo tocar para
   cambiar textos, colores e imágenes.

Qué evitar:
- No inventes testimonios, cifras, logos ni texto. Si algo falta en contenido.md, pregúntame.
- No cambies el copy sin avisarme.
- No agregues base de datos, login ni librerías extra todavía: solo la landing.
- No uses fotos de stock ni imágenes de internet: solo placeholders SVG.
- No uses un diseño genérico: respeta mi paleta, mis tipografías y mis referencias.
```

---

**Listo cuando:** Cursor te mostró el plan, le diste OK, terminó de construir y ves tu landing en `localhost:3000` con placeholders SVG donde van las imágenes. Para las imágenes reales sigue `imagenes-prompt.md`.
