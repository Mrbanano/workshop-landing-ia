# Doctor del workshop · revisa que tu computadora tenga todo lo necesario (Windows).
# Uso:  powershell -ExecutionPolicy Bypass -File scripts/doctor.ps1
# Solo revisa: no instala nada.

try { [Console]::OutputEncoding = [System.Text.Encoding]::UTF8 } catch {}

$NodeMinMajor = 22
$NodeMinMinor = 23   # Astro pide Node 22.23 o más nuevo

$OK    = [char]::ConvertFromUtf32(0x2705)
$NO    = [char]::ConvertFromUtf32(0x274C)
$WARN  = [char]::ConvertFromUtf32(0x26A0) + [char]0xFE0F
$Faltan = 0
$Avisos = 0

function Ok($t)    { Write-Host "$OK $t" }
function Falla($t) { Write-Host "$NO $t"; $script:Faltan++ }
function Aviso($t) { Write-Host "$WARN  $t"; $script:Avisos++ }
function Tiene($c) { [bool](Get-Command $c -ErrorAction SilentlyContinue) }

Write-Host ([char]::ConvertFromUtf32(0x1FA7A) + " Doctor del workshop · Tu primera landing page de ventas con IA")
Write-Host "----------------------------------------------------------------"

# 1. Sistema operativo
if ($IsMacOS) { $so = "macOS (PowerShell) · mejor usa: bash scripts/doctor.sh" }
elseif ($IsLinux) { $so = "Linux (PowerShell) · mejor usa: bash scripts/doctor.sh" }
else {
  try {
    $os = Get-CimInstance Win32_OperatingSystem
    $so = "$($os.Caption) $($os.Version) ($env:PROCESSOR_ARCHITECTURE)"
  } catch { $so = "Windows ($([Environment]::OSVersion.VersionString))" }
}
Ok "Sistema operativo: $so"

# 2. Node.js
if (Tiene node) {
  $nv = (node -v).Trim().TrimStart('v')
  $p = $nv.Split('.')
  $maj = [int]$p[0]; $min = [int]$p[1]
  if ($maj -gt $NodeMinMajor -or ($maj -eq $NodeMinMajor -and $min -ge $NodeMinMinor)) {
    if ($maj % 2 -eq 1) { Aviso "Node $nv funciona, pero no es versión LTS (estable). Recomendado: instalar la LTS" }
    else { Ok "Node $nv" }
  } else {
    Falla "Node $nv es muy viejo (se necesita $NodeMinMajor.$NodeMinMinor o más nuevo, versión LTS)"
  }
} else { Falla "Node.js no encontrado" }

# 3. pnpm
if (Tiene pnpm) { Ok "pnpm $((pnpm -v).Trim())" } else { Falla "pnpm no encontrado" }

# 4. Git + identidad
if (Tiene git) {
  Ok "Git $(((git --version) -replace 'git version ','').Trim())"
  $gn = git config --global user.name
  $ge = git config --global user.email
  if ($gn -and $ge) { Ok "Git configurado como: $gn <$ge>" }
  else { Falla "Git sin nombre o correo configurado (user.name / user.email)" }
} else { Falla "Git no encontrado" }

# 5. GitHub CLI
if (Tiene gh) {
  $ghv = ((gh --version | Select-Object -First 1) -split ' ')[2]
  Ok "GitHub CLI $ghv"
  gh auth status *> $null
  if ($LASTEXITCODE -eq 0) {
    $cuenta = gh api user --jq .login 2>$null
    if ($cuenta) { Ok "GitHub CLI con sesión iniciada como $cuenta" } else { Ok "GitHub CLI con sesión iniciada" }
  } else { Falla "GitHub CLI sin sesión iniciada (falta gh auth login)" }
} else { Falla "GitHub CLI (gh) no encontrado" }

# 6. Vercel CLI (opcional)
if (Tiene vercel) { Ok "Vercel CLI $((vercel --version 2>$null | Select-Object -Last 1)) (opcional)" }
else { Aviso "Vercel CLI no encontrado (opcional: puedes publicar desde vercel.com)" }

Write-Host "----------------------------------------------------------------"
if ($Faltan -eq 0) {
  if ($Avisos -gt 0) { Write-Host "Todo listo para el workshop ($Avisos aviso(s) opcional(es), no bloquean)." }
  else { Write-Host "Todo listo para el workshop." }
  exit 0
} else {
  Write-Host "Faltan $Faltan cosa(s). Pídele a Cursor: `"lee y ejecuta doctor.md`" y te ayuda a instalarlas."
  exit 1
}
