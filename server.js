// server.js - Configuração simples para EasyPanel
import express from 'express';
import { handler } from './build/handler.js';

const app = express();

// Configuração básica para proxy
app.set('trust proxy', true);

// Usa o handler do SvelteKit diretamente
app.use(handler);

// Configuração da porta
const port = process.env.PORT || 80;
const host = process.env.HOST || '0.0.0.0';

console.log(`🚀 Iniciando Onbongo B2B na porta ${port}...`);

app.listen(port, host, () => {
  console.log(`✅ Servidor rodando em http://${host}:${port}`);
});
