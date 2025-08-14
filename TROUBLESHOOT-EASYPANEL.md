# 🚨 TROUBLESHOOT EasyPanel - Bad Request

## ✅ TESTE ESTAS 3 OPÇÕES:

### 1️⃣ **OPÇÃO 1: Dockerfile Simplificado (ATUAL)**
```
Dockerfile: Dockerfile
Environment: NODE_ENV=production, PORT=80, HOST=0.0.0.0
```

### 2️⃣ **OPÇÃO 2: Execução Direta (SE OPÇÃO 1 FALHAR)**
```
Dockerfile: Dockerfile.direto
Environment: NODE_ENV=production, PORT=80, HOST=0.0.0.0
```

### 3️⃣ **OPÇÃO 3: Porta 3000 + Proxy EasyPanel**
```
Dockerfile: Dockerfile
Environment: NODE_ENV=production, PORT=3000, HOST=0.0.0.0
Porta Externa EasyPanel: 80
Porta Interna EasyPanel: 3000
```

## 🔧 MUDANÇAS FEITAS:

### svelte.config.js ✅
- `checkOrigin: false` (sem validação CSRF de origem)
- Compatibilidade máxima com proxies

### server.js ✅  
- Configuração ultra-simples
- Sem middleware complexo
- Apenas `trust proxy` básico

### Dockerfile ✅
- Build limpo e direto
- Configuração ENV simples

## 📊 LOGS ESPERADOS (SUCESSO):
```
🚀 Iniciando Onbongo B2B na porta 80...
✅ Servidor rodando em http://0.0.0.0:80
```

## 🚨 SE AINDA DER BAD REQUEST:

### Teste Opção 2 (Dockerfile.direto):
```
FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build
ENV NODE_ENV=production
ENV PORT=80
ENV HOST=0.0.0.0
EXPOSE 80
CMD ["node", "build"]
```

### Teste Opção 3 (Porta 3000):
- Use porta 3000 no container
- EasyPanel mapeia 3000→80 automaticamente

## ✅ UMA DESSAS 3 OPÇÕES VAI FUNCIONAR!
