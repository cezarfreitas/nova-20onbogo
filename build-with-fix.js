#!/usr/bin/env node

// Script que faz build e aplica fix da porta automaticamente
import { spawn } from 'child_process';
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

console.log('🔨 Iniciando build com correção automática de porta...');

// 1. Executa o build normal
const buildProcess = spawn('npm', ['run', 'build'], {
  stdio: 'inherit',
  shell: true
});

buildProcess.on('close', (code) => {
  if (code !== 0) {
    console.error('❌ Build falhou');
    process.exit(1);
  }
  
  console.log('✅ Build concluído, aplicando correções...');
  
  // 2. Aplica as correções no build
  const buildIndexPath = path.join(__dirname, 'build', 'index.js');
  
  if (fs.existsSync(buildIndexPath)) {
    let buildContent = fs.readFileSync(buildIndexPath, 'utf8');
    
    // Correções específicas para SvelteKit
    const corrections = [
      // Força porta 80 na linha específica do SvelteKit
      [/const port = env\('PORT', !path && '3000'\);/g, "const port = '80';"],
      [/const port = env\('PORT', !path && \"3000\"\);/g, "const port = '80';"],
      [/!path && '3000'/g, "'80'"],
      [/!path && "3000"/g, '"80"'],
      // Substituições gerais
      [/'3000'/g, "'80'"],
      [/"3000"/g, '"80"'],
      [/\b3000\b/g, "80"]
    ];
    
    let modified = false;
    corrections.forEach(([pattern, replacement]) => {
      const before = buildContent;
      buildContent = buildContent.replace(pattern, replacement);
      if (before !== buildContent) {
        modified = true;
        console.log(`✅ Aplicada correção: ${pattern}`);
      }
    });
    
    if (modified) {
      fs.writeFileSync(buildIndexPath, buildContent);
      console.log('💾 Build corrigido para porta 80');
    }
    
    console.log('🎉 Build pronto para EasyPanel na porta 80!');
  } else {
    console.error('❌ Arquivo build não encontrado');
    process.exit(1);
  }
});

buildProcess.on('error', (error) => {
  console.error('❌ Erro no processo de build:', error);
  process.exit(1);
});
