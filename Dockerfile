FROM node:20-alpine

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

RUN npm run build

EXPOSE 80

# Força a variável PORT a existir no ambiente
ENV PORT=80
ENV HOST=0.0.0.0

CMD ["npm", "start"]
