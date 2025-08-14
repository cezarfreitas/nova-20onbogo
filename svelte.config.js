import adapter from '@sveltejs/adapter-node';
import { vitePreprocess } from '@sveltejs/vite-plugin-svelte';

/** @type {import('@sveltejs/kit').Config} */
const config = {
	// Consult https://kit.svelte.dev/docs/integrations#preprocessors
	// for more information about preprocessors
	preprocess: vitePreprocess(),

	kit: {
		// adapter-auto only supports some environments, see https://kit.svelte.dev/docs/adapter-auto for a list.
		// If your environment is not supported or you settled on a specific environment, switch out the adapter.
		// See https://kit.svelte.dev/docs/adapters for more information about adapters.
		adapter: adapter({
			// default options are shown
			out: 'build',
			precompress: true,
			envPrefix: 'PUBLIC_',
			// Force port 80 for EasyPanel
			polyfill: false
		}),
		
		// Security and performance settings
		csrf: {
			checkOrigin: false, // Desabilitado para EasyPanel
		},
		
		// Enable service worker in production
		serviceWorker: {
			register: false
		},

		// Inline critical CSS
		inlineStyleThreshold: 1024
	}
};

export default config;
