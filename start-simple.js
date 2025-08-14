#!/usr/bin/env node

// Script ultra-simples para forçar porta 80
import process from 'process';

// Força as variáveis de ambiente
process.env.PORT = '80';
process.env.HOST = '0.0.0.0';
process.env.NODE_ENV = 'production';

console.log('🚀 Iniciando Onbongo B2B para EasyPanel...');
console.log(`📍 Porta forçada: ${process.env.PORT}`);
console.log(`📍 Host forçado: ${process.env.HOST}`);

// Importa e inicia o servidor SvelteKit
try {
  console.log('🚀 Carregando servidor...');
  await import('./build/index.js');
} catch (error) {
  console.error('❌ Erro ao iniciar:', error);
  process.exit(1);
}
