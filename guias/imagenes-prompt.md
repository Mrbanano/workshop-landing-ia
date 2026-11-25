# Imágenes con Grok · De placeholder SVG a imagen real

Tu landing ya está construida y en cada lugar donde va una imagen Cursor dejó un **placeholder SVG**: un rectángulo de color claro, con la medida correcta y una etiqueta como `Hero 1600x900`. Así la página no se rompe ni usa fotos de stock que no son tuyas. En esta guía vas a generar tus imágenes reales con Grok y cambiarlas por los placeholders.

**Regla de oro:** las imágenes siguen tu `brief-visual.md`. Misma paleta, mismo tono, mismo estilo. Si no, la landing se ve armada con piezas de lugares distintos.

---

## Paso 1 · Haz tu lista de imágenes

Pídele a Cursor:

```
Dame la lista de todos los placeholders SVG de mi landing en una tabla con:
nombre del archivo, sección donde aparece, medida en pixeles y qué debería mostrar.
```

Compárala con esta lista típica:

| Imagen | Archivo sugerido | Medida | Proporción | Para qué |
|---|---|---|---|---|
| Hero | `hero.webp` | 1600 × 900 | 16:9 | Imagen principal arriba de todo |
| Hero en celular (opcional) | `hero-movil.webp` | 900 × 1200 | 3:4 | Versión vertical del hero |
| Beneficios (×3) | `beneficio-1.webp`… | 800 × 800 | 1:1 | Ícono o ilustración por beneficio |
| Cómo funciona (×3) | `paso-1.webp`… | 800 × 600 | 4:3 | Ilustración de cada paso |
| Producto / servicio | `producto.webp` | 1200 × 1200 | 1:1 | Foto o mockup de lo que vendes |
| Imagen OG | `og.png` | **1200 × 630** | 1.91:1 | La que sale al compartir en WhatsApp y redes |
| Favicon | `favicon.png` | 512 × 512 | 1:1 | El iconito de la pestaña |

No necesitas todas. Genera solo las que tu landing usa.

---

## Paso 2 · Arma tu prompt de imagen con la plantilla de 5 partes

Abre tu `brief-visual.md` a un lado; de ahí sacas la paleta, el tono y el estilo.

### Plantilla (cópiala y llénala)

```
Contexto:
Estoy creando la landing page de [tu negocio: qué vendes y a quién].
Mi marca se siente [3 adjetivos del brief, ej. cercana, fresca, confiable].

Qué quiero:
Una imagen para [sección: hero / beneficio / OG / favicon] que muestre [qué debe verse].

Con qué archivos:
Usa la dirección visual de mi brief:
- Paleta: primario #____, secundario #____, acento #____, fondo #____
- Estilo de imagen: [foto real / ilustración plana / 3D / mockup]
- [Opcional: adjunto mis capturas de referencia de Pinterest]

Cómo lo quiero:
- Medida: [ancho x alto] px, proporción [16:9 / 1:1 / 1.91:1]
- Composición: [ej. sujeto a la derecha, espacio libre a la izquierda para el texto]
- Luz y ambiente: [ej. luz natural, cálida, fondo limpio]

Qué evitar:
- Sin texto, letras ni logos dentro de la imagen (el texto lo pone la página)
- Sin marcas de agua
- [Lo que NO quieres de tu brief, ej. colores neón, look corporativo]
```

**Tip:** pide 2 o 3 variantes y quédate con la que mejor combine con tu paleta. Si no te gusta, di por qué: "más luz", "menos saturado", "el sujeto más chico", "más espacio a la izquierda".

---

## Paso 3 · Ejemplos por tipo de imagen

