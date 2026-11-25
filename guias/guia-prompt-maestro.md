# Guía para escribir tu prompt maestro

El prompt maestro es la instrucción grande que le das a Cursor para que construya tu landing. Junta todo lo que hiciste antes: tu boceto, tu `brief-visual.md` y tu `contenido.md`. Lo escribes **tú**, con la misma plantilla de 5 partes, y lo guardas en `prompt-maestro.md` para reusarlo.

**La idea clave:** el prompt maestro no repite tu contenido ni tu diseño; le dice a Cursor **dónde están** (los archivos) y **cómo trabajar**.

---

## Las 5 partes aplicadas al prompt maestro

### 1. Contexto
- Qué rol le das: "Eres un desarrollador front-end senior".
- Que no eres técnico y quieres explicaciones simples.
- Tu negocio en una línea.
- Tu acción principal y a dónde lleva (número de WhatsApp con lada, link de agenda o formulario).

### 2. Qué quiero
- Una landing de una sola página, con las secciones de `contenido.md` en ese orden.
- Lista para publicarse en Vercel.

### 3. Con qué archivos
- `./contenido.md` → el texto exacto.
- `./brief-visual.md` → colores, tipografías y estilo.
- `./referencias/` → tus capturas de Pinterest.

### 4. Cómo lo quiero
Aquí van tres bloques:

**Stack** (según tu decisión):
- **Astro:** "Astro + Tailwind CSS, sitio estático, sin frameworks de JavaScript pesados."
- **Next:** "Next.js con App Router + TypeScript + Tailwind, la landing estática por ahora, una sección por componente."

**Requisitos** (copia los que apliquen):
- Mobile-first.
- Botón principal en el hero, a mitad y al final.
- Botón flotante de WhatsApp con mensaje prellenado (si aplica).
- Un solo h1, alt en imágenes, buen contraste.
- Title y description de `contenido.md`, `lang="es-MX"`, sitemap y robots.
- Open Graph completo con imagen de 1200×630 y favicon.
- Colores y tipografías como tokens de Tailwind.
- Todo el texto editable en un solo lugar.
- Placeholders SVG en cada lugar donde va una imagen (medida correcta, color claro de tu paleta, etiqueta con nombre y medida) y la lista de imágenes que vas a necesitar.

**Forma de trabajo:**
1. Primero muéstrame un plan corto y espera mi OK.
2. Construye por pasos y explícame qué hiciste.
3. Al final dime cómo verla en local y qué archivo tocar para cambiar textos, colores e imágenes.

### 5. Qué evitar
- No inventes testimonios, cifras, logos ni texto.
- No cambies el copy sin avisarme.
- No agregues dependencias innecesarias.
- No hagas un diseño genérico: respeta mi brief y mis referencias.
- No uses fotos de stock ni imágenes de internet: solo placeholders SVG.

---

## Ejemplo armado (pastelería, Astro)

```
Contexto:
Eres un desarrollador front-end senior. Vas a construir la landing de ventas de
mi pastelería "Dulce Fiesta" en Guadalajara, que hace pasteles personalizados para
cumpleaños infantiles. No soy técnica: explícame todo en lenguaje simple.
Mi acción principal es que me escriban por WhatsApp al 523312345678.

Qué quiero:
Una landing de una sola página con las secciones de contenido.md en el mismo orden,
lista para publicarse en Vercel.

Con qué archivos:
- ./contenido.md → texto exacto de cada sección, úsalo tal cual.
- ./brief-visual.md → paleta, tipografías y estilo.
- ./referencias/ → mis capturas de Pinterest.

Cómo lo quiero:
- Astro + Tailwind CSS, sitio estático.
- Colores y tipografías del brief como tokens de Tailwind.
- Mobile-first; botón de WhatsApp en hero, a mitad y al final, más un botón flotante
  con el mensaje "Hola, quiero cotizar un pastel".
- Un solo h1, alt en imágenes, buen contraste.
- SEO y Open Graph completos con los datos de contenido.md, lang="es-MX", favicon.
- Primero muéstrame un plan y espera mi OK. Luego construye por pasos y explícame.
- Al final dime cómo verla en local y qué archivo cambio para editar textos.

Qué evitar:
- No inventes testimonios ni número de clientes.
- Nada de fotos de stock: deja placeholders SVG con su medida y dame la lista de imágenes.
- No cambies mis textos sin avisarme.
- Nada de librerías extra ni diseño genérico.
```

---

## Errores comunes al escribir el prompt maestro

| Error | Qué pasa | Cómo se arregla |
|---|---|---|
| Pegar todo el contenido dentro del prompt | Se vuelve enorme y Cursor mezcla cosas | Solo nombra `contenido.md` |
| No pedir un plan primero | Cursor construye algo distinto a lo que querías | "Muéstrame un plan y espera mi OK" |
| Olvidar el número o link de la acción | Botones que no llevan a ningún lado | Escríbelo completo en Contexto |
| No decir "no inventes" | Aparecen testimonios y cifras falsas | Agrégalo en Qué evitar |
| Pedir "algo bonito" | Diseño genérico | Nombra `brief-visual.md` y `referencias/` |
| No decir qué hacer con las imágenes | Fotos de stock o imágenes rotas | Pide placeholders SVG con su medida |

## Checklist antes de pegarlo en Cursor

- [ ] Elegí Astro o Next y lo escribí en el stack.
- [ ] `contenido.md` y `brief-visual.md` están llenos (sin espacios en blanco).
- [ ] Mis capturas están en `referencias/`.
- [ ] Puse mi número de WhatsApp con lada o mi link de agenda/formulario.
- [ ] Pedí plan primero.
- [ ] Pedí placeholders SVG para las imágenes (las reales se hacen después con `imagenes-prompt.md`).
- [ ] Escribí qué evitar.
- [ ] Lo leí completo una vez.

Si te atoras, el personal de apoyo tiene una versión de respaldo para Astro y otra para Next.
