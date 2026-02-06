# Ruta origen y destino
$origen = "C:\Datos"
$destino = "D:\Backups"

# Crear carpeta con fecha
$fecha = Get-Date -Format "yyyy-MM-dd_HH-mm"
$destinoFinal = Join-Path $destino $fecha
New-Item -ItemType Directory -Path $destinoFinal

# Copiar archivos
Copy-Item -Path $origen\* -Destination $destinoFinal -Recurse -Force