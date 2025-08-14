#!/usr/bin/env node

// Verificar se o build está correto
import fs from 'fs';
import path from 'path';

console.log('🔍 Verificando build...');

const buildPath = './build';
const requiredFiles = ['index.js', 'handler.js'];

if (!fs.existsSync(buildPath)) {
  console.error('❌ Diretório build não existe!');
  process.exit(1);
}

let allFilesExist = true;

requiredFiles.forEach(file => {
  const filePath = path.join(buildPath, file);
  if (fs.existsSync(filePath)) {
    console.log(`✅ ${file} existe`);
  } else {
    console.error(`❌ ${file} não encontrado!`);
    allFilesExist = false;
  }
});

console.log('\n📁 Conteúdo do build:');
fs.readdirSync(buildPath).forEach(file => {
  console.log(`  - ${file}`);
});

if (allFilesExist) {
  console.log('\n✅ Build está correto!');
} else {
  console.error('\n❌ Build tem problemas!');
  process.exit(1);
}
