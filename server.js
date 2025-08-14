#!/usr/bin/env node

// Servidor personalizado para garantir que roda na porta 80
import { Server } from 'SERVER';
import { manifest } from 'MANIFEST';
import { prerendered } from 'PRERENDERED';
import { base } from 'APP';

// Force port 80
process.env.PORT = process.env.PORT || '80';
process.env.HOST = process.env.HOST || '0.0.0.0';

const server = new Server(manifest, {
	env: process.env,
	prerendered
});

const PORT = parseInt(process.env.PORT, 10) || 80;
const HOST = process.env.HOST || '0.0.0.0';

server.listen(PORT, HOST, () => {
	console.log(`Listening on http://${HOST}:${PORT}`);
});
