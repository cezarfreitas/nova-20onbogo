# 🎯 DEPLOY EASYPANEL - INSTRUÇÕES FINAIS

## 📋 DUAS OPÇÕES PARA TESTAR:

### ✅ OPÇÃO 1: Dockerfile Principal
```
Dockerfile: Dockerfile
Environment: PORT=80, HOST=0.0.0.0, NODE_ENV=production
```

### 🔄 OPÇÃO 2: Dockerfile Alternativo  
```
Dockerfile: Dockerfile.easypanel
Environment: NODE_ENV=production
```

## 🎯 CONFIGURAÇÃO NO EASYPANEL:

### Básico:
- **Build Context**: `.` (raiz)
- **Porta**: `80`
- **Health Check**: `/`

### Environment Variables:
```
NODE_ENV=production
PORT=80
HOST=0.0.0.0
```

## 📊 O QUE CADA ARQUIVO FAZ:

### `Dockerfile` (Principal):
- Build básico
- `CMD ["sh", "-c", "export PORT=80 && export HOST=0.0.0.0 && node build"]`
- Força as variáveis no comando

### `Dockerfile.easypanel` (Alternativo):
- Usa script `start.sh`
- Script exporta variáveis e executa `node build`
- Mais robusto para Alpine Linux

### `start.sh`:
- Script shell que força PORT=80
- Logs informativos
- `exec node build`

## 🚀 TESTE AS DUAS OPÇÕES:

1. **Primeiro**: Tente com `Dockerfile` padrão
2. **Se falhar**: Troque para `Dockerfile.easypanel`

## ✅ SUCESSO ESPERADO:
```
🚀 Iniciando Onbongo B2B...
📍 PORT: 80
📍 HOST: 0.0.0.0
Listening on http://0.0.0.0:80
```

## 🎯 ESTA CONFIGURAÇÃO É O MAIS SIMPLES POSSÍVEL!
