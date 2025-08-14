# Etapa 1 - Build
FROM node:20-alpine AS builder

WORKDIR /app

# Copia package.json e package-lock.json primeiro (melhor cache de build)
COPY package*.json ./
RUN npm install

# Copia todo o código
COPY . .

# Faz o build de produção
RUN npm run build

# Etapa 2 - Produção
FROM node:20-alpine

WORKDIR /app

# Copia apenas os arquivos necessários da etapa de build
COPY --from=builder /app/build ./build
COPY --from=builder /app/package*.json ./

# Instala apenas dependências de produção
RUN npm install --omit=dev

# Expõe a porta 80 no container
EXPOSE 80

# Define variáveis de ambiente para o SvelteKit ler
ENV PORT=80
ENV HOST=0.0.0.0
ENV NODE_ENV=production

# Comando para iniciar a aplicação
CMD ["node", "build/index.js"]
