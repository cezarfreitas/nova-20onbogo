#!/usr/bin/env node

// Servidor customizado que FORÇA porta 80
import { handler } from './build/handler.js';
import express from 'express';

console.log('🚀 Iniciando servidor customizado Onbongo...');

const app = express();

// FORÇA porta 80 - sem escapatória
const PORT = 80;
const HOST = '0.0.0.0';

console.log(`📍 Configuração FORÇADA: PORT=${PORT}, HOST=${HOST}`);

// Middleware para logs
app.use((req, res, next) => {
  console.log(`${new Date().toISOString()} - ${req.method} ${req.url}`);
  next();
});

// Use SvelteKit handler para todas as rotas
app.use(handler);

// Health check específico
app.get('/health', (req, res) => {
  res.status(200).json({ 
    status: 'ok', 
    port: PORT,
    timestamp: new Date().toISOString()
  });
});

// Inicia o servidor
const server = app.listen(PORT, HOST, () => {
  console.log(`✅ Servidor rodando em http://${HOST}:${PORT}`);
  console.log(`🎯 EasyPanel: Aplicação configurada para porta ${PORT}`);
});

// Graceful shutdown
process.on('SIGTERM', () => {
  console.log('📨 Recebido SIGTERM, fechando servidor...');
  server.close(() => {
    console.log('✅ Servidor fechado gracefully');
    process.exit(0);
  });
});

process.on('SIGINT', () => {
  console.log('📨 Recebido SIGINT, fechando servidor...');
  server.close(() => {
    console.log('✅ Servidor fechado gracefully');
    process.exit(0);
  });
});

// Error handling
process.on('uncaughtException', (error) => {
  console.error('❌ Uncaught Exception:', error);
  process.exit(1);
});

process.on('unhandledRejection', (reason, promise) => {
  console.error('❌ Unhandled Rejection at:', promise, 'reason:', reason);
  process.exit(1);
});
