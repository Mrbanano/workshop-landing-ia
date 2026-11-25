# Workshop · Tu primera landing page de ventas con IA

Plantilla del workshop para **emprendedores no técnicos**: sales con la landing de tu negocio **publicada en internet**, construida con ayuda de la IA (Cursor + Grok), en **Astro + Tailwind**.

Aquí ya está todo listo para empezar: el proyecto configurado, los archivos que vas a llenar, las guías del taller y un **doctor** que revisa tu computadora.

---

## Paso 0 · Corre el doctor (lo primero de todo)

1. Abre este proyecto en **Cursor**.
2. Abre el chat del agente y escribe:

   > **lee y ejecuta doctor.md**

3. El agente revisa tu computadora (Mac o Windows) y te muestra algo así:

   ```
   ✅ Sistema operativo: macOS 15.1 (arm64)
   ✅ Node 24.11.0
   ❌ pnpm no encontrado
   ✅ Git 2.47.0
   ❌ GitHub CLI (gh) no encontrado
   ```

4. Para cada ❌ te dice cómo instalarlo y te pregunta si quieres que lo haga por ti. Al final vuelve a revisar.

¿Prefieres correrlo tú? En la terminal de Cursor:
- **Mac / Linux:** `bash scripts/doctor.sh`
- **Windows:** `powershell -ExecutionPolicy Bypass -File scripts/doctor.ps1`

---

## Paso 1 · Crea tu propia copia

1. Arriba en esta página de GitHub, da clic en **Use this template → Create a new repository**.
2. Ponle el nombre de tu negocio (ej. `landing-dulce-fiesta`) y elige **Public** o **Private**.
3. Ábrelo en Cursor (o pídeselo a Grok o al agente de Cursor: *"clona mi repo [URL] y ábrelo"*).

Con GitHub CLI también se puede en un solo comando:

```bash
gh repo create landing-mi-negocio --template Mrbanano/workshop-landing-ia --public --clone
```

---

## Paso 2 · Verla en tu computadora

```bash
pnpm install
pnpm dev
```

Abre **http://localhost:4321**. Verás la plantilla con textos entre [corchetes] y rectángulos azules con medidas: son los **placeholders SVG** que después cambias por tus imágenes reales.

---

## Cómo está organizado

```
├── doctor.md              ← Paso 0: revisa y prepara tu computadora
├── AGENTS.md              ← contexto y reglas para el agente de Cursor (CLAUDE.md apunta aquí)
├── contenido.md           ← TÚ lo llenas: el texto de tu landing (Etapa 9)
├── brief-visual.md        ← TÚ lo llenas: paleta, tipografías, tono (Etapa 6)
├── prompt-maestro.md      ← TÚ lo escribes: la instrucción grande para Cursor (Etapa 10)
├── checklist.md           ← palomea tu avance etapa por etapa
├── hoja-de-bolsillo.md    ← pedidos típicos a Cursor y cómo salir de errores
├── referencias/           ← tus capturas de Pinterest
├── guias/                 ← tutorial del taller y guías
├── prompts/               ← prompts de respaldo (para el personal de apoyo)
├── scripts/               ← doctor.sh (Mac/Linux) y doctor.ps1 (Windows)
├── public/
│   ├── img/               ← placeholders SVG (hero, beneficios, pasos, producto…)
│   ├── og.png             ← imagen para compartir en WhatsApp (1200×630)
│   └── favicon.svg
└── src/
    ├── data/landing.ts    ← TODOS los textos de la página, en un solo lugar
    ├── styles/global.css  ← colores y tipografías (desde tu brief visual)
    ├── pages/index.astro  ← orden de las secciones
    ├── components/        ← una sección por archivo
    └── layouts/Layout.astro ← SEO, Open Graph y favicon
```

Secciones incluidas: hero, problema, beneficios, cómo funciona, prueba social, precio, preguntas frecuentes, llamado final, footer y botón flotante de WhatsApp.

---

## Publicar en Vercel

1. Pide en Cursor: *"Guarda y sube mis cambios."*
2. Entra a [vercel.com](https://vercel.com) → **Add New → Project** → importa tu repo (desde GitHub, o desde Origin si trabajas en Origin).
3. Vercel detecta **Astro** solo. Dale **Deploy**.
4. En uno o dos minutos tienes tu URL `*.vercel.app`. Ábrela en tu celular y compártela.

Cada vez que subas cambios, Vercel vuelve a publicar solo.
¿Conectaste un dominio propio? Agrega la variable `SITE_URL` (ej. `https://www.minegocio.mx`) en Vercel → Settings → Environment Variables, para que la vista previa en WhatsApp use tu dominio.

Más detalle: [`prompts/08-ayuda-deploy-vercel-origin.md`](prompts/08-ayuda-deploy-vercel-origin.md).

---

## Guías del taller

- [Tutorial paso a paso (15 etapas)](guias/tutorial-landing-con-ia.md)
- [Guía para construir tus propios prompts](guias/guia-para-construir-prompts.md)
- [Guía para escribir tu prompt maestro](guias/guia-prompt-maestro.md)
- [Imágenes con Grok: de placeholder SVG a imagen real](guias/imagenes-prompt.md)
- [Hoja de bolsillo de Cursor](hoja-de-bolsillo.md)
- [Checklist del workshop](checklist.md)

**Prompts de respaldo** (los usa el personal de apoyo solo si te atoras): [`prompts/`](prompts/)

---

## Reglas de oro

- Primero se piensa, después se construye.
- Un cambio por mensaje.
- Siempre revisa en celular.
- Nunca dejes que la IA invente testimonios ni cifras.
- Nada de fotos de stock: placeholders SVG y después tus imágenes con Grok.

---

Workshop del **Clúster de Startups e Innovación (CSI) · Puebla** · [clusterdestartups.org](https://clusterdestartups.org) · Alvaro Castillo
