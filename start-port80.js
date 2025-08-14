#!/usr/bin/env node

// Script que FORÇA a porta 80 definitivamente
const fs = require('fs');
const path = require('path');

// 1. Força as variáveis de ambiente ANTES de qualquer coisa
process.env.PORT = '80';
process.env.HOST = '0.0.0.0';
process.env.NODE_ENV = 'production';

console.log('🚀 Script de inicialização forçada para porta 80');
console.log(`📍 PORT forcefully set to: ${process.env.PORT}`);
console.log(`📍 HOST forcefully set to: ${process.env.HOST}`);

// 2. Modifica o arquivo de build em tempo real se necessário
const buildIndexPath = path.join(__dirname, 'build', 'index.js');

if (fs.existsSync(buildIndexPath)) {
  let buildContent = fs.readFileSync(buildIndexPath, 'utf8');
  
  // Substitui qualquer referência à porta 3000 por 80
  buildContent = buildContent.replace(/!path && '3000'/g, "'80'");
  buildContent = buildContent.replace(/'3000'/g, "'80'");
  buildContent = buildContent.replace(/3000/g, "80");
  
  fs.writeFileSync(buildIndexPath, buildContent);
  console.log('✅ Build modificado para forçar porta 80');
}

// 3. Inicia o servidor
console.log('🚀 Iniciando servidor na porta 80...');

// Importa e inicia dinamicamente
import('./build/index.js').then(() => {
  console.log('✅ Servidor iniciado com sucesso na porta 80!');
}).catch((error) => {
  console.error('❌ Erro ao iniciar servidor:', error);
  process.exit(1);
});
