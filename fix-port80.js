#!/usr/bin/env node

// Script DEFINITIVO que força porta 80 modificando o build
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

console.log('🔧 Iniciando correção definitiva para porta 80...');

// Caminho do arquivo de build
const buildIndexPath = path.join(__dirname, 'build', 'index.js');

if (fs.existsSync(buildIndexPath)) {
  console.log('📁 Arquivo build/index.js encontrado');
  
  let buildContent = fs.readFileSync(buildIndexPath, 'utf8');
  let modified = false;
  
  // Substituições mais agressivas
  const replacements = [
    [/!path && '3000'/g, "'80'"],
    [/'3000'/g, "'80'"],
    [/"3000"/g, '"80"'],
    [/3000/g, "80"],
    [/env\('PORT',\s*'3000'\)/g, "env('PORT', '80')"],
    [/env\('PORT',\s*"3000"\)/g, 'env(\'PORT\', \'80\')'],
    [/env\('PORT',\s*3000\)/g, "env('PORT', '80')"],
    [/const port = env\('PORT'[^)]*\)/g, "const port = '80'"],
    [/let port = env\('PORT'[^)]*\)/g, "let port = '80'"],
    [/var port = env\('PORT'[^)]*\)/g, "var port = '80'"]
  ];
  
  replacements.forEach(([pattern, replacement]) => {
    const originalContent = buildContent;
    buildContent = buildContent.replace(pattern, replacement);
    if (originalContent !== buildContent) {
      modified = true;
      console.log(`✅ Aplicada substituição: ${pattern} -> ${replacement}`);
    }
  });
  
  if (modified) {
    fs.writeFileSync(buildIndexPath, buildContent);
    console.log('💾 Build modificado e salvo com porta 80 forçada');
  } else {
    console.log('⚠️  Nenhuma modificação necessária');
  }
} else {
  console.log('❌ Arquivo build/index.js não encontrado');
}

// Força as vari��veis de ambiente
process.env.PORT = '80';
process.env.HOST = '0.0.0.0';
process.env.NODE_ENV = 'production';

console.log('🚀 Iniciando servidor com configurações:');
console.log(`   PORT: ${process.env.PORT}`);
console.log(`   HOST: ${process.env.HOST}`);
console.log(`   NODE_ENV: ${process.env.NODE_ENV}`);

// Inicia o servidor
try {
  await import('./build/index.js');
  console.log('✅ Servidor iniciado com sucesso na porta 80!');
} catch (error) {
  console.error('❌ Erro ao iniciar servidor:', error);
  process.exit(1);
}
