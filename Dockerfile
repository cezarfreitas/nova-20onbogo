# Dockerfile ultra-simples para EasyPanel
FROM node:20-alpine

# Instalar curl para health checks
RUN apk add --no-cache curl

# Definir diretório de trabalho
WORKDIR /app

# Copiar arquivos de dependências
COPY package*.json ./

# Instalar dependências
RUN npm install

# Copiar código fonte
COPY . .

# Build da aplicação
RUN npm run build

# Criar script de start personalizado
RUN echo '#!/bin/sh' > start.sh && \
    echo 'echo "🚀 Iniciando Onbongo B2B para EasyPanel..."' >> start.sh && \
    echo 'echo "📍 Configurando ambiente..."' >> start.sh && \
    echo 'export NODE_ENV=production' >> start.sh && \
    echo 'export PORT=80' >> start.sh && \
    echo 'export HOST=0.0.0.0' >> start.sh && \
    echo 'echo "✅ Ambiente configurado: PORT=$PORT HOST=$HOST"' >> start.sh && \
    echo 'echo "🚀 Iniciando servidor..."' >> start.sh && \
    echo 'exec node build/index.js' >> start.sh && \
    chmod +x start.sh

# Expor porta 80
EXPOSE 80

# Definir variáveis de ambiente
ENV NODE_ENV=production
ENV PORT=80
ENV HOST=0.0.0.0

# Comando de inicialização
CMD ["./start.sh"]
