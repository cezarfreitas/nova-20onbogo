# 🔧 Configuração EasyPanel - Onbongo B2B

## ✅ PROBLEMA RESOLVIDO

O erro estava acontecendo porque o EasyPanel estava usando o `Dockerfile` padrão que referenciava um arquivo inexistente. 

## Configuração no EasyPanel

### Opção 1: Usar Dockerfile padrão (RECOMENDADO)
Use as seguintes configurações no EasyPanel:

**Build Configuration:**
- **Dockerfile**: `Dockerfile` (padrão)
- **Build Context**: `.` (raiz do projeto)

**Environment Variables:**
```
NODE_ENV=production
PORT=80
HOST=0.0.0.0
```

**Container Configuration:**
- **Expose Port**: `80`
- **Health Check**: `http://localhost:80/`

### Opção 2: Usar Dockerfile específico para EasyPanel
Se preferir usar o Dockerfile otimizado:

**Build Configuration:**
- **Dockerfile**: `Dockerfile.easypanel`
- **Build Context**: `.` (raiz do projeto)

## Status dos Arquivos
- ✅ `Dockerfile` - Corrigido, funciona sem dependências extras
- ✅ `Dockerfile.easypanel` - Versão otimizada disponível
- ✅ Variáveis de ambiente configuradas para porta 80
- ✅ Build testado e funcionando

## Build Args (Opcional)
Você pode adicionar estes build args no EasyPanel se necessário:
```
PORT=80
GIT_SHA=${GIT_SHA}
```

## Troubleshooting

### Se ainda houver problemas:

1. **Limpe o cache do Docker** no EasyPanel
2. **Verifique se as variáveis de ambiente estão definidas**:
   - `NODE_ENV=production`
   - `PORT=80`
   - `HOST=0.0.0.0`
3. **Confirme que está usando a branch correta** (main)

## Resultado Esperado
Após o deploy, você deve ver nos logs:
```
Listening on http://0.0.0.0:80
```

## ✅ O deploy deve funcionar agora!
