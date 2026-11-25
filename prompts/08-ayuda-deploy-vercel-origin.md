# Prompt de respaldo 08 · Ayuda para publicar en Vercel desde Origin

> **Para el personal de apoyo.** Respaldo para la etapa *Publicar en Vercel desde Origin*, el punto donde más gente se atora.

**Dónde se usa:** en el chat del agente de Cursor (para subir cambios y leer errores) o en Grok (para que revise la configuración de tu proyecto).

---

## A) Subir tus cambios a Origin

```
Contexto:
Terminé mi landing en este proyecto y quiero publicarla en Vercel.
Mi proyecto está conectado a Origin.

Qué quiero:
Guarda todos mis cambios con un commit que diga "Primera versión de mi landing"
y súbelos a mi repositorio en Origin.

Cómo lo quiero:
- Antes de subir, corre el build (npm run build) para confirmar que no hay errores.
- Explícame en una frase qué es un commit y qué hiciste.
- Al final confírmame que los cambios ya están en Origin.

Qué evitar:
- No subas archivos con contraseñas o llaves (.env).
- No cambies nada del código de la landing en este paso.
```

## B) Cuando el deploy en Vercel falla

```
Contexto:
Intenté publicar mi landing en Vercel (importando mi repo desde Origin) y falló.
Mi proyecto es [Astro / Next].
Este es el error que me sale en Vercel:
[pega aquí el error completo del log de Vercel]

Qué quiero:
Explícame en lenguaje simple qué significa el error y arréglalo en mi proyecto.

Cómo lo quiero:
- Primero prueba que el build funcione en local (npm run build).
- Dime si tengo que cambiar algo en la configuración de Vercel
  (Framework, Build Command, Output Directory) y exactamente qué poner.
- Cuando quede, sube el arreglo a Origin para que Vercel vuelva a publicar.

Qué evitar:
- No cambies el diseño ni los textos.
- No agregues dependencias si no son necesarias para arreglar el error.
```

## C) Para Grok: revisar la conexión Origin – Vercel

```
Contexto:
Estoy en un taller publicando mi landing. Mi proyecto está en Origin y quiero
desplegarlo en Vercel.

Qué quiero:
Revisa que mi proyecto en Origin tenga mis últimos cambios y guíame paso a paso
para importarlo en Vercel y publicarlo.

Cómo lo quiero:
- Pasos numerados y cortos, como si fuera la primera vez que uso Vercel.
- Dime qué debo ver en pantalla en cada paso para saber que voy bien.

Qué evitar:
- No me pidas que comparta contraseñas en el chat.
```

---

## Configuración que Vercel debe detectar sola

| | Astro | Next |
|---|---|---|
| Framework Preset | Astro | Next.js |
| Build Command | `npm run build` | `npm run build` |
| Output Directory | `dist` | (automático) |

## Errores típicos

- **"Repository not found" o no aparece el repo:** falta conectar Vercel con Origin o dar permiso a ese repo.
- **"Command failed: npm run build":** el error real está más arriba en el log; cópialo completo y usa el prompt B.
- **La página sale en blanco o sin estilos:** casi siempre es el Output Directory o el Framework Preset mal elegidos.
- **Subí cambios y no se ven:** revisa en Vercel que haya un deploy nuevo; si no, los cambios no llegaron a Origin (usa el prompt A).
