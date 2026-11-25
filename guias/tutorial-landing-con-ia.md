# Workshop: Tu primera landing page de ventas con IA
## Tutorial paso a paso

Este tutorial lo seguimos todos juntos. Si te atoras en cualquier paso, levanta la mano: hay personal de apoyo en la sala.

**Regla de oro:** primero se piensa, después se construye. Si le pides a la IA "hazme una landing" sin contenido ni dirección visual, sale genérica. Por eso las etapas van en este orden.

**Lo que te vas a llevar:**
- `brief-visual.md` con tus referencias, paleta, tipografías y tono
- `contenido.md` con todo el texto de tu landing
- `prompt-maestro.md` reutilizable
- Tu proyecto en Origin
- Tu landing publicada en Vercel con URL pública
- Tus imágenes generadas con Grok (hero, beneficios, imagen OG para compartir)
- Checklist de SEO, OG y conversión
- La habilidad de escribir tus propios prompts para seguir cambiando tu landing solo

---

## Etapa 1 · Bienvenida y mapa del proceso

1. Ubica el flujo completo: idea → boceto → referencias → contenido → prompt maestro → construir → publicar → SEO.
2. Ten a la mano tres respuestas cortas:
   - ¿Qué vendes?
   - ¿A quién?
   - ¿Qué quieres que haga el visitante? (comprar, agendar, escribir por WhatsApp)

✅ **Listo cuando:** puedes decir tus tres respuestas en voz alta en menos de 30 segundos.

---

## Etapa 2 · Setup de Cursor y cuentas

1. Abre Cursor (si no lo instalaste en el pre-work, descárgalo de cursor.com y avísale al apoyo).
2. Inicia sesión en Cursor.
3. Crea o confirma tus cuentas:
   - **Grok**: créala con el link de referido del taller, te da **un mes gratis**: https://grok.com/plans/referral/?sku=sku_iFHd43ge7daR&interval=MONTHLY&code=VTTC-X3JB-N164-K896#subscribe
   - **Origin** (cursor.com/codebase/get-started): crea tu espacio
   - **Vercel**: regístrate y conecta Vercel con Origin
   - **Pinterest**
4. Guarda tus accesos en un lugar seguro; los vas a usar todo el taller.

✅ **Listo cuando:** Cursor está abierto con tu sesión iniciada y tienes las cuatro cuentas activas.

🆘 **Si algo falla:** no pierdas más de 15 minutos. El apoyo te pasa al plan B (v0 o Lovable) y sigues el resto del taller igual; tu contenido y tu brief sirven en cualquier herramienta.

---

## Etapa 3 · Decisión: Astro o Next

Elige con esta regla:

| Elige **Astro** si… | Elige **Next** si… |
|---|---|
| Solo necesitas una landing que cargue rápido | Ya sabes que vas a crecer a login, panel o contenido dinámico |
| Tu acción es WhatsApp, agenda o un formulario simple | Necesitas formularios con lógica propia o conectar una base de datos |
| Quieres lo más simple posible | Ya tienes algo de experiencia con React |

**Si dudas, elige Astro.** Siempre se puede migrar después.

✅ **Listo cuando:** escribiste tu elección en una hoja.

---

## Etapa 4 · Arranque en automático

1. Pídele a Grok que cree tu proyecto en Origin con el repo plantilla del taller y el framework que elegiste.
2. Déjalo trabajando. Mientras se instala y se configura, tú sigues con las siguientes etapas.

✅ **Listo cuando:** Grok confirmó que empezó a configurar tu proyecto.

---

## Etapa 5 · Anatomía de una landing y boceto en hojas

1. Toma una hoja y dibuja tu landing de arriba hacia abajo con estas secciones:
   1. **Hero:** qué ofreces, para quién, y un botón con tu acción principal
   2. **Problema:** el dolor de tu cliente
   3. **Solución / beneficios:** 3 beneficios concretos
   4. **Cómo funciona:** 3 pasos
   5. **Prueba social:** testimonios, logos o números
   6. **Precio u oferta** (si aplica)
   7. **Preguntas frecuentes**
   8. **Llamado final a la acción**
   9. **Footer:** contacto y redes
2. Marca en el boceto dónde va el botón principal. Debe aparecer arriba y al final.

✅ **Listo cuando:** tienes tu boceto en papel con todas las secciones y el botón ubicado.

---

## Etapa 6 · Referencias en Pinterest

