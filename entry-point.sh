#!/bin/bash

set -e

echo "🚀 Iniciando build do projeto com Docker..."
docker-compose up --build -d

echo "✅ Containers iniciados com sucesso!"
echo "📊 MLflow deve estar em http://localhost:5000"
echo "📈 Streamlit deve estar em http://localhost:8501"
echo "🔁 Acompanhando logs do serviço principal (kedro_app)..."

docker-compose logs -f kedro_app
