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
						<span>Come��ar Agora!</span>
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

<!-- Gallery Section -->
<section class="bg-white py-20 px-4 sm:px-6 lg:px-8">
	<div class="max-w-7xl mx-auto">
		<!-- Section Header -->
		<div class="text-center mb-16">
			<h2 class="text-4xl md:text-5xl lg:text-6xl font-black text-black mb-4">
				Coleções Exclusivas
				<span class="text-onbongo-orange block">Onbongo</span>
			</h2>
			<p class="text-lg text-gray-600 max-w-2xl mx-auto leading-relaxed">
				Descubra as coleções oficiais Onbongo, com design autêntico e qualidade premium.
				Produtos únicos que valorizam sua loja e encantam seus clientes.
			</p>
		</div>

		<!-- Gallery Grid -->
		<div class="grid grid-cols-2 md:grid-cols-4 gap-4 mb-12">
			<!-- Row 1 -->
			<div class="aspect-square rounded-2xl overflow-hidden bg-gray-100 group cursor-pointer">
				<img
					src="https://cdn.builder.io/api/v1/image/assets%2F3a038822502b49b39691cbaf44da5f95%2Fa099ce9a3ce740febf1b3044c2580285?format=webp&width=400"
					alt="Coleção Onbongo - Look Streetwear"
					class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
				/>
			</div>
			<div class="aspect-square rounded-2xl overflow-hidden bg-gray-100 group cursor-pointer">
				<img
					src="https://cdn.builder.io/api/v1/image/assets%2F3a038822502b49b39691cbaf44da5f95%2F48e791eeed6d4443b12b0a089eb3a019?format=webp&width=400"
					alt="Coleção Onbongo - Trio Urbano"
					class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
				/>
			</div>
			<div class="aspect-square rounded-2xl overflow-hidden bg-gray-100 group cursor-pointer">
				<img
					src="https://cdn.builder.io/api/v1/image/assets%2F3a038822502b49b39691cbaf44da5f95%2Fe483117522274031aec388eb26efa263?format=webp&width=400"
					alt="Coleção Onbongo - Street Style"
					class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
				/>
			</div>
			<div class="aspect-square rounded-2xl overflow-hidden bg-gray-100 group cursor-pointer">
				<img
					src="https://cdn.builder.io/api/v1/image/assets%2F3a038822502b49b39691cbaf44da5f95%2F381e0b268ba64f6d863d2ffc31efe613?format=webp&width=400"
					alt="Coleção Onbongo - Camiseta Amarela"
					class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
				/>
			</div>

			<!-- Row 2 -->
			<div class="aspect-square rounded-2xl overflow-hidden bg-gray-100 group cursor-pointer">
				<img
					src="https://cdn.builder.io/api/v1/image/assets%2F3a038822502b49b39691cbaf44da5f95%2F702cecb9d1624205b9743c250391fb28?format=webp&width=400"
					alt="Coleção Onbongo - Look Colorido"
					class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
				/>
			</div>
			<div class="aspect-square rounded-2xl overflow-hidden bg-gray-100 group cursor-pointer">
				<img
					src="https://cdn.builder.io/api/v1/image/assets%2F3a038822502b49b39691cbaf44da5f95%2Fc870b8e2e0a5441b820c6270decb2a87?format=webp&width=400"
					alt="Coleção Onbongo - Style Urbano"
					class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
				/>
			</div>
			<div class="aspect-square rounded-2xl overflow-hidden bg-gray-100 group cursor-pointer">
				<img
					src="https://cdn.builder.io/api/v1/image/assets%2F3a038822502b49b39691cbaf44da5f95%2Fffc7286166654cc88333a15ec5d2a758?format=webp&width=400"
					alt="Coleção Onbongo - Moletom Azul"
					class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
				/>
			</div>
			<div class="aspect-square rounded-2xl overflow-hidden bg-gray-100 group cursor-pointer">
				<img
					src="https://cdn.builder.io/api/v1/image/assets%2F3a038822502b49b39691cbaf44da5f95%2F91d49d8c2fe24f8794eb74eb6d4d66ca?format=webp&width=400"
					alt="Coleção Onbongo - T-shirt Vermelha"
					class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
				/>
			</div>
		</div>

		<!-- CTA Button -->
		<div class="text-center">
			<button class="bg-onbongo-orange hover:bg-onbongo-orange-dark text-white font-bold py-4 px-8 rounded-xl transition-all duration-200 hover:scale-105 shadow-lg inline-flex items-center gap-3">
				<svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
					<path d="M13 6a3 3 0 11-6 0 3 3 0 016 0zM18 8a2 2 0 11-4 0 2 2 0 014 0zM14 15a4 4 0 00-8 0v3h8v-3z"/>
				</svg>
				Quero Ser Lojista Oficial
				<svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
					<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6"/>
				</svg>
			</button>
		</div>

	</div>
