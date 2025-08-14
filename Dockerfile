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

# Copiar script definitivo de correção de porta
COPY fix-port80.js ./

# Expor porta 80
EXPOSE 80

# Definir variáveis de ambiente
ENV NODE_ENV=production
ENV PORT=80
ENV HOST=0.0.0.0

# Comando de inicialização
CMD ["node", "fix-port80.js"]
