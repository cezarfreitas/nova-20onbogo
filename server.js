// server.js
import express from 'express';
import { handler } from './build/handler.js';

const app = express();

// Configuração para proxies (EasyPanel)
app.set('trust proxy', true);

// Usa o handler do SvelteKit
app.use(handler);

// Força porta 80 no EasyPanel (ou lê de variável de ambiente)
const port = process.env.PORT || 80;
const host = process.env.HOST || '0.0.0.0';

app.listen(port, host, () => {
  console.log(`Servidor rodando em http://${host}:${port}`);
});