</section>

<!-- Brand History Section -->
<section class="bg-gray-50 py-20 px-4 sm:px-6 lg:px-8">
	<div class="max-w-7xl mx-auto">
		<div class="grid lg:grid-cols-2 gap-16 items-center">
			<!-- Left Side - History Content -->
			<div>
				<h2 class="text-4xl md:text-5xl lg:text-6xl font-black text-black mb-6 leading-tight">
					História da Marca
					<span class="text-onbongo-orange block">Onbongo</span>
				</h2>

				<div class="space-y-6 text-gray-700 leading-relaxed">
					<p class="text-lg">
						Nascida nas ruas do Brasil em 1993, a Onbongo chegou ao país para revolucionar o streetwear nacional.
						Mais que uma marca, somos um movimento cultural que une música, arte urbana e moda autêntica.
					</p>

					<p class="text-lg">
						De grafites nas paredes às passarelas, nossa essência permanece a mesma: criar produtos que expressam a
						identidade e atitude da nova geração. Cada peça conta uma história, cada design carrega a alma das ruas.
					</p>
				</div>

				<!-- Statistics -->
				<div class="grid grid-cols-2 gap-8 mt-12">
					<div class="text-center">
						<div class="text-4xl md:text-5xl font-black text-onbongo-orange mb-2">30+</div>
						<div class="text-gray-600 font-semibold text-sm uppercase tracking-wide">Anos de História</div>
					</div>
					<div class="text-center">
						<div class="text-4xl md:text-5xl font-black text-onbongo-orange mb-2">500+</div>
						<div class="text-gray-600 font-semibold text-sm uppercase tracking-wide">Lojistas Parceiros</div>
					</div>
					<div class="text-center">
						<div class="text-4xl md:text-5xl font-black text-onbongo-orange mb-2">1M+</div>
						<div class="text-gray-600 font-semibold text-sm uppercase tracking-wide">Clientes Satisfeitos</div>
					</div>
					<div class="text-center">
						<div class="text-4xl md:text-5xl font-black text-onbongo-orange mb-2">#1</div>
						<div class="text-gray-600 font-semibold text-sm uppercase tracking-wide">Marca de Streetwear</div>
					</div>
				</div>
			</div>

			<!-- Right Side - Image -->
			<div class="relative">
				<div class="aspect-[4/5] rounded-3xl overflow-hidden shadow-2xl">
					<img
						src="https://cdn.builder.io/api/v1/image/assets%2F3a038822502b49b39691cbaf44da5f95%2Fbda72524d7f1493989088bc2b7d3ac1a?format=webp&width=600"
						alt="História da Marca Onbongo"
						class="w-full h-full object-cover"
					/>
				</div>

				<!-- Quote Badge -->
				<div class="absolute -bottom-6 -right-6 bg-white rounded-2xl p-6 shadow-xl border border-gray-100 max-w-sm">
					<div class="text-sm text-gray-600 italic leading-relaxed">
						"Desde 1993, conectando gerações através do streetwear autêntico"
					</div>
					<div class="mt-2 text-xs text-onbongo-orange font-semibold uppercase tracking-wide">
						Fundação Onbongo
					</div>
				</div>
			</div>
		</div>

		<!-- Bottom CTA -->
		<div class="mt-20 text-center">
			<div class="bg-black rounded-3xl p-12 text-white">
				<h3 class="text-3xl md:text-4xl font-black mb-4">
					Faça Parte da Nossa História
				</h3>
				<p class="text-white/80 text-lg mb-8 max-w-2xl mx-auto">
					Junte-se aos milhares de lojistas que já fazem parte da família Onbongo e levam
					o melhor do streetwear brasileiro para seus clientes.
				</p>
				<button class="bg-onbongo-orange hover:bg-onbongo-orange-dark text-white font-bold py-4 px-8 rounded-xl transition-all duration-200 hover:scale-105 shadow-lg inline-flex items-center gap-3">
					<svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
						<path d="M13 6a3 3 0 11-6 0 3 3 0 016 0zM18 8a2 2 0 11-4 0 2 2 0 014 0zM14 15a4 4 0 00-8 0v3h8v-3z"/>
					</svg>
					Começar Minha Jornada
					<svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
						<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6"/>
					</svg>
				</button>
			</div>
		</div>
	</div>
