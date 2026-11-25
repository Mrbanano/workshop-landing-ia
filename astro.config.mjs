// @ts-check
import { defineConfig } from 'astro/config';
import sitemap from '@astrojs/sitemap';
import tailwindcss from '@tailwindcss/vite';

// URL pública de tu landing. Se usa para el canonical, el sitemap y la imagen
// que sale al compartir en WhatsApp (og:image necesita URL absoluta con https://).
// - En Vercel se llena solo con tu dominio de producción.
// - Si conectas un dominio propio, ponlo en la variable SITE_URL en Vercel
//   (Settings → Environment Variables), ej. https://www.minegocio.mx
const site =
  process.env.SITE_URL ??
  (process.env.VERCEL_PROJECT_PRODUCTION_URL
    ? `https://${process.env.VERCEL_PROJECT_PRODUCTION_URL}`
    : 'http://localhost:4321');

export default defineConfig({
  site,
  integrations: [sitemap()],
  vite: {
    plugins: [tailwindcss()],
  },
});
