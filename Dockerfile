# Dockerfile ultra-simples para EasyPanel
FROM node:20-alpine

# Diretório de trabalho
WORKDIR /app

# Instalar dependências (apenas as necessárias para build)
COPY package*.json ./
RUN npm ci

# Copiar código da aplicação
COPY . .

# Build do SvelteKit
RUN npm run build

# Porta 80 no container
EXPOSE 80

# Definir variáveis de ambiente fixas
ENV PORT=80
ENV HOST=0.0.0.0
ENV NODE_ENV=production

# Iniciar aplicação com adapter-node
CMD ["node", "build/index.js"]