1. Crea un tablero en Pinterest con el nombre de tu proyecto.
2. Busca y guarda entre 10 y 15 referencias: landings, paletas, tipografías y fotos con el estilo que quieres.
3. Elige tus 3 favoritas y toma captura de pantalla.
4. Llena tu `brief-visual.md` (tip: puedes subir tus capturas a un chat de IA y pedirle que te ayude a sacar la paleta y tipografías):
   - **Paleta:** 3 a 5 colores (con código hex si puedes)
   - **Tipografías:** una para títulos y una para texto
   - **Tono:** 3 palabras (ej. cercano, premium, divertido)
   - **Referencias:** las 3 capturas y qué te gusta de cada una
   - **Lo que NO quieres**

✅ **Listo cuando:** tu `brief-visual.md` está lleno y tus capturas están en la carpeta `referencias/`.

---

## Etapa 7 · Checkpoint técnico

1. Revisa con Grok que tu proyecto ya quedó creado y configurado.
2. Ábrelo en Cursor.
3. Pide que lo corra en local y abre la página de prueba en tu navegador.

✅ **Listo cuando:** ves la plantilla corriendo en tu navegador.

🆘 **Si no corre:** levanta la mano. Si en 15 minutos no queda, pasas al plan B.

---

## ☕ Descanso

---

## Etapa 8 · Aprende a escribirle a la IA (la plantilla de prompts)

A partir de aquí **tú escribes tus propios prompts**. No hay prompts mágicos que copiar: hay una estructura que te sirve para pedirle cualquier cosa a la IA, hoy y después del taller.

1. Abre la `guia-para-construir-prompts.md`.
2. Aprende las 5 partes de todo buen prompt:

| Parte | Qué pones |
|---|---|
| **1. Contexto** | Quién eres, qué negocio tienes, en qué punto vas |
| **2. Qué quiero** | El resultado concreto que esperas |
| **3. Con qué archivos** | Los archivos o información que debe usar |
| **4. Cómo lo quiero** | Formato, tono, largo, pasos |
| **5. Qué evitar** | Lo que no debe hacer |

3. Compara el ejemplo malo con el bueno:

❌ **Malo:** `Hazme el texto para mi página.`

✅ **Bueno:**
```
Contexto: Tengo una pastelería en Guadalajara que hace pasteles personalizados
para cumpleaños infantiles. Mis clientes son mamás que piden por WhatsApp.
Qué quiero: El texto del hero: headline, subtítulo y texto del botón.
Con qué archivos: Lo que te conté arriba.
Cómo lo quiero: 3 opciones de headline de máximo 10 palabras, tono cercano.
Qué evitar: No digas "los mejores pasteles" ni inventes premios.
```

4. Copia la plantilla en blanco en una nota; la vas a usar en las siguientes tres etapas.

✅ **Listo cuando:** puedes decir las 5 partes sin ver la hoja.

---

## Etapa 9 · Contenido con IA

1. Abre tu chat de IA (Grok, ChatGPT, Claude o Gemini).
2. **Escribe tu prompt de entrevista** con la plantilla. La clave: pídele que te haga preguntas antes de escribir.

   Ejemplo:
   ```
   Contexto: Estoy armando la landing de mi negocio. Vendo [qué] a [quién].
   Quiero que el visitante [acción].
   Qué quiero: Entrevístame como copywriter experto. Hazme hasta 10 preguntas,
   una por una, sobre mi cliente, su problema, mi diferencial, pruebas y objeciones.
   Con qué archivos: Lo que te acabo de contar.
   Cómo lo quiero: Preguntas cortas y sencillas. Al final, un resumen en viñetas.
   Qué evitar: No escribas la landing todavía y no inventes datos.
   ```
3. Responde las preguntas con ejemplos concretos.
4. **Escribe tu prompt de copy** con la plantilla: pide el texto de cada sección de tu boceto, con el formato de `contenido.md`, 3 opciones de headline y el title y description para SEO. En *Qué evitar* pon: no inventar testimonios ni cifras.
5. Revisa cada texto: que suene a ti, que sea claro y que no prometa lo que no das. Si algo no te gusta, di por qué ("suena muy formal", "hazlo más corto").
6. Pásalo todo a `contenido.md`, sección por sección.

✅ **Listo cuando:** `contenido.md` tiene texto real en todas las secciones, sin "lorem ipsum".

🆘 **Si te atoras:** levanta la mano. El personal de apoyo tiene prompts de respaldo de entrevista y de copy.

---

## Etapa 10 · Prompt maestro

El prompt maestro es la instrucción grande que le das a Cursor para construir tu landing. Lo escribes tú con la misma plantilla, apoyándote en la `guia-prompt-maestro.md`.

