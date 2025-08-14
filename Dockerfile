# Dockerfile otimizado para EasyPanel
FROM node:20-alpine

WORKDIR /app

# Instala dependências primeiro (melhora cache)
COPY package*.json ./
RUN npm ci

# Copia código
COPY . .

# Build de produção do SvelteKit
RUN npm run build

# Porta exposta no container
EXPOSE 80

# Variáveis de ambiente padrão
ENV PORT=80
ENV HOST=0.0.0.0
ENV NODE_ENV=production

# Inicia pelo server.js (controla porta)
CMD ["node", "server.js"]
