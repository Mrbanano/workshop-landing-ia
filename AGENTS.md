# AGENTS.md · Contexto para el agente de Cursor (o cualquier CLI de IA)

Este repo es la plantilla del workshop **"Tu primera landing page de ventas con IA"**. La persona con la que trabajas es un **emprendedor no técnico**. Tu trabajo es ayudarle a construir y publicar la landing de su negocio, explicándole todo en **español de México, simple y sin tecnicismos**.

## Si es la primera vez que abres este proyecto

1. Si la persona te pide "lee y ejecuta doctor.md" (o todavía no lo ha hecho), **sigue `doctor.md` antes que nada**.
2. Después, instala dependencias con `pnpm install` y corre `pnpm dev`. Dile que abra `http://localhost:4321`.

## El flujo del workshop (en este orden)

Regla de oro: **primero se piensa, después se construye.**

1. Doctor (`doctor.md`) → entorno listo.
2. Boceto en papel de las secciones.
3. Referencias en Pinterest → `brief-visual.md` + capturas en `referencias/`.
4. Contenido con IA → `contenido.md`.
5. Prompt maestro → `prompt-maestro.md` (lo escribe la persona con la plantilla de 5 partes).
6. Construir con Cursor (tú) → la landing con placeholders SVG.
7. Imágenes con Grok → reemplazar placeholders (`guias/imagenes-prompt.md`).
8. Publicar en Vercel (desde Origin o GitHub).
9. SEO, OG y conversión (`checklist.md`).

El tutorial completo está en `guias/tutorial-landing-con-ia.md`.

## Dónde vive cada cosa

| Qué | Dónde |
|---|---|
| Textos de la página | `src/data/landing.ts` (un solo lugar; se llena desde `contenido.md`) |
| Colores y tipografías | `src/styles/global.css` → bloque `@theme` y link de Google Fonts (se llenan desde `brief-visual.md`) |
| Orden de las secciones | `src/pages/index.astro` |
| Cada sección | `src/components/*.astro` |
| SEO, Open Graph, favicon | `src/layouts/Layout.astro` (datos en `landing.ts` → `seo`) |
| URL del sitio (canonical, sitemap, og:image absoluta) | `astro.config.mjs` (en Vercel se toma sola; dominio propio → variable `SITE_URL`) |
| Imágenes | `public/img/` (placeholders SVG) · imagen para compartir: `public/og.png` · favicon: `public/favicon.svg` |
| Contenido y diseño de la persona | `contenido.md`, `brief-visual.md`, `referencias/` |
| Prompt maestro | `prompt-maestro.md` |
| Guías | `guias/` · prompts de respaldo: `prompts/` · pedidos típicos: `hoja-de-bolsillo.md` |

Stack: **Astro + Tailwind CSS v4 + pnpm**, sitio estático. Node.js LTS (22.23 o más nuevo).
Comandos: `pnpm install` · `pnpm dev` (local en `localhost:4321`) · `pnpm build` · `pnpm preview`.

## Reglas (no negociables)

- **No inventes** testimonios, clientes, cifras, logos, premios, direcciones ni datos. Si falta algo en `contenido.md`, pregunta o deja `[PENDIENTE: ...]`.
- **Usa el texto de `contenido.md` tal cual.** No cambies el copy sin avisar.
- **Nada de fotos de stock ni imágenes de internet.** Donde vaya una imagen, usa un **placeholder SVG** en `public/img/` con la medida correcta, un color claro de la paleta y una etiqueta con nombre y medida (ej. `Hero 1600x900`). Al final, da la lista de imágenes: archivo, sección, medida y qué debería mostrar.
- La **imagen OG** es `public/og.png` (PNG o JPG de **1200×630**; WhatsApp no muestra SVG ni WebP). `og:image` debe ser URL absoluta con `https://`.
- **Respeta `brief-visual.md` y `referencias/`.** Nada de diseño genérico (ni el típico morado con degradados).
- **Mobile-first.** Revisa siempre cómo se ve en celular (375 px).
- Un solo `h1`, `alt` en todas las imágenes, buen contraste, `lang="es-MX"`.
- El botón de la acción principal aparece en el hero, a mitad de página y al final. Si es WhatsApp, con mensaje prellenado y botón flotante.
- **No agregues dependencias** que no sean necesarias. Usa `pnpm`, no npm ni yarn.
- **Primero un plan, luego código:** para cambios grandes, muestra un plan corto y espera el OK.
- **Un cambio a la vez**, y al terminar explica en 3 viñetas, en lenguaje simple, qué hiciste y qué archivo tocaste.
- **Antes de instalar algo en la computadora de la persona, pregunta.**
- Nunca subas secretos (`.env`, tokens, contraseñas) al repo.
- Si algo se rompe, ofrece regresar el último cambio.

## Publicar cambios

Cuando la persona diga "guarda y sube mis cambios": haz commit con un mensaje claro en español y `git push`. Vercel publica solo en uno o dos minutos. Si el deploy falla, pide el error del log de Vercel y explícalo simple.
