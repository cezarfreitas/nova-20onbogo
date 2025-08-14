<script lang="ts">
	// Hero section component
</script>

<svelte:head>
	<title>Onbongo B2B - Seja um Lojista Oficial</title>
	<meta name="description" content="Aproveite a oportunidade de vender uma das maiores marcas do Brasil e do mundo." />
</svelte:head>

<main class="relative min-h-screen overflow-hidden">
	<!-- Background with red gradient and pattern -->
	<div class="absolute inset-0">
		<!-- Hero background image -->
		<img
			src="https://cdn.builder.io/api/v1/image/assets%2F3a038822502b49b39691cbaf44da5f95%2Fa86590b89c5940fab8fb45b82f272ac6?format=webp&width=1920"
			alt="Ecko streetwear model"
			class="absolute inset-0 w-full h-full object-cover"
		/>

		<!-- Black overlay for dramatic effect and readability -->
		<div class="absolute inset-0 bg-gradient-to-br from-black/70 via-black/60 to-black/80"></div>
		
		<!-- Ecko logo pattern scattered -->
		<div class="absolute inset-0 opacity-10">
			<div class="absolute top-20 left-20 text-white/20 text-8xl font-black transform rotate-12">onbongo</div>
			<div class="absolute top-60 right-32 text-white/20 text-6xl font-black transform -rotate-6">onbongo</div>
			<div class="absolute bottom-40 left-40 text-white/20 text-7xl font-black transform rotate-6">onbongo</div>
			<div class="absolute bottom-20 right-20 text-white/20 text-5xl font-black transform -rotate-12">onbongo</div>
		</div>
	</div>

	<!-- Hero content -->
	<div class="relative z-10 flex min-h-screen items-center justify-center px-4 sm:px-6 lg:px-8">
		<div class="w-full max-w-4xl text-center">
			<!-- Logo -->
			<div class="mb-8 flex justify-center">
				<img
					src="https://cdn.builder.io/api/v1/image/assets%2F3a038822502b49b39691cbaf44da5f95%2Fc62fef7dce734b60bd7ec4b40a59a8bd?format=webp&width=200"
					alt="Onbongo Logo"
					class="h-20 w-auto"
				/>
			</div>

			<!-- Subtitle -->
			<p class="mb-6 text-lg font-medium text-white/90 sm:text-xl">
				Aproveite a oportunidade de vender uma das maiores marcas do Brasil e do mundo.
			</p>

			<!-- Main headline -->
			<h1 class="mb-8 text-4xl font-black text-white sm:text-5xl lg:text-7xl xl:text-8xl">
				<span class="block">SEJA UM</span>
				<span class="block">LOJISTA OFICIAL</span>
				<span class="block text-white/95">ONBONGO</span>
			</h1>

			<!-- Description -->
			<p class="mb-12 text-lg font-medium text-white/80 sm:text-xl lg:text-2xl max-w-3xl mx-auto leading-relaxed">
				Cadastre-se agora e tenha acesso à nossa plataforma digital com<br />
				preços exclusivos para lojistas.
			</p>

			<!-- CTA Button -->
			<div class="flex justify-center">
				<button class="btn-primary group">
					Começar Agora!
					<svg class="h-5 w-5 transition-transform group-hover:translate-x-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
						<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3" />
					</svg>
				</button>
			</div>

			<!-- Additional info -->
			<div class="mt-16 text-center">
				<p class="text-sm font-medium text-white/60 uppercase tracking-wide">
					Marca líder em streetwear
				</p>
			</div>
		</div>
	</div>

	<!-- Floating elements for visual interest -->
	<div class="absolute inset-0 pointer-events-none overflow-hidden">
		<!-- Floating shapes -->
		<div class="absolute top-1/4 left-8 h-12 w-12 rounded-full bg-onbongo-orange/20 animate-pulse"></div>
		<div class="absolute top-1/3 right-12 h-8 w-8 rounded-full bg-onbongo-orange/25 animate-pulse delay-1000"></div>
		<div class="absolute bottom-1/4 left-16 h-10 w-10 rounded-full bg-onbongo-orange/20 animate-pulse delay-500"></div>
		<div class="absolute bottom-1/3 right-8 h-6 w-6 rounded-full bg-onbongo-orange/25 animate-pulse delay-1500"></div>
	</div>
</main>

<style>
	/* Custom animations for floating elements */
	@keyframes float {
		0%, 100% {
			transform: translateY(0px);
		}
		50% {
			transform: translateY(-20px);
		}
	}
	
	.animate-float {
		animation: float 6s ease-in-out infinite;
	}
</style>
