$ErrorActionPreference = "Stop"
Set-Location (Split-Path -Parent $MyInvocation.MyCommand.Path)
try { [Console]::OutputEncoding = [System.Text.Encoding]::UTF8 } catch {}
$env:PYTHONIOENCODING = "utf-8"

$python = $null
foreach ($name in @("python", "py")) {
    $cmd = Get-Command $name -ErrorAction SilentlyContinue
    if ($cmd) { $python = $name; break }
}
if (-not $python) {
    Write-Host "Python 3.10+ not found. Install Python and add it to PATH." -ForegroundColor Red
    exit 1
}

$env:PYTHONPATH = Join-Path (Get-Location) "vendor"
Write-Host "Preview: http://127.0.0.1:8000 (Ctrl+C to stop)" -ForegroundColor Cyan
& $python -m mkdocs serve