</section>

<!-- FAQ Section -->
<section class="bg-white py-20 px-4 sm:px-6 lg:px-8">
	<div class="max-w-4xl mx-auto">
		<!-- Section Header -->
		<div class="text-center mb-16">
			<h2 class="text-4xl md:text-5xl lg:text-6xl font-black text-black mb-4">
				Perguntas Frequentes
			</h2>
			<p class="text-lg text-gray-600 max-w-2xl mx-auto">
				Tire suas dúvidas sobre a parceria com a Onbongo
			</p>
		</div>

		<!-- FAQ List -->
		<div class="space-y-4 mb-12">
			<!-- FAQ Item 1 -->
			<details class="group bg-gray-50 rounded-2xl">
				<summary class="flex items-center justify-between p-6 cursor-pointer list-none">
					<h3 class="font-semibold text-lg text-gray-900">
						Os produtos são oficiais da marca Onbongo?
					</h3>
					<svg
						class="w-5 h-5 text-onbongo-orange transition-transform group-open:rotate-180"
						fill="none"
						stroke="currentColor"
						viewBox="0 0 24 24"
					>
						<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
					</svg>
				</summary>
				<div class="px-6 pb-6">
					<p class="text-gray-600 leading-relaxed">
						Sim, todos os produtos são 100% oficiais da marca Onbongo. Trabalhamos diretamente com a
						empresa e garantimos a autenticidade de todas as peças. Cada produto possui etiquetas
						originais e certificado de qualidade.
					</p>
				</div>
			</details>

			<!-- FAQ Item 2 -->
			<details class="group bg-gray-50 rounded-2xl">
				<summary class="flex items-center justify-between p-6 cursor-pointer list-none">
					<h3 class="font-semibold text-lg text-gray-900">
						Posso visitar o showroom em São Paulo?
					</h3>
					<svg
						class="w-5 h-5 text-onbongo-orange transition-transform group-open:rotate-180"
						fill="none"
						stroke="currentColor"
						viewBox="0 0 24 24"
					>
						<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
					</svg>
				</summary>
				<div class="px-6 pb-6">
					<p class="text-gray-600 leading-relaxed">
						Claro! Nosso showroom está localizado em São Paulo e você pode agendar uma visita para
						conhecer pessoalmente toda a coleção. Entre em contato conosco pelo WhatsApp para
						agendar o melhor horário para sua visita.
					</p>
				</div>
			</details>

			<!-- FAQ Item 3 -->
			<details class="group bg-gray-50 rounded-2xl">
				<summary class="flex items-center justify-between p-6 cursor-pointer list-none">
					<h3 class="font-semibold text-lg text-gray-900">
						Existe um valor de pedido mínimo?
					</h3>
					<svg
						class="w-5 h-5 text-onbongo-orange transition-transform group-open:rotate-180"
						fill="none"
						stroke="currentColor"
						viewBox="0 0 24 24"
					>
						<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
					</svg>
				</summary>
				<div class="px-6 pb-6">
					<p class="text-gray-600 leading-relaxed">
						Sim, trabalhamos com um pedido mínimo para lojistas que varia conforme a região e o tipo
						de parceria. Nossa equipe comercial irá informar os valores específicos durante o
						processo de cadastro, sempre buscando as melhores condições para seu negócio.
					</p>
				</div>
			</details>

			<!-- FAQ Item 4 -->
			<details class="group bg-gray-50 rounded-2xl">
				<summary class="flex items-center justify-between p-6 cursor-pointer list-none">
					<h3 class="font-semibold text-lg text-gray-900">
						Quais as formas de pagamento?
					</h3>
					<svg
						class="w-5 h-5 text-onbongo-orange transition-transform group-open:rotate-180"
						fill="none"
						stroke="currentColor"
						viewBox="0 0 24 24"
					>
						<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
					</svg>
				</summary>
				<div class="px-6 pb-6">
					<p class="text-gray-600 leading-relaxed">
						Oferecemos diversas formas de pagamento para facilitar suas compras: à vista com desconto,
						parcelamento no cartão de crédito, boleto bancário e transferência PIX. Para lojistas
						parceiros, também disponibilizamos condições especiais de prazo de pagamento.
					</p>
				</div>
			</details>

			<!-- FAQ Item 5 -->
			<details class="group bg-gray-50 rounded-2xl">
				<summary class="flex items-center justify-between p-6 cursor-pointer list-none">
					<h3 class="font-semibold text-lg text-gray-900">
						Como funciona a entrega dos produtos?
					</h3>
					<svg
						class="w-5 h-5 text-onbongo-orange transition-transform group-open:rotate-180"
						fill="none"
						stroke="currentColor"
						viewBox="0 0 24 24"
					>
						<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
					</svg>
				</summary>
				<div class="px-6 pb-6">
					<p class="text-gray-600 leading-relaxed">
						Realizamos entregas para todo o Brasil através de transportadoras parceiras. O prazo
						varia de 3 a 10 dias úteis conforme a região. Para pedidos acima de determinado valor,
						o frete é gratuito. Você recebe o código de rastreamento assim que o pedido é despachado.
					</p>
				</div>
			</details>
		</div>

		<!-- Bottom CTA -->
		<div class="text-center">
			<p class="text-gray-600 mb-6 text-lg">
				Ainda tem dúvidas? Entre em contato conosco!
			</p>
			<button class="bg-onbongo-orange hover:bg-onbongo-orange-dark text-white font-bold py-4 px-8 rounded-xl transition-all duration-200 hover:scale-105 shadow-lg inline-flex items-center gap-3">
				<svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
					<path d="M2 3a1 1 0 011-1h2.153a1 1 0 01.986.836l.74 4.435a1 1 0 01-.54 1.06l-1.548.773a11.037 11.037 0 006.105 6.105l.774-1.548a1 1 0 011.059-.54l4.435.74a1 1 0 01.836.986V17a1 1 0 01-1 1h-2C7.82 18 2 12.18 2 5V3z"/>
				</svg>
				Quero Ser Lojista
				<svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
					<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6"/>
				</svg>
			</button>
		</div>
	</div>
