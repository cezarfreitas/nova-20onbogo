/** @type {import('tailwindcss').Config} */
export default {
	content: ['./src/**/*.{html,js,svelte,ts}'],
	theme: {
		extend: {
			colors: {
				onbongo: {
					orange: '#FF6B00',
					'orange-dark': '#E55A00',
					'orange-light': '#FF8533',
					black: '#000000',
					white: '#FFFFFF'
				}
			},
			fontFamily: {
				sans: ['Inter', 'ui-sans-serif', 'system-ui', '-apple-system', 'BlinkMacSystemFont', 'Segoe UI', 'Roboto', 'Helvetica Neue', 'Arial', 'Noto Sans', 'sans-serif']
			}
		}
	},
	plugins: []
};