1. Crea el archivo `prompt-maestro.md` en tu proyecto.
2. Escríbelo con las 5 partes:
   - **Contexto:** "Eres un desarrollador front-end senior", tu negocio en una línea, que no eres técnico y tu acción principal con su número o link.
   - **Qué quiero:** una landing de una sola página con las secciones de `contenido.md` en orden, lista para Vercel.
   - **Con qué archivos:** `contenido.md`, `brief-visual.md` y `referencias/`.
   - **Cómo lo quiero:** tu stack (Astro o Next + Tailwind), mobile-first, botón arriba, a mitad y al final, SEO y Open Graph, **placeholders SVG en cada lugar donde va una imagen** (con su medida y una etiqueta, nada de fotos de stock) y la forma de trabajo: *"primero muéstrame un plan y espera mi OK"*.
   - **Qué evitar:** no inventar testimonios ni cifras, no cambiar el copy, no agregar librerías de más, no hacer un diseño genérico.

   Ejemplo corto:
   ```
   Contexto: Eres un desarrollador front-end senior. Vas a construir la landing de
   mi pastelería en Guadalajara. No soy técnica, explícame simple. Mi acción es
   WhatsApp al 523312345678.
   Qué quiero: Una landing de una página con las secciones de contenido.md en orden.
   Con qué archivos: ./contenido.md (texto exacto), ./brief-visual.md (diseño),
   ./referencias/ (capturas).
   Cómo lo quiero: Astro + Tailwind, mobile-first, botón de WhatsApp arriba, a mitad,
   al final y flotante. SEO y Open Graph completos.
   Donde vaya una imagen, deja un placeholder SVG con su medida y dame la lista. Primero muéstrame un plan y
   espera mi OK; luego construye por pasos y explícame.
   Qué evitar: No inventes testimonios ni cifras, no cambies mis textos, nada de
   diseño genérico.
   ```
3. Repásalo con el checklist de la guía y léelo completo una vez.

✅ **Listo cuando:** tu prompt maestro tiene las 5 partes, tu framework y tu número o link de acción.

🆘 **Si te atoras:** el personal de apoyo tiene un prompt maestro de respaldo para Astro y otro para Next.

---

## Etapa 11 · Construir con Cursor

1. En Cursor, abre el chat del agente.
2. Pega tu prompt maestro.
3. Lee el plan que te propone. Si algo no cuadra, dilo antes de dar OK.
4. Da OK y deja que construya. Revisa el resultado en tu navegador.
5. Pide cambios **tú mismo**, uno por uno, con la versión corta de la plantilla: **qué sección + qué ves + qué quieres.**
   - "En el hero, el botón se ve chico; hazlo más grande y del color de acento."
   - "Los títulos no usan la tipografía del brief; aplícala."
   - "En celular el texto del hero se corta; hazlo más chico solo en celular."
   - "Conecta el botón a mi WhatsApp [número] con un mensaje prellenado."
   Para cambios grandes, vuelve a usar las 5 partes completas.
6. Revisa siempre en versión celular; ahí va a llegar la mayoría de tus visitas.

✅ **Listo cuando:** tu landing se ve bien en computadora y en celular, con tu contenido real, tu botón funcionando y placeholders SVG donde van las imágenes.

🆘 **Si te atoras:** el apoyo tiene una lista de pedidos de ajuste típicos y frases para cuando algo se rompe.

---

## Etapa 12 · Imágenes con Grok

Cursor dejó un **placeholder SVG** en cada lugar donde va una imagen: un rectángulo claro con su medida y una etiqueta (ej. `Hero 1600x900`). Ahora generas tus imágenes reales con Grok y las cambias. De aquí sale también tu **imagen OG**, la que se ve al compartir tu landing en WhatsApp.

1. Abre la `imagenes-prompt.md`.
2. Pídele a Cursor la lista de placeholders: archivo, sección, medida y qué debería mostrar.
3. Elige solo las que de verdad necesitas. Mínimo: **hero** e **imagen OG (1200×630)**.
4. Escribe tu prompt de imagen con la plantilla de 5 partes, usando tu `brief-visual.md` (paleta, tono y estilo). Ejemplo:
   ```
   Contexto: Landing de mi pastelería de pasteles para cumpleaños infantiles. Marca alegre y cercana.
   Qué quiero: Imagen para el hero: pastel de dos pisos en colores pastel sobre una mesa de fiesta.
   Con qué archivos: Paleta rosa #F7C6D0, crema #FFF6E9, chocolate #6B3E2E. Estilo foto real.
   Cómo lo quiero: 1600x900 px, pastel a la derecha y espacio libre a la izquierda para el texto.
   Qué evitar: Sin texto ni letras, sin personas, sin marcas de agua.
   ```
