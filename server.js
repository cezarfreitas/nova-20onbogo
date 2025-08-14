#!/usr/bin/env node

// Servidor personalizado para garantir que roda na porta 80
import { handler } from './build/handler.js';
import express from 'express';

const app = express();

// Use a porta 80 por padrão ou a variável de ambiente PORT
const port = process.env.PORT || 80;
const host = process.env.HOST || '0.0.0.0';

// Use SvelteKit handler
app.use(handler);

app.listen(port, host, () => {
	console.log(`Listening on http://${host}:${port}`);
});
