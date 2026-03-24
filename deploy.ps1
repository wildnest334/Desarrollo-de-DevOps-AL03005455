# Script de despliegue DevOps

Write-Host "Iniciando despliegue..." -ForegroundColor Green

# Verificar estado
git status

# Agregar cambios
git add .

# Commit automático
$mensaje = Read-Host "Escribe el mensaje del commit"
git commit -m "$mensaje"

# Subir a GitHub
git push origin main

# Desplegar a S3
aws s3 sync . s3://devops-ariel-3005455-web --delete

Write-Host "Despliegue completado 🚀" -ForegroundColor Green