5. Genera 2 o 3 variantes en Grok y quédate con la que mejor combine.
6. Descárgala, guárdala en la carpeta de imágenes del proyecto (ej. `public/img/hero.webp`) y pídele a Cursor: "Reemplaza el placeholder hero.svg por public/img/hero.webp, con alt '[descripción]', sin cambiar nada más."
7. Para la imagen OG usa **PNG o JPG de 1200×630** (WhatsApp no muestra SVG ni WebP en la vista previa).

✅ **Listo cuando:** al menos tu hero y tu imagen OG ya son imágenes reales, y ningún placeholder visible se queda sin decidir (o se cambia, o se quita).

🆘 **Si te atoras:** si Grok no da algo que te guste en 3 intentos, deja el placeholder y sigue; lo terminas en casa con la misma guía.

---

## Etapa 13 · Publicar en Vercel desde Origin

1. Pide en Cursor que guarde y suba tus cambios a tu proyecto en Origin.
2. Entra a Vercel y crea un proyecto nuevo importando tu repo desde Origin.
3. Deja la configuración que Vercel detecta para Astro o Next y dale **Deploy**.
4. Espera a que termine y abre tu URL `*.vercel.app`.
5. Ábrela también en tu celular y compártela con alguien de la sala.

✅ **Listo cuando:** tu landing está en vivo y abre desde cualquier celular.

---

## Etapa 14 · SEO, OG tags y conversión

Escribe tú el prompt para que Cursor revise y arregle cada punto (con la plantilla: pega el checklist en *Qué quiero* y pide primero un reporte de qué falta). Palomea:

- [ ] Título de la página claro (qué ofreces + tu marca)
- [ ] Descripción de 150 caracteres aprox.
- [ ] Imagen OG (la que generaste en la Etapa 12, PNG o JPG de 1200×630)
- [ ] Favicon
- [ ] Botón principal visible sin hacer scroll
- [ ] El botón lleva al lugar correcto (WhatsApp, agenda o formulario)
- [ ] Carga rápido en celular
- [ ] Textos sin faltas de ortografía

Cuando termines, vuelve a publicar y comparte tu URL en WhatsApp para ver la vista previa.

✅ **Listo cuando:** todo el checklist está palomeado y tu vista previa en WhatsApp se ve bien.

---

## Etapa 15 · Cierre: cómo seguir solo

1. Revisa la `hoja-de-bolsillo.md`: los pedidos más comunes a Cursor y los errores típicos.
2. Quédate con la plantilla de 5 partes: es lo que vas a usar para cualquier cambio de aquí en adelante.
3. El flujo para cualquier cambio a partir de hoy:
   1. Abres tu proyecto en Cursor
   2. Pides el cambio
   3. Revisas en local
   4. Subes a Origin y Vercel publica solo
4. **Tarea para casa:** conectar tu dominio propio en Vercel (opcional, ~10–15 USD al año).
5. **Imágenes nuevas:** cuando quieras cambiar o agregar imágenes, repite la Etapa 12 con `imagenes-prompt.md`: placeholder SVG → prompt en Grok → reemplazar en Cursor.

✅ **Listo cuando:** sabes hacer un cambio y publicarlo sin ayuda.

---

### Para el personal de apoyo

- Un apoyo por cada ~8 asistentes.
- Puntos donde más se atora la gente: Etapa 2 (cuentas y conexión Vercel–Origin), Etapa 7 (proyecto corriendo en local) y Etapa 13 (deploy).
- Regla de 15 minutos: si un problema técnico no se resuelve en 15 minutos, la persona pasa al plan B (v0 o Lovable) y sigue con el grupo.
- Revisa el ✅ de cada etapa para detectar a quien se va quedando atrás.
- **Prompts de respaldo:** están en la carpeta `prompts/` de este repo. No se reparten al inicio. Primero ayuda a la persona a escribir el suyo con la plantilla de 5 partes (pregúntale: ¿qué contexto le diste?, ¿qué le pediste?, ¿qué archivos?, ¿cómo lo quieres?, ¿qué debe evitar?). Solo si en ~10 minutos no avanza, o va muy atrás del grupo, pásale el prompt de respaldo de esa etapa:
  - Etapa 6: `03-brief-visual-desde-pinterest.md`
  - Etapa 9: `01-entrevista-de-negocio.md` y `02-copy-por-secciones.md`
  - Etapa 10: `04-prompt-maestro-astro.md` o `05-prompt-maestro-next.md`
  - Etapa 11: `06-pedidos-de-ajuste.md`
  - Etapa 12: `imagenes-prompt.md` (guía; ayuda a armar el prompt de imagen)
  - Etapa 13: `08-ayuda-deploy-vercel-origin.md`
  - Etapa 14: `07-revision-seo-og-conversion.md`
- Aun con el respaldo, pídele que lo lea y llene los [corchetes] él mismo: así ve la estructura en acción.
