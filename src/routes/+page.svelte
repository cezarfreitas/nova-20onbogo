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

<!-- Registration Section -->
<section class="bg-black py-20 px-4 sm:px-6 lg:px-8">
	<div class="max-w-7xl mx-auto">
		<div class="grid lg:grid-cols-2 gap-16 items-start">
			<!-- Left Side - Benefits -->
			<div class="text-white lg:sticky lg:top-8">
				<h2 class="text-3xl md:text-4xl lg:text-5xl font-black mb-4 leading-tight">
					SEJA UM<br/>
					<span class="text-onbongo-orange">LOJISTA OFICIAL</span><br/>
					ONBONGO
				</h2>

				<p class="text-lg text-white/70 mb-12 leading-relaxed">
					Junte-se aos melhores lojistas do Brasil e tenha acesso exclusivo aos produtos da marca líder em streetwear.
				</p>

				<div class="space-y-6">
					<!-- Benefit 1 -->
					<div class="flex items-start gap-4 group">
						<div class="flex-shrink-0 w-12 h-12 rounded-xl bg-gradient-to-br from-onbongo-orange to-onbongo-orange-dark flex items-center justify-center shadow-lg group-hover:scale-105 transition-transform">
							<svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
								<path d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"/>
							</svg>
						</div>
						<div>
							<h3 class="font-bold text-xl mb-2 text-white">Marca Internacional</h3>
							<p class="text-white/70 leading-relaxed">Representa uma marca de streetwear reconhecida mundialmente com mais de 30 anos de história.</p>
						</div>
					</div>

					<!-- Benefit 2 -->
					<div class="flex items-start gap-4 group">
						<div class="flex-shrink-0 w-12 h-12 rounded-xl bg-gradient-to-br from-onbongo-orange to-onbongo-orange-dark flex items-center justify-center shadow-lg group-hover:scale-105 transition-transform">
							<svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
								<path fill-rule="evenodd" d="M3 4a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zm0 4a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zm0 4a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z" clip-rule="evenodd"/>
							</svg>
						</div>
						<div>
							<h3 class="font-bold text-xl mb-2 text-white">Pronta Entrega</h3>
							<p class="text-white/70 leading-relaxed">Mais de 100.000 itens disponíveis para envio imediato em todo o Brasil.</p>
						</div>
					</div>

					<!-- Benefit 3 -->
					<div class="flex items-start gap-4 group">
						<div class="flex-shrink-0 w-12 h-12 rounded-xl bg-gradient-to-br from-onbongo-orange to-onbongo-orange-dark flex items-center justify-center shadow-lg group-hover:scale-105 transition-transform">
							<svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
								<path fill-rule="evenodd" d="M3 5a2 2 0 012-2h10a2 2 0 012 2v8a2 2 0 01-2 2h-2.22l.123.489.804.804A1 1 0 0113 18H7a1 1 0 01-.707-1.707l.804-.804L7.22 15H5a2 2 0 01-2-2V5zm5.771 7H5V5h10v7H8.771z" clip-rule="evenodd"/>
							</svg>
						</div>
						<div>
							<h3 class="font-bold text-xl mb-2 text-white">Plataforma Digital</h3>
							<p class="text-white/70 leading-relaxed">Acesse nosso catálogo digital 24/7 com preços exclusivos para lojistas.</p>
						</div>
					</div>

					<!-- Benefit 4 -->
					<div class="flex items-start gap-4 group">
						<div class="flex-shrink-0 w-12 h-12 rounded-xl bg-gradient-to-br from-onbongo-orange to-onbongo-orange-dark flex items-center justify-center shadow-lg group-hover:scale-105 transition-transform">
							<svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
								<path d="M13 6a3 3 0 11-6 0 3 3 0 016 0zM18 8a2 2 0 11-4 0 2 2 0 014 0zM14 15a4 4 0 00-8 0v3h8v-3z"/>
							</svg>
						</div>
						<div>
							<h3 class="font-bold text-xl mb-2 text-white">Suporte Completo</h3>
							<p class="text-white/70 leading-relaxed">Treinamento, materiais de marketing e suporte comercial especializado.</p>
						</div>
					</div>
				</div>

			</div>

			<!-- Right Side - Registration Form -->
			<div class="bg-gradient-to-br from-onbongo-orange to-onbongo-orange-dark rounded-3xl p-8 shadow-2xl border border-onbongo-orange-light/20">
				<div class="text-center mb-8">
					<h3 class="text-white text-3xl font-black mb-2">
						Cadastre-se Agora
					</h3>
					<p class="text-white/90 text-sm">
						Comece sua jornada como lojista oficial Onbongo
					</p>
				</div>

				<form class="space-y-6">
					<!-- Nome Completo -->
					<div class="space-y-2">
						<label for="nome" class="block text-white font-semibold text-sm">Nome Completo *</label>
						<input
							type="text"
							id="nome"
							placeholder="Seu nome completo"
							required
							class="w-full px-4 py-3 rounded-xl border-0 focus:outline-none focus:ring-3 focus:ring-white/30 text-gray-900 placeholder:text-gray-500 shadow-inner"
						/>
					</div>


					<!-- WhatsApp -->
					<div class="space-y-2">
						<label for="whatsapp" class="block text-white font-semibold text-sm">WhatsApp *</label>
						<input
							type="tel"
							id="whatsapp"
							placeholder="(11) 99999-9999"
							required
							class="w-full px-4 py-3 rounded-xl border-0 focus:outline-none focus:ring-3 focus:ring-white/30 text-gray-900 placeholder:text-gray-500 shadow-inner"
						/>
					</div>


					<!-- Tipo de Cadastro -->
					<div class="space-y-4">
						<label class="block text-white font-semibold text-sm">Tipo de Cadastro *</label>
						<div class="space-y-3">
							<label class="flex items-center gap-3 p-3 rounded-xl bg-white/10 cursor-pointer hover:bg-white/20 transition-colors">
								<input
									type="radio"
									name="tipo_cadastro"
									value="lojista"
									class="w-5 h-5 text-onbongo-orange focus:ring-white/30 focus:ring-2"
									required
								/>
								<div>
									<span class="text-white font-medium">Sou Lojista</span>
									<p class="text-white/70 text-xs">Tenho CNPJ e quero revender</p>
								</div>
							</label>
							<label class="flex items-center gap-3 p-3 rounded-xl bg-white/10 cursor-pointer hover:bg-white/20 transition-colors">
								<input
									type="radio"
									name="tipo_cadastro"
									value="consumidor"
									class="w-5 h-5 text-onbongo-orange focus:ring-white/30 focus:ring-2"
									required
								/>
								<div>
									<span class="text-white font-medium">Sou Consumidor</span>
									<p class="text-white/70 text-xs">Quero comprar para uso próprio</p>
								</div>
							</label>
						</div>
					</div>

					<!-- Submit Button -->
					<button
						type="submit"
						class="w-full bg-black text-white font-bold py-4 px-6 rounded-xl hover:bg-gray-900 active:scale-95 transition-all duration-200 flex items-center justify-center gap-3 shadow-xl mt-8"
					>
						<svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
							<path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
						</svg>
						<span>Começar Agora!</span>
						<svg class="w-4 h-4 transition-transform group-hover:translate-x-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
							<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6"/>
						</svg>
					</button>

					<!-- Privacy note -->
					<p class="text-white/60 text-xs text-center leading-relaxed">
						Ao se cadastrar, você concorda com nossos
						<a href="#" class="text-white underline hover:no-underline">Termos de Uso</a> e
						<a href="#" class="text-white underline hover:no-underline">Política de Privacidade</a>
					</p>
				</form>
			</div>
		</div>
	</div>
</section>

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
