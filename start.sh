#!/bin/sh

echo "🚀 Iniciando Onbongo B2B..."

# Força as variáveis
export PORT=80
export HOST=0.0.0.0
export NODE_ENV=production

echo "📍 PORT: $PORT"
echo "📍 HOST: $HOST"

# Inicia o servidor
exec node build
