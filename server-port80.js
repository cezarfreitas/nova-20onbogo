#!/usr/bin/env node

// Servidor customizado que força porta 80
import { handler } from './build/handler.js';
import { env as original_env } from './build/env.js';
import http from 'node:http';

// Função env personalizada que força PORT=80 e HOST=0.0.0.0
function env(key, fallback) {
  if (key === 'PORT') return '80';
  if (key === 'HOST') return '0.0.0.0';
  return original_env(key, fallback);
}

const host = '0.0.0.0';
const port = 80;

console.log('🚀 Starting Onbongo B2B on port 80...');
console.log(`📍 Environment: PORT=${port}, HOST=${host}`);

const server = http.createServer(handler);

server.listen(port, host, () => {
  console.log(`Listening on http://${host}:${port}`);
});

// Graceful shutdown
process.on('SIGTERM', () => {
  console.log('Received SIGTERM, shutting down gracefully...');
  server.close(() => {
    process.exit(0);
  });
});

process.on('SIGINT', () => {
  console.log('Received SIGINT, shutting down gracefully...');
  server.close(() => {
    process.exit(0);
  });
});
