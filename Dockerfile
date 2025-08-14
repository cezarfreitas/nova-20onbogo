# Dockerfile ultra-simples para EasyPanel
FROM node:20-alpine

# Diretório de trabalho
WORKDIR /app

# Instalar dependências
COPY package*.json ./
RUN npm ci

# Copiar código
COPY . .

# Build
RUN npm run build

# Porta 80
EXPOSE 80

# Iniciar
CMD ["sh", "-c", "export PORT=80 && export HOST=0.0.0.0 && node build"]
