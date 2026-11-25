# 🩺 doctor.md · Revisa y prepara tu computadora

> **Para la persona:** abre este proyecto en Cursor, abre el chat del agente y escribe:
> **`lee y ejecuta doctor.md`**
> El agente revisa tu computadora, te dice qué tienes ✅ y qué falta ❌, y te ayuda a instalarlo.

---

## Instrucciones para el agente

Eres el "doctor" del workshop. La persona **no es técnica**: habla en español de México, simple y amable, sin jerga. Sigue estos pasos en orden.

### Paso 1 · Detecta el sistema operativo

Corre el comando que corresponda y dile a la persona qué sistema tiene:

- macOS / Linux: `uname -s` (`Darwin` = macOS) y en Mac `sw_vers -productVersion`.
- Windows (PowerShell): `[Environment]::OSVersion.VersionString`.

### Paso 2 · Corre la revisión

Usa el script del repo, que imprime el checklist completo:

- **macOS / Linux:** `bash scripts/doctor.sh`
- **Windows:** `powershell -ExecutionPolicy Bypass -File scripts/doctor.ps1`

Si el script no corre, revisa a mano con estos comandos (uno por uno):

| Qué | Comando para revisar | Qué se necesita |
|---|---|---|
| Node.js | `node -v` | **v22.23 o más nuevo, versión LTS** (número par: 22, 24, 26…) |
| pnpm | `pnpm -v` | cualquier versión 9 o más nueva |
| Git | `git --version` | instalado |
| Identidad de Git | `git config --global user.name` y `git config --global user.email` | ambos con valor |
| GitHub CLI | `gh --version` | instalado |
| Sesión de GitHub | `gh auth status` | "Logged in to github.com" |
| Vercel CLI (opcional) | `vercel --version` | opcional |

### Paso 3 · Muestra el resultado como checklist

Responde **exactamente** con este formato, una línea por punto:

```
✅ Sistema operativo: macOS 15.1 (arm64)
✅ Node 24.11.0
❌ pnpm no encontrado
✅ Git 2.47.0
❌ Git sin nombre o correo configurado
❌ GitHub CLI (gh) no encontrado
⚠️ Vercel CLI no encontrado (opcional)
```

Luego, **solo para lo que tenga ❌**, explica en una o dos frases para qué sirve y muestra cómo instalarlo y cómo verificarlo **para su sistema operativo** (usa la sección "Recetas" de abajo). No muestres recetas de otros sistemas.

### Paso 4 · Ofrece instalar (pregunta antes)

Pregunta: **"¿Quieres que lo instale yo por ti?"** y **espera el sí** antes de correr cualquier instalación.

- Instala **una cosa a la vez**, en este orden: (Mac: Homebrew) → Node.js → pnpm → Git → identidad de Git → GitHub CLI → sesión de GitHub → Vercel CLI (solo si la persona quiere).
- Para la identidad de Git, **pregunta su nombre y su correo** (de preferencia el mismo de su cuenta de GitHub). No los inventes.
- Si un comando pide contraseña (`sudo` en Mac) o abre un navegador, avísale antes y dile qué va a ver.
- **`gh auth login` es interactivo:** pídele a la persona que lo corra ella misma en la terminal de Cursor (Terminal → New Terminal) y que elija: `GitHub.com` → `HTTPS` → `Yes` → `Login with a web browser`. Copia el código que aparece y lo pega en la página que se abre.
- **Windows:** después de instalar con `winget`, hay que **cerrar y volver a abrir Cursor** para que reconozca los programas nuevos. Avísale.
- Si algo falla dos veces, no sigas intentando: dile que levante la mano para que el personal de apoyo le ayude.

### Paso 5 · Vuelve a revisar

Cuando termines, corre otra vez el script del Paso 2 y muestra el checklist final. Si todo está ✅ (los ⚠️ opcionales no bloquean), dile:

> 🎉 ¡Tu computadora está lista para el workshop! Siguiente paso: `pnpm install` y `pnpm dev`.

Ofrece correr `pnpm install` y `pnpm dev` y dile que abra `http://localhost:4321` para ver la plantilla.

---

## Recetas de instalación

### 🍎 macOS

