#!/usr/bin/env bash
# Doctor del workshop · revisa que tu computadora tenga todo lo necesario.
# Uso (macOS / Linux / Git Bash en Windows):  bash scripts/doctor.sh
# Solo revisa: no instala nada.

NODE_MIN_MAJOR=22
NODE_MIN_MINOR=23   # Astro pide Node 22.23 o más nuevo

FALTAN=0
AVISOS=0
ok()    { printf '✅ %s\n' "$1"; }
falla() { printf '❌ %s\n' "$1"; FALTAN=$((FALTAN + 1)); }
aviso() { printf '⚠️  %s\n' "$1"; AVISOS=$((AVISOS + 1)); }
tiene() { command -v "$1" >/dev/null 2>&1; }

echo "🩺 Doctor del workshop · Tu primera landing page de ventas con IA"
echo "----------------------------------------------------------------"

# 1. Sistema operativo
case "$(uname -s)" in
  Darwin)
    SO="macOS $(sw_vers -productVersion 2>/dev/null) ($(uname -m))"; OS=mac ;;
  Linux)
    SO="Linux $( (. /etc/os-release 2>/dev/null && echo "$PRETTY_NAME") || uname -r) ($(uname -m))"; OS=linux ;;
  MINGW*|MSYS*|CYGWIN*)
    SO="Windows (Git Bash) · para la revisión completa usa: powershell -ExecutionPolicy Bypass -File scripts/doctor.ps1"; OS=windows ;;
  *)
    SO="$(uname -s)"; OS=otro ;;
esac
ok "Sistema operativo: $SO"

# 2. Node.js
if tiene node; then
  NODE_V="$(node -v 2>/dev/null | sed 's/^v//')"
  MAJ="${NODE_V%%.*}"; RESTO="${NODE_V#*.}"; MIN="${RESTO%%.*}"
  if [ "$MAJ" -gt "$NODE_MIN_MAJOR" ] 2>/dev/null || { [ "$MAJ" -eq "$NODE_MIN_MAJOR" ] && [ "$MIN" -ge "$NODE_MIN_MINOR" ]; } 2>/dev/null; then
    if [ $((MAJ % 2)) -eq 1 ]; then
      aviso "Node $NODE_V funciona, pero no es versión LTS (estable). Recomendado: instalar la LTS de nodejs.org"
    else
      ok "Node $NODE_V"
    fi
  else
    falla "Node $NODE_V es muy viejo (se necesita $NODE_MIN_MAJOR.$NODE_MIN_MINOR o más nuevo, versión LTS)"
  fi
else
  falla "Node.js no encontrado"
fi

# 3. pnpm
if tiene pnpm; then
  ok "pnpm $(pnpm -v 2>/dev/null)"
else
  falla "pnpm no encontrado"
fi

# 4. Git + identidad
if tiene git; then
  ok "Git $(git --version | sed 's/git version //')"
  GN="$(git config --global user.name 2>/dev/null)"
  GE="$(git config --global user.email 2>/dev/null)"
  if [ -n "$GN" ] && [ -n "$GE" ]; then
    ok "Git configurado como: $GN <$GE>"
  else
    falla "Git sin nombre o correo configurado (user.name / user.email)"
  fi
else
  falla "Git no encontrado"
fi

# 5. GitHub CLI
if tiene gh; then
  ok "GitHub CLI $(gh --version | head -1 | awk '{print $3}')"
  if gh auth status >/dev/null 2>&1; then
    CUENTA="$(gh api user --jq .login 2>/dev/null)"
    ok "GitHub CLI con sesión iniciada${CUENTA:+ como $CUENTA}"
  else
    falla "GitHub CLI sin sesión iniciada (falta gh auth login)"
  fi
else
  falla "GitHub CLI (gh) no encontrado"
fi

# 6. Vercel CLI (opcional)
if tiene vercel; then
  ok "Vercel CLI $(vercel --version 2>/dev/null | tail -1) (opcional)"
else
  aviso "Vercel CLI no encontrado (opcional: puedes publicar desde vercel.com)"
fi

echo "----------------------------------------------------------------"
if [ "$FALTAN" -eq 0 ]; then
  if [ "$AVISOS" -gt 0 ]; then
    echo "🎉 Todo listo para el workshop ($AVISOS aviso(s) opcional(es), no bloquean)."
  else
    echo "🎉 Todo listo para el workshop."
  fi
  exit 0
else
  echo "Faltan $FALTAN cosa(s). Pídele a Cursor: \"lee y ejecuta doctor.md\" y te ayuda a instalarlas."
  exit 1
fi
