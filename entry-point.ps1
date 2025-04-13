Write-Host "⏳ Iniciando containers com Docker Compose..."



# Executa o Docker Compose com rebuild
docker-compose down -v
docker-compose up --build
