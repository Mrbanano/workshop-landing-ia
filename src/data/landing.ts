/*
  TEXTOS DE TU LANDING · todo el texto vive aquí, en un solo lugar.

  Cómo se llena: copia cada sección de tu contenido.md al bloque con el mismo nombre.
  Lo que está entre [corchetes] es un espacio por llenar: cámbialo por tu texto real.
  Si no tienes algo (por ejemplo testimonios), deja el [PENDIENTE] o pídele a Cursor
  que oculte esa sección. Nunca inventes testimonios ni cifras.

  Tip para Cursor: "Actualicé contenido.md; pasa los textos a src/data/landing.ts
  sin cambiar el diseño."
*/

/* ---------- Acción principal (a dónde llevan TODOS los botones) ---------- */
export const accion = {
  // 'whatsapp' | 'agenda' | 'formulario' | 'pago'
  tipo: 'whatsapp' as 'whatsapp' | 'agenda' | 'formulario' | 'pago',
  // WhatsApp: número con lada de país, sin espacios ni signos. Ej. México: 5215512345678
  whatsapp: '5215500000000',
  mensaje: 'Hola, vi tu página y quiero más información',
  // Si tu acción NO es WhatsApp, pon aquí el link (Calendly, Google Forms, Stripe…)
  link: 'https://[tu-link-de-agenda-o-formulario]',
};

export const ctaHref =
  accion.tipo === 'whatsapp'
    ? `https://wa.me/${accion.whatsapp}?text=${encodeURIComponent(accion.mensaje)}`
    : accion.link;

/* ---------- SEO (sección "SEO" de contenido.md) ---------- */
export const seo = {
  marca: '[Nombre de tu negocio]',
  title: '[Qué ofreces + tu marca, máx. 60 caracteres]',
  description:
    '[Descripción de tu landing en unos 150 caracteres: qué ofreces, a quién y qué gana tu cliente.]',
  // Imagen que sale al compartir en WhatsApp: PNG o JPG de 1200x630 en /public
  ogImage: '/og.png',
  ogAlt: '[Describe la imagen para compartir en una frase]',
};

/* ---------- Hero ---------- */
export const hero = {
  headline: '[Tu headline: qué gana tu cliente, máx. 10 palabras]',
  subheadline:
    '[Subtítulo: para quién es y cómo le ayudas, en una o dos frases cortas.]',
  boton: '[Texto del botón, ej. Escríbeme por WhatsApp]',
  imagen: { src: '/img/hero.svg', alt: '[Describe la imagen del hero]', ancho: 1600, alto: 900 },
};

/* ---------- Problema ---------- */
export const problema = {
  titulo: '[El dolor de tu cliente, en una frase]',
  texto: '[Describe la situación que vive tu cliente hoy, con sus palabras.]',
  puntos: ['[Molestia 1]', '[Molestia 2]', '[Molestia 3]'],
};

/* ---------- Solución / beneficios (3) ---------- */
export const beneficios = {
  titulo: '[Cómo lo resuelves]',
  items: [
    { titulo: '[Beneficio 1]', texto: '[Qué gana tu cliente con esto.]', imagen: '/img/beneficio-1.svg' },
    { titulo: '[Beneficio 2]', texto: '[Qué gana tu cliente con esto.]', imagen: '/img/beneficio-2.svg' },
    { titulo: '[Beneficio 3]', texto: '[Qué gana tu cliente con esto.]', imagen: '/img/beneficio-3.svg' },
  ],
};

/* ---------- Cómo funciona (3 pasos) ---------- */
export const pasos = {
  titulo: 'Cómo funciona',
  items: [
    { titulo: '[Paso 1]', texto: '[Qué hace tu cliente primero.]', imagen: '/img/paso-1.svg' },
    { titulo: '[Paso 2]', texto: '[Qué pasa después.]', imagen: '/img/paso-2.svg' },
    { titulo: '[Paso 3]', texto: '[Qué recibe al final.]', imagen: '/img/paso-3.svg' },
  ],
};

/* ---------- Prueba social (SOLO testimonios y cifras reales) ---------- */
export const pruebaSocial = {
  mostrar: true, // pon false si todavía no tienes testimonios reales
  titulo: 'Lo que dicen nuestros clientes',
  testimonios: [
    { texto: '[PENDIENTE: conseguir testimonio real]', nombre: '[Nombre]', detalle: '[Ciudad o negocio]' },
    { texto: '[PENDIENTE: conseguir testimonio real]', nombre: '[Nombre]', detalle: '[Ciudad o negocio]' },
  ],
};

/* ---------- Precio u oferta (si aplica) ---------- */
export const precio = {
  mostrar: true, // pon false si no quieres mostrar precio
  titulo: '[Tu oferta]',
  monto: '[$000 MXN]',
  nota: '[Ej. pago único / por mes / desde]',
  incluye: ['[Qué incluye 1]', '[Qué incluye 2]', '[Qué incluye 3]'],
  imagen: { src: '/img/producto.svg', alt: '[Describe tu producto o servicio]' },
};

/* ---------- Preguntas frecuentes (responden objeciones) ---------- */
export const faq = {
  titulo: 'Preguntas frecuentes',
  items: [
    { pregunta: '[Pregunta 1]', respuesta: '[Respuesta 1]' },
    { pregunta: '[Pregunta 2]', respuesta: '[Respuesta 2]' },
    { pregunta: '[Pregunta 3]', respuesta: '[Respuesta 3]' },
    { pregunta: '[Pregunta 4]', respuesta: '[Respuesta 4]' },
    { pregunta: '[Pregunta 5]', respuesta: '[Respuesta 5]' },
  ],
};

/* ---------- Llamado final a la acción ---------- */
export const ctaFinal = {
  titulo: '[Invitación final a tomar acción]',
  texto: '[Una frase que quite el último miedo, ej. Sin compromiso, te respondo hoy.]',
  boton: '[Texto del botón]',
};

/* ---------- Footer (contacto y redes) ---------- */
export const footer = {
  contacto: '[correo o teléfono]',
  ciudad: '[Ciudad, Estado]',
  redes: [
    { nombre: 'Instagram', url: 'https://instagram.com/[tu-usuario]' },
    { nombre: 'Facebook', url: 'https://facebook.com/[tu-pagina]' },
  ],
};
