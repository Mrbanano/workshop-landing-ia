# Hoja de bolsillo · Cursor para tu landing

Tenla a la mano para seguir cambiando tu landing tú solo después del taller.

## El ciclo de siempre

1. Abre tu proyecto en Cursor.
2. Pide el cambio en el chat del agente.
3. Revisa en local (`pnpm dev` → abre `localhost:4321` en Astro o `localhost:3000` en Next).
4. Pide: "Guarda y sube mis cambios a Origin."
5. Vercel publica solo en uno o dos minutos.

## La fórmula para pedir cambios

**Qué sección + qué ves + qué quieres.** Un cambio por mensaje.

> "En **preguntas frecuentes**, **la letra se ve muy chica en celular**; **hazla del mismo tamaño que el resto del texto**."

## 12 pedidos típicos

1. "Cambia el headline del hero por: [texto]."
2. "Actualicé contenido.md; actualiza la landing con los textos nuevos sin cambiar el diseño."
3. "Agrega una sección de precios después de Cómo funciona."
4. "Agrega este testimonio real: [nombre y texto]."
5. "Cambia la paleta: primario #____, acento #____."
6. "Cambia la tipografía de los títulos por [fuente de Google Fonts]."
7. "Conecta todos los botones a mi WhatsApp [número con lada] con mensaje prellenado."
8. "Agrega un botón flotante de WhatsApp."
9. "Pon la imagen ./public/[archivo] en el hero, optimizada y con alt."
10. "Revisa la página en tamaño celular y arregla lo que se vea mal."
11. "Convierte las preguntas frecuentes en acordeón."
12. "Cambia la imagen que sale al compartir en WhatsApp (OG) por ./public/og.png de 1200×630."

## Errores comunes y cómo salir

| Lo que pasa | Qué le dices a Cursor |
|---|---|
| Inventó texto, testimonios o cifras | "Usa solo el texto de contenido.md. Quita lo que inventaste." |
| El diseño se ve genérico | "Respeta brief-visual.md y las capturas de ./referencias/." |
| Algo se rompió tras un cambio | "Regresa el último cambio, como estaba antes." |
| No entiendes qué hizo | "Explícame en 3 viñetas y en lenguaje simple qué cambiaste." |
| Sale un error en rojo | "Me sale este error: [pégalo]. Explícame qué pasa y arréglalo." |
| La página no abre en local | "Corre el proyecto en local y dime el link para abrirlo." |
| Subiste cambios y no se ven | Revisa en Vercel que haya un deploy nuevo; si no: "Sube mis cambios a Origin." |
| El deploy en Vercel falla | Copia el error del log de Vercel: "Este es el error de Vercel: [pégalo]. Arréglalo." |
| En WhatsApp no sale la vista previa | "Revisa que og:image tenga URL absoluta con https:// y mida 1200×630." |
| Se acabaron los créditos | Cambia a otro modelo en Cursor o espera a que se renueve tu cuota. |

## Reglas de oro

- Primero se piensa, después se construye.
- Un cambio por mensaje.
- Siempre revisa en celular.
- Nunca dejes que invente testimonios ni cifras.
- Si un cambio no te gusta, pide que lo regrese.

## Tarea para casa

- **Dominio propio:** cómpralo (Namecheap, Cloudflare, GoDaddy o un registrador mexicano; ~10–15 USD al año). En Vercel: *Settings → Domains → Add* y configura el DNS que te indique. HTTPS es automático; puede tardar unas horas en propagarse.
- **Imágenes con IA:** genera tu imagen del hero y tu imagen OG (1200×630) con base en tu brief visual. No generes logos finales ni fotos de "clientes" falsos. Optimízalas (WebP) antes de subirlas.
- **Google Search Console:** da de alta tu sitio y envía tu sitemap.
