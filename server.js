// server.js
import express from 'express';
import { handler } from './build/handler.js';

const app = express();

// Confia nos headers do proxy (necessário no EasyPanel/Nginx/Caddy)
app.set('trust proxy', true);

// Middleware para ajustar PUBLIC_ORIGIN automaticamente
app.use((req, res, next) => {
  // Se não houver variável PUBLIC_ORIGIN definida no ambiente,
  // define dinamicamente com base no request recebido
  if (!process.env.PUBLIC_ORIGIN) {
    const protocol = req.headers['x-forwarded-proto'] || req.protocol;
    const host = req.headers['x-forwarded-host'] || req.headers.host;
    process.env.PUBLIC_ORIGIN = `${protocol}://${host}`;
  }
  next();
});

// Usa o handler do SvelteKit
app.use(handler);

// Porta e host
const port = process.env.PORT || 80;
const host = process.env.HOST || '0.0.0.0';

app.listen(port, host, () => {
  console.log(`Servidor rodando em http://${host}:${port}`);
});
