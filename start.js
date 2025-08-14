#!/usr/bin/env node

// Script personalizado para garantir que a aplicação rode na porta 80
import { spawn } from 'child_process';

// Força as variáveis de ambiente
process.env.PORT = '80';
process.env.HOST = '0.0.0.0';

console.log('🚀 Starting Onbongo B2B on port 80...');
console.log(`📍 Environment: PORT=${process.env.PORT}, HOST=${process.env.HOST}`);

// Inicia o servidor SvelteKit
const server = spawn('node', ['build/index.js'], {
  stdio: 'inherit',
  env: {
    ...process.env,
    PORT: '80',
    HOST: '0.0.0.0'
  }
});

server.on('close', (code) => {
  console.log(`Server process exited with code ${code}`);
  process.exit(code);
});

server.on('error', (err) => {
  console.error('Failed to start server:', err);
  process.exit(1);
});
