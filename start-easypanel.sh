#!/bin/sh

# Script shell definitivo para EasyPanel
echo "🚀 Iniciando Onbongo B2B para EasyPanel..."

# Força as variáveis de ambiente
export NODE_ENV=production
export PORT=80
export HOST=0.0.0.0

echo "📍 Configuração forçada:"
echo "   NODE_ENV=$NODE_ENV"
echo "   PORT=$PORT"  
echo "   HOST=$HOST"

# Verifica se o build existe
if [ ! -f "./build/index.js" ]; then
    echo "❌ Arquivo build/index.js não encontrado!"
    exit 1
fi

echo "✅ Build encontrado"
echo "🚀 Iniciando servidor..."

# Inicia o servidor SvelteKit
exec node build/index.js
