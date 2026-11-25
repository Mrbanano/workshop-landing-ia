# Mi prompt maestro

> Escríbelo **tú** en la **Etapa 10**, con la plantilla de 5 partes. Apóyate en `guias/guia-prompt-maestro.md`.
> La idea clave: no repitas tu contenido ni tu diseño; dile a Cursor **dónde están** (los archivos) y **cómo trabajar**.
> Cuando esté listo, cópialo completo (lo que está dentro del bloque) y pégalo en el chat del agente de Cursor.

```
Contexto:
Eres un desarrollador front-end senior. Vas a construir la landing de ventas de
[mi negocio en una línea]. No soy técnico: explícame todo en lenguaje simple.
Mi acción principal es [WhatsApp / agenda / formulario / pago] → [número con lada o link].
Este proyecto ya es una plantilla Astro + Tailwind: los textos van en
src/data/landing.ts y los colores y tipografías en src/styles/global.css.

Qué quiero:
[Una landing de una sola página con las secciones de contenido.md en el mismo orden,
lista para publicarse en Vercel.]

Con qué archivos:
- ./contenido.md → [texto exacto de cada sección, úsalo tal cual]
- ./brief-visual.md → [paleta, tipografías y estilo]
- ./referencias/ → [mis capturas de Pinterest]

Cómo lo quiero:
- [Astro + Tailwind CSS, sitio estático]
- [Colores y tipografías del brief como tokens de Tailwind]
- [Mobile-first; botón principal en el hero, a mitad y al final]
- [Si es WhatsApp: botón flotante con el mensaje "..."]
- [Un solo h1, alt en imágenes, buen contraste]
- [SEO y Open Graph completos con los datos de contenido.md, lang="es-MX", favicon]
- [Donde vaya una imagen, deja un placeholder SVG con su medida y dame la lista]
- Primero muéstrame un plan y espera mi OK. Luego construye por pasos y explícame.
- Al final dime cómo verla en local y qué archivo cambio para editar textos.

Qué evitar:
- [No inventes testimonios, cifras, logos ni texto]
- [No cambies mis textos sin avisarme]
- [Nada de fotos de stock: solo placeholders SVG]
- [Nada de librerías extra ni diseño genérico]
```

## Checklist antes de pegarlo en Cursor

- [ ] Elegí Astro o Next y lo escribí en el stack.
- [ ] `contenido.md` y `brief-visual.md` están llenos (sin espacios en blanco).
- [ ] Mis capturas están en `referencias/`.
- [ ] Puse mi número de WhatsApp con lada o mi link de agenda/formulario.
- [ ] Pedí plan primero.
- [ ] Pedí placeholders SVG para las imágenes (las reales se hacen después con `guias/imagenes-prompt.md`).
- [ ] Escribí qué evitar.
- [ ] Lo leí completo una vez.
