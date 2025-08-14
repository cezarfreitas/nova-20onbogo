# 🚀 Deploy no EasyPanel - Onbongo B2B Landing Page

## Problema Identificado
O EasyPanel estava enviando SIGTERM continuamente, indicando problemas com health check ou conectividade.

## Solução Implementada

### Arquivos Criados/Otimizados:
- ✅ `Dockerfile.easypanel` - Dockerfile simplificado e robusto para EasyPanel
- ✅ `docker-compose.easypanel.yml` - Compose específico para testes locais
- ✅ `.dockerignore` - Otimizado para builds mais rápidos
- ✅ `deploy-easypanel.sh` - Script de deploy e teste local

## Configuração no EasyPanel

### 1. Configurações Básicas:
- **Dockerfile**: Use `Dockerfile.easypanel`
- **Porta**: `80`
- **Health Check Path**: `/`

### 2. Variáveis de Ambiente:
```
NODE_ENV=production
PORT=80
HOST=0.0.0.0
```

### 3. Configurações de Deploy:
- **Build Context**: Raiz do projeto (.)
- **Dockerfile Path**: `Dockerfile.easypanel`
- **Exposed Port**: 80
- **Health Check Timeout**: 30s
- **Health Check Interval**: 30s
- **Start Period**: 30s

## Teste Local (Opcional)

Para testar antes do deploy no EasyPanel:

```bash
# 1. Build da imagem
docker build -f Dockerfile.easypanel -t onbongo-easypanel .

# 2. Run do container
docker run -d \
  --name onbongo-test \
  -p 80:80 \
  -e NODE_ENV=production \
  -e PORT=80 \
  -e HOST=0.0.0.0 \
  onbongo-easypanel

# 3. Teste de conectividade
curl http://localhost:80

# 4. Cleanup
docker stop onbongo-test && docker rm onbongo-test
```

## Melhorias Implementadas

1. **Dockerfile Simplificado**: Removida complexidade desnecessária
2. **Start Script Integrado**: Script shell diretamente no Dockerfile
3. **Health Check Otimizado**: Configuração mais robusta para EasyPanel
4. **Build Otimizado**: .dockerignore melhorado para builds mais rápidos
5. **Logs Claros**: Mensagens informativas para debug

## Troubleshooting

### Se ainda houver problemas:

1. **Verifique os logs no EasyPanel**:
   - Procure por `🚀 Starting Onbongo B2B for EasyPanel on port 80...`
   - Se aparecer, a aplicação está iniciando corretamente

2. **Health Check**:
   - Certifique-se que o health check está configurado para `http://localhost:80/`
   - Timeout de pelo menos 30 segundos

3. **Recursos**:
   - Memória mínima: 512MB
   - CPU mínima: 0.5 cores

4. **Rede**:
   - Certifique-se que a porta 80 está exposta corretamente
   - Verifique se não há conflitos de porta

## Status Final
- ✅ Aplicação roda na porta 80
- ✅ Health check configurado
- ✅ Logs informativos
- ✅ Build otimizado
- ✅ Dockerfile específico para EasyPanel

A aplicação deve agora deployar corretamente no EasyPanel sem os problemas de SIGTERM.
