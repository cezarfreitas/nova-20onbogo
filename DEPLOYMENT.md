# 🚀 Onbongo B2B - Guia de Deploy

Este guia explica como fazer o deploy da aplicação Onbongo B2B usando Docker.

## 📋 Pré-requisitos

- Docker 20.10+
- Docker Compose 2.0+
- 2GB RAM mínimo
- 10GB espaço em disco

## 🔧 Configuração Inicial

### 1. Clone o repositório
```bash
git clone <repository-url>
cd onbongo-b2b
```

### 2. Configure as variáveis de ambiente
```bash
cp .env.production.template .env.production
# Edite .env.production com suas configurações
```

### 3. Instale as dependências
```bash
npm install
```

### 4. Corrigir dependências (Se necessário)
```bash
# Se encontrar problemas de dependências
chmod +x fix-deps.sh
./fix-deps.sh
```

### 5. Teste o build (Opcional)
```bash
# Testa diferentes estratégias de build
chmod +x build-test.sh
./build-test.sh
```

## 🐳 Deploy com Docker

### Método 1: Script Automático (Recomendado)
```bash
# Torne o script executável
chmod +x deploy.sh

# Execute o deploy
./deploy.sh
```

### Método 2: Docker Compose
```bash
# Build e start dos serviços
docker-compose up -d

# Para parar
docker-compose down
```

### Método 3: Docker Manual
```bash
# Build da imagem
docker build -t onbongo-b2b:latest .

# Run do container
docker run -d \
  --name onbongo-app \
  -p 3000:3000 \
  -e NODE_ENV=production \
  --restart unless-stopped \
  onbongo-b2b:latest
```

## 🌐 Nginx (Opcional)

Para usar com proxy reverso Nginx:

```bash
# Com Nginx incluído
docker-compose up -d

# Aplicação estará disponível em:
# - HTTP: http://localhost
# - HTTPS: https://localhost (configure SSL)
```

## 🔍 Verificação do Deploy

1. **Health Check**
   ```bash
   curl http://localhost:3000/
   ```

2. **Logs da aplicação**
   ```bash
   docker logs -f onbongo-app
   ```

3. **Status do container**
   ```bash
   docker ps
   ```

## 🛠 Comandos Úteis

### Gerenciamento do Container
```bash
# Parar aplicação
docker stop onbongo-app

# Iniciar aplicação
docker start onbongo-app

# Reiniciar aplicação
docker restart onbongo-app

# Remover container
docker rm onbongo-app

# Acessar shell do container
docker exec -it onbongo-app sh
```

### Logs e Monitoramento
```bash
# Ver logs em tempo real
docker logs -f onbongo-app

# Ver logs das últimas 100 linhas
docker logs --tail 100 onbongo-app

# Informações do container
docker inspect onbongo-app
```

### Limpeza
```bash
# Remover imagens não utilizadas
docker image prune

# Limpeza completa
docker system prune -a
```

## 🔐 Configuração de SSL (Produção)

### 1. Obter certificados SSL
```bash
# Usando Let's Encrypt (certbot)
certbot certonly --standalone -d onbongo-b2b.com.br
```

### 2. Configurar nginx.conf
Descomente e configure as seções HTTPS no `nginx.conf`.

### 3. Copiar certificados
```bash
mkdir ssl
cp /etc/letsencrypt/live/onbongo-b2b.com.br/fullchain.pem ssl/cert.pem
cp /etc/letsencrypt/live/onbongo-b2b.com.br/privkey.pem ssl/key.pem
```

## 📊 Monitoramento

### Health Checks
A aplicação inclui health checks automáticos:
- Docker: `wget --spider http://localhost:3000/`
- Nginx: endpoint `/health`

### Logs
- Aplicação: logs do container Docker
- Nginx: `/var/log/nginx/access.log` e `/var/log/nginx/error.log`

## 🚨 Troubleshooting

### Problemas Comuns

1. **Erro npm ci --only=production**
   ```bash
   # Se encontrar erro com --only=production, use Dockerfile.simple
   docker build -f Dockerfile.simple -t onbongo-b2b:latest .

   # Ou teste ambos os métodos
   ./build-test.sh
   ```

2. **Porta já em uso**
   ```bash
   # Verificar o que está usando a porta
   lsof -i :3000

   # Usar porta diferente
   docker run -p 3001:3000 onbongo-b2b:latest
   ```

2. **Erro de memória**
   ```bash
   # Aumentar limite de memória do Docker
   docker run --memory="1g" onbongo-b2b:latest
   ```

3. **Rebuild após mudanças**
   ```bash
   # Rebuild forçando novo build
   docker build --no-cache -t onbongo-b2b:latest .
   ```

### Verificação de Performance

```bash
# Uso de recursos do container
docker stats onbongo-app

# Informações da imagem
docker images onbongo-b2b
```

## 🔄 Atualizações

Para atualizar a aplicação:

```bash
# 1. Parar container atual
docker stop onbongo-app

# 2. Fazer pull das mudanças
git pull origin main

# 3. Rebuild e restart
./deploy.sh
```

## 📞 Suporte

Em caso de problemas:

1. Verifique os logs: `docker logs onbongo-app`
2. Teste a conectividade: `curl http://localhost:3000`
3. Verifique recursos: `docker stats`

## 🌍 URLs de Produção

- **Aplicação**: https://onbongo-b2b.com.br
- **Health Check**: https://onbongo-b2b.com.br/health
- **Status**: `docker ps -f name=onbongo-app`

---

**Nota**: Este é um ambiente de produção. Sempre teste em ambiente de desenvolvimento primeiro.
