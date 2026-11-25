# Guía para construir tus propios prompts

Un prompt es lo que le escribes a la IA para pedirle algo. La diferencia entre un resultado genérico y uno que sirve casi siempre está en cómo lo pides. En este taller **tú escribes tus propios prompts**, así te llevas la habilidad y no solo la landing.

## La plantilla: 5 partes

| Parte | Qué pones | Pregunta que responde |
|---|---|---|
| **1. Contexto** | Quién eres, qué negocio tienes, en qué punto vas | ¿Qué necesita saber la IA de mí? |
| **2. Qué quiero** | El resultado concreto que esperas | ¿Qué me tiene que entregar? |
| **3. Con qué archivos** | Los archivos o información que debe usar | ¿De dónde saca la información? |
| **4. Cómo lo quiero** | Formato, tono, largo, pasos | ¿Cómo se debe ver lo que entregue? |
| **5. Qué evitar** | Lo que no debe hacer | ¿Qué sale mal si no lo aclaro? |

### Plantilla en blanco (cópiala)

```
Contexto:
...

Qué quiero:
...

Con qué archivos:
...

Cómo lo quiero:
...

Qué evitar:
...
```

No todas las partes tienen que ser largas. A veces "Con qué archivos" es una línea. Lo importante es no saltarte ninguna.

---

## Ejemplo 1 · Pedir el texto del hero

### ❌ Malo

```
Hazme el texto para mi página.
```

**Por qué falla:** la IA no sabe qué vendes, a quién, qué sección quieres ni en qué tono. Va a inventar algo genérico.

### ✅ Bueno

```
Contexto:
Tengo una pastelería en Guadalajara que hace pasteles personalizados para
cumpleaños infantiles. Mis clientes son mamás de 28 a 40 años que piden por WhatsApp.

Qué quiero:
El texto del hero de mi landing: un headline, un subtítulo y el texto del botón.

Con qué archivos:
Usa lo que te conté en la entrevista de arriba.

Cómo lo quiero:
- Dame 3 opciones de headline, máximo 10 palabras cada una.
- Tono cercano y alegre, español de México.
- El botón debe invitar a escribir por WhatsApp.

Qué evitar:
- No digas "los mejores pasteles" ni frases que diría cualquier pastelería.
- No inventes premios ni número de clientes.
```

---

## Ejemplo 2 · Pedir un cambio en Cursor

### ❌ Malo

```
Arréglalo, se ve feo.
```

**Por qué falla:** "feo" no le dice a Cursor qué sección, qué está mal ni cómo lo quieres.

### ✅ Bueno

```
Contexto:
Estoy revisando mi landing en versión celular.

Qué quiero:
Que el hero se vea bien en celular.

Con qué archivos:
Respeta los colores y tipografías de brief-visual.md.

Cómo lo quiero:
- El headline cabe en máximo 3 líneas.
- El botón de WhatsApp ocupa todo el ancho y se ve sin hacer scroll.

Qué evitar:
- No cambies el texto ni la versión de computadora.
```

Para cambios chicos puedes usar la versión corta: **qué sección + qué ves + qué quieres.**
> "En el hero, en celular el título se corta; hazlo más chico solo en celular."

---

## Ejemplo 3 · Pedir tu brief visual

### ❌ Malo

```
Dime qué colores usar.
```

### ✅ Bueno

```
Contexto:
Vendo cursos de yoga en línea para principiantes. Te adjunto 3 capturas de
referencias de Pinterest. Me gusta lo tranquilo y los tonos tierra.

Qué quiero:
Una paleta de 5 colores y 2 tipografías para mi landing.

Con qué archivos:
Las 3 imágenes adjuntas.

Cómo lo quiero:
Colores en código hex (primario, secundario, acento para botones, fondo, texto)
y tipografías de Google Fonts. En formato de lista para pegar en brief-visual.md.

Qué evitar:
Nada de colores neón ni el típico degradado morado.
```

---

## 6 trucos que siempre funcionan

1. **Pide que te pregunte primero.** "Antes de escribir, hazme hasta 8 preguntas." La IA llena huecos con tus datos en lugar de inventar.
2. **Un pedido por mensaje.** Si pides 5 cosas a la vez, alguna sale mal y no sabes cuál.
3. **Pide opciones.** "Dame 3 opciones" te deja elegir en lugar de conformarte.
4. **Pide un plan antes de construir.** En Cursor: "Primero muéstrame un plan y espera mi OK."
5. **Nombra los archivos.** "Usa solo contenido.md" evita que invente texto.
6. **Si no te gusta, di por qué.** "Suena muy formal" sirve más que "no me gusta".

## Checklist antes de mandar un prompt

- [ ] ¿Dije quién soy y qué negocio tengo? (contexto)
- [ ] ¿Dije exactamente qué quiero que me entregue?
- [ ] ¿Dije qué archivos o información usar?
- [ ] ¿Dije formato, tono o largo?
- [ ] ¿Dije qué no quiero?

Si te atoras, levanta la mano: el personal de apoyo tiene prompts de respaldo para que no te quedes atrás.
