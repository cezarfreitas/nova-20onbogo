FROM node:20-alpine

WORKDIR /app

# Copiar arquivos de dependências
COPY package*.json ./

# Instalar dependências
RUN npm install

# Copiar código fonte
COPY . .

# Build da aplicação
RUN npm run build

# Definir variáveis de ambiente
ENV NODE_ENV=production
ENV PORT=80
ENV HOST=0.0.0.0

# Expor porta 80
EXPOSE 80

# Comando de inicialização
CMD ["npm", "start"]