| Qué | Cómo instalar | Cómo verificar |
|---|---|---|
| **Homebrew** (instalador de programas) | `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"` · Al final, corre las 2 líneas "Next steps" que muestra (agregan `brew` al PATH). | `brew --version` |
| **Node.js LTS** | `brew install node@24` y luego `brew link --force --overwrite node@24` · o el instalador "LTS" de [nodejs.org](https://nodejs.org) | `node -v` |
| **pnpm** | `corepack enable pnpm` · si dice "corepack: command not found": `npm install -g corepack` y repite · alternativa: `brew install pnpm` | `pnpm -v` |
| **Git** | `xcode-select --install` (herramientas de Apple) · o `brew install git` | `git --version` |
| **Identidad de Git** | `git config --global user.name "Tu Nombre"` y `git config --global user.email "tu@correo.com"` | `git config --global --list` |
| **GitHub CLI** | `brew install gh` | `gh --version` |
| **Sesión de GitHub** | `gh auth login` (la persona lo corre; ver Paso 4) | `gh auth status` |
| **Vercel CLI** (opcional) | `pnpm add -g vercel` (si pide setup: `pnpm setup`, cierra y abre la terminal) · o `npm install -g vercel` | `vercel --version` |

Si sale "permission denied" con `corepack` o `npm -g` en Mac: usa `brew install pnpm`, o antepone `sudo` (pide la contraseña de la Mac).

### 🪟 Windows

Usa **PowerShell** (en Cursor: Terminal → New Terminal). `winget` ya viene en Windows 10/11; si no aparece, actualiza "App Installer" desde Microsoft Store.

| Qué | Cómo instalar | Cómo verificar |
|---|---|---|
| **Node.js LTS** | `winget install -e --id OpenJS.NodeJS.LTS` · o el instalador "LTS" de [nodejs.org](https://nodejs.org) | `node -v` |
| **pnpm** | `corepack enable pnpm` (si dice que no existe: `npm install -g corepack` y repite) · alternativa: `winget install -e --id pnpm.pnpm` | `pnpm -v` |
| **Git** | `winget install -e --id Git.Git` · o el instalador de [git-scm.com](https://git-scm.com/download/win) | `git --version` |
| **Identidad de Git** | `git config --global user.name "Tu Nombre"` y `git config --global user.email "tu@correo.com"` | `git config --global --list` |
| **GitHub CLI** | `winget install -e --id GitHub.cli` · o el instalador de [cli.github.com](https://cli.github.com) | `gh --version` |
| **Sesión de GitHub** | `gh auth login` (la persona lo corre; ver Paso 4) | `gh auth status` |
| **Vercel CLI** (opcional) | `npm install -g vercel` | `vercel --version` |

Notas Windows:
- **Cierra y vuelve a abrir Cursor** después de cada `winget install`.
- Si `corepack enable` da error de permisos: abre PowerShell **como administrador** y repítelo, o usa `winget install -e --id pnpm.pnpm`.
- Si PowerShell dice que "la ejecución de scripts está deshabilitada" al correr `pnpm`: `Set-ExecutionPolicy -Scope CurrentUser RemoteSigned` y responde `S`.

### 🐧 Linux

| Qué | Cómo instalar | Cómo verificar |
|---|---|---|
| **Node.js LTS** | Con [nvm](https://github.com/nvm-sh/nvm): `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh \| bash`, cierra y abre la terminal, luego `nvm install --lts` | `node -v` |
| **pnpm** | `corepack enable pnpm` (o `npm install -g corepack` primero) | `pnpm -v` |
| **Git** | Ubuntu/Debian: `sudo apt install git` · Fedora: `sudo dnf install git` | `git --version` |
| **GitHub CLI** | Sigue [cli.github.com](https://github.com/cli/cli/blob/trunk/docs/install_linux.md) (Ubuntu/Debian: `sudo apt install gh`) | `gh --version` |
| **Identidad, sesión y Vercel** | Igual que en macOS | — |

---

## Para el personal de apoyo

- Lo que más falla: Homebrew en Mac (tarda y pide contraseña), PATH en Windows (cerrar y abrir Cursor) y `gh auth login`.
- Regla de 15 minutos: si el entorno no queda en 15 minutos, la persona pasa al plan B (v0 o Lovable) y sigue con el grupo.
