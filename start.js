#!/usr/bin/env node

// Script personalizado para garantir que a aplicação rode na porta 80

// FORÇA as variáveis de ambiente ANTES de qualquer importação
process.env.PORT = '80';
process.env.HOST = '0.0.0.0';

console.log('🚀 Starting Onbongo B2B on port 80...');
console.log(`📍 Environment: PORT=${process.env.PORT}, HOST=${process.env.HOST}`);

// Importa e executa o servidor SvelteKit diretamente
import('./build/index.js').then(() => {
  console.log('✅ SvelteKit server started successfully!');
}).catch((err) => {
  console.error('❌ Failed to start server:', err);
  process.exit(1);
});