</section>

<!-- Footer Section -->
<footer class="bg-black text-white py-16 px-4 sm:px-6 lg:px-8">
	<div class="max-w-7xl mx-auto">
		<div class="text-center mb-12">
			<!-- Logo -->
			<div class="mb-6">
				<img
					src="https://cdn.builder.io/api/v1/image/assets%2F3a038822502b49b39691cbaf44da5f95%2Fc62fef7dce734b60bd7ec4b40a59a8bd?format=webp&width=150"
					alt="Onbongo Logo"
					class="h-16 w-auto mx-auto"
				/>
			</div>

			<!-- Description -->
			<p class="text-lg text-gray-300 max-w-2xl mx-auto leading-relaxed mb-8">
				A maior marca de streetwear do Brasil. Conectando a cultura urbana através da moda autêntica.
			</p>

			<!-- Social Media Icons -->
			<div class="flex justify-center gap-4 mb-12">
				<a href="#" class="w-12 h-12 bg-white/10 rounded-full flex items-center justify-center hover:bg-onbongo-orange transition-colors duration-200">
					<svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
						<path d="M24 4.557c-.883.392-1.832.656-2.828.775 1.017-.609 1.798-1.574 2.165-2.724-.951.564-2.005.974-3.127 1.195-.897-.957-2.178-1.555-3.594-1.555-3.179 0-5.515 2.966-4.797 6.045-4.091-.205-7.719-2.165-10.148-5.144-1.29 2.213-.669 5.108 1.523 6.574-.806-.026-1.566-.247-2.229-.616-.054 2.281 1.581 4.415 3.949 4.89-.693.188-1.452.232-2.224.084.626 1.956 2.444 3.379 4.6 3.419-2.07 1.623-4.678 2.348-7.29 2.04 2.179 1.397 4.768 2.212 7.548 2.212 9.142 0 14.307-7.721 13.995-14.646.962-.695 1.797-1.562 2.457-2.549z"/>
					</svg>
				</a>
				<a href="#" class="w-12 h-12 bg-white/10 rounded-full flex items-center justify-center hover:bg-onbongo-orange transition-colors duration-200">
					<svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
						<path d="M22.46 6c-.77.35-1.6.58-2.46.69.88-.53 1.56-1.37 1.88-2.38-.83.5-1.75.85-2.72 1.05C18.37 4.5 17.26 4 16 4c-2.35 0-4.27 1.92-4.27 4.29 0 .34.04.67.11.98C8.28 9.09 5.11 7.38 3 4.79c-.37.63-.58 1.37-.58 2.15 0 1.49.75 2.81 1.91 3.56-.71 0-1.37-.2-1.95-.5v.03c0 2.08 1.48 3.82 3.44 4.21a4.22 4.22 0 0 1-1.93.07 4.28 4.28 0 0 0 4 2.98 8.521 8.521 0 0 1-5.33 1.84c-.34 0-.68-.02-1.02-.06C3.44 20.29 5.7 21 8.12 21 16 21 20.33 14.46 20.33 8.79c0-.19 0-.37-.01-.56.84-.6 1.56-1.36 2.14-2.23z"/>
					</svg>
				</a>
				<a href="#" class="w-12 h-12 bg-white/10 rounded-full flex items-center justify-center hover:bg-onbongo-orange transition-colors duration-200">
					<svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
						<path d="M12 2.163c3.204 0 3.584.012 4.85.07 3.252.148 4.771 1.691 4.919 4.919.058 1.265.069 1.645.069 4.849 0 3.205-.012 3.584-.069 4.849-.149 3.225-1.664 4.771-4.919 4.919-1.266.058-1.644.07-4.85.07-3.204 0-3.584-.012-4.849-.07-3.26-.149-4.771-1.699-4.919-4.92-.058-1.265-.07-1.644-.07-4.849 0-3.204.013-3.583.07-4.849.149-3.227 1.664-4.771 4.919-4.919 1.266-.057 1.645-.069 4.849-.069zm0-2.163c-3.259 0-3.667.014-4.947.072-4.358.2-6.78 2.618-6.98 6.98-.059 1.281-.073 1.689-.073 4.948 0 3.259.014 3.668.072 4.948.2 4.358 2.618 6.78 6.98 6.98 1.281.058 1.689.072 4.948.072 3.259 0 3.668-.014 4.948-.072 4.354-.2 6.782-2.618 6.979-6.98.059-1.28.073-1.689.073-4.948 0-3.259-.014-3.667-.072-4.947-.196-4.354-2.617-6.78-6.979-6.98-1.281-.059-1.69-.073-4.949-.073zm0 5.838c-3.403 0-6.162 2.759-6.162 6.162s2.759 6.163 6.162 6.163 6.162-2.759 6.162-6.163c0-3.403-2.759-6.162-6.162-6.162zm0 10.162c-2.209 0-4-1.79-4-4 0-2.209 1.791-4 4-4s4 1.791 4 4c0 2.21-1.791 4-4 4zm6.406-11.845c-.796 0-1.441.645-1.441 1.44s.645 1.44 1.441 1.44c.795 0 1.439-.645 1.439-1.44s-.644-1.44-1.439-1.44z"/>
					</svg>
				</a>
				<a href="#" class="w-12 h-12 bg-white/10 rounded-full flex items-center justify-center hover:bg-onbongo-orange transition-colors duration-200">
					<svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
						<path d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433c-1.144 0-2.063-.926-2.063-2.065 0-1.138.92-2.063 2.063-2.063 1.14 0 2.064.925 2.064 2.063 0 1.139-.925 2.065-2.064 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z"/>
					</svg>
				</a>
			</div>
		</div>

		<!-- Partner Section -->
		<div class="border-t border-gray-700 pt-12 mb-12">
			<div class="text-center">
				<div class="mb-6">
					<div class="inline-flex items-center justify-center w-16 h-16 bg-onbongo-orange rounded-xl mb-4">
						<span class="text-white font-black text-xl">hub</span>
					</div>
				</div>
				<p class="text-gray-400 max-w-3xl mx-auto leading-relaxed">
					Uma iniciativa do NTK Grupo Textil para democratizar o acesso dos lojistas às grandes marcas do mercado.
					Conectamos empreendedores com as melhores oportunidades de negócio, oferecendo suporte completo para o
					crescimento do seu comércio.
				</p>
				<p class="text-sm text-gray-500 mt-4 font-medium">
					NTK Grupo Textil - Conectando marcas e lojistas
				</p>
			</div>
		</div>

		<!-- Bottom Links -->
		<div class="border-t border-gray-700 pt-8">
			<div class="flex flex-col md:flex-row justify-between items-center gap-4">
				<div class="text-center md:text-left">
					<p class="text-gray-400 text-sm">
						© 2024. Todos os direitos reservados.
					</p>
				</div>
				<div class="flex gap-6 text-sm">
					<a href="#" class="text-gray-400 hover:text-white transition-colors">Política de Privacidade</a>
					<a href="#" class="text-gray-400 hover:text-white transition-colors">Termos de Uso</a>
					<a href="#" class="text-gray-400 hover:text-white transition-colors">Contato</a>
				</div>
			</div>
		</div>

		<!-- Development Credits -->
		<div class="text-center mt-8 pt-6 border-t border-gray-800">
			<p class="text-xs text-gray-500">
				Desenvolvido com
				<span class="text-onbongo-orange">♥</span>
				por
				<a href="#" class="text-onbongo-orange hover:underline">NTK Digital</a>
			</p>
		</div>
	</div>
</footer>

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
