# Dockerfile DEFINITIVO para EasyPanel
FROM node:20-alpine

WORKDIR /app

# Instalar dependências COMPLETAS primeiro
COPY package*.json ./
RUN npm ci

# Copiar TUDO e fazer build
COPY . .
RUN npm run build

# Instalar express para produção
RUN npm install express

# Verificar se build foi criado
RUN ls -la build/

# Configuração para EasyPanel
ENV NODE_ENV=production
ENV PORT=80
ENV HOST=0.0.0.0

EXPOSE 80

# Usar node build diretamente (SEM server.js customizado)
CMD ["node", "build"]