Ejemplo de negocio: **pastelería de pasteles personalizados para cumpleaños infantiles** (paleta rosa pastel #F7C6D0, crema #FFF6E9, acento chocolate #6B3E2E; tono alegre y cercano; estilo foto real).

### Hero (1600 × 900, 16:9)

```
Contexto: Landing de una pastelería en Guadalajara que hace pasteles personalizados
para cumpleaños infantiles. Marca alegre, cercana y artesanal.
Qué quiero: Imagen para el hero: un pastel de cumpleaños de dos pisos decorado con
colores pastel sobre una mesa de fiesta.
Con qué archivos: Paleta rosa pastel #F7C6D0, crema #FFF6E9, acento chocolate #6B3E2E.
Estilo foto real.
Cómo lo quiero: 1600x900 px (16:9). Pastel a la derecha, mitad izquierda con fondo
limpio y claro para poner el texto encima. Luz natural cálida.
Qué evitar: Sin texto ni letras, sin velas encendidas ni personas, sin marcas de agua.
```

### Beneficio (800 × 800, 1:1)

```
Contexto: Misma pastelería, sección de beneficios. Beneficio: "Lo diseñamos contigo".
Qué quiero: Ilustración simple de una mano dibujando el boceto de un pastel.
Con qué archivos: Misma paleta del brief.
Cómo lo quiero: 800x800 px (1:1), ilustración plana, fondo crema liso, mucho espacio.
Qué evitar: Sin texto, sin sombras duras, que no se vea infantil de más.
```

Para que los 3 beneficios combinen, usa el mismo prompt y cambia solo el "Qué quiero".

### Imagen OG (1200 × 630, 1.91:1)

```
Contexto: Imagen que aparece cuando alguien comparte mi landing en WhatsApp o redes.
Pastelería de pasteles personalizados para cumpleaños infantiles.
Qué quiero: Composición con un pastel colorido al centro-derecha y fondo rosa pastel.
Con qué archivos: Paleta del brief.
Cómo lo quiero: 1200x630 px exactos. Elemento principal centrado y grande; que se
entienda aunque se vea chiquita en el celular. Deja un margen de seguridad en los bordes.
Qué evitar: Sin texto pequeño, sin detalles finos que se pierdan, sin marcas de agua.
```

Si quieres que la imagen OG lleve el nombre de tu negocio, mejor agrégalo después en Canva: la IA suele escribir mal las letras.

### Favicon (512 × 512, 1:1)

```
Contexto: Ícono de la pestaña del navegador de mi pastelería.
Qué quiero: Un ícono muy simple de un pastel de un piso con una cereza.
Con qué archivos: Color chocolate #6B3E2E sobre fondo rosa pastel #F7C6D0.
Cómo lo quiero: 512x512 px, forma simple y gruesa que se entienda en 16 px.
Qué evitar: Sin texto, sin detalles, sin degradados.
```

Si ya tienes logo, úsalo como favicon en lugar de generar uno.

### Producto o servicio (1200 × 1200, 1:1)

Si vendes un producto real, **mejor usa una foto tuya**. La IA sirve para fondos, ambientes e ilustraciones, no para "inventar" tu producto o a tus clientes.

---

## Paso 4 · Cambia el SVG por tu imagen en Cursor

1. Descarga tu imagen de Grok.
2. Si pesa más de 300 KB, conviértela a **WebP** (squoosh.app es gratis). La imagen OG déjala en **PNG o JPG**: WhatsApp no muestra WebP ni SVG en la vista previa.
3. Guárdala en la carpeta de imágenes de tu proyecto (la misma donde está el placeholder, normalmente `public/img/`) con un nombre claro, por ejemplo `hero.webp`.
4. Pídele a Cursor:

```
Contexto: Ya generé la imagen real para el hero.
Qué quiero: Reemplaza el placeholder hero.svg por public/img/hero.webp.
Cómo lo quiero: Mismas medidas y posición, alt "[describe la imagen en una frase]",
que se vea bien en celular y cargue optimizada.
Qué evitar: No cambies textos ni el resto del diseño. Borra el SVG viejo si ya no se usa.
```

5. Revisa en local, en computadora y celular.
6. Para la imagen OG: "Usa public/og.png (1200x630) como og:image y twitter:image, con URL absoluta."
7. Sube tus cambios a Origin. Vercel publica solo.

---

## Reglas de oro

- Sin texto dentro de las imágenes: el texto lo pone la página.
- No generes fotos de "clientes", testimonios ni logos falsos.
- Todas tus imágenes con la misma paleta y estilo.
- Optimiza el peso antes de subir (WebP para la página, PNG/JPG para OG).
- Todas con `alt` que describa lo que se ve.
- Si un placeholder no necesita imagen, pide a Cursor que lo quite.

Si te atoras, levanta la mano: el personal de apoyo te ayuda a armar tu prompt.
