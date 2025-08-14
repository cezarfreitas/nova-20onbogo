// app.js - Servidor SvelteKit puro (sem Express)
import { handler } from './build/handler.js';
import { env } from './build/env.js';
import http from 'node:http';

// Força as configurações para EasyPanel
process.env.PORT = '80';
process.env.HOST = '0.0.0.0';
process.env.NODE_ENV = 'production';

const port = 80;
const host = '0.0.0.0';

console.log('🚀 Iniciando Onbongo B2B (SvelteKit puro)...');
console.log(`📍 Porta: ${port}, Host: ${host}`);

// Criar servidor HTTP com handler SvelteKit
const server = http.createServer(handler);

server.listen(port, host, () => {
  console.log(`✅ Servidor rodando em http://${host}:${port}`);
});

// Error handling
server.on('error', (error) => {
  console.error('❌ Erro no servidor:', error);
  process.exit(1);
});
