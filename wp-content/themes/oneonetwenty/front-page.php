<?php

$hero_fields = get_field('hero');
$servicios_fields = get_field('servicios');
$banner_fields = get_field('banner');
$modalidad_fields = get_field('modalidad');
$nosotros_fields = get_field('nosotros');
$banner2_fields = get_field('banner_2');
$clientes_fields = get_field('clientes');
$contacto_fields = get_field('contacto');

get_header(); ?>

<section class="py-[80px] bg-gray-300 bg-[url(<?php echo $hero_fields['fondo']['url'] ?>)] bg-cover bg-center">
	<div class="max-w-[1260px] mx-auto px-4">
		<h1 class="text-white font-bold text-[32px] md:text-[48px] max-w-[660px] leading-[110%]"><?php echo $hero_fields['titulo']; ?></h1>
		<p class="mt-8 font-light text-white"><?php echo $hero_fields['bajada']; ?></p>
		<a class="block mt-12 w-fit bg-[#918473] text-white font-bold px-10 py-4 rounded-full" href="<?php echo $hero_fields['boton']['url']; ?>">
			<?php echo $hero_fields['boton']['title']; ?>
		</a>
	</div>
</section>

<section class="py-[80px]">
	<div class="max-w-[1260px] mx-auto px-4">
		<h2 class="text-center text-[36px] mb-8">Servicios</h2>
		<div class="grid md:grid-cols-2 gap-4">
			<div class="bg-white shadow-[2px_2px_30px_#00000020] h-fit">
				<div class="p-6 md:p-[50px]">
					<span class="text-[20px]">SERVICIO</span>
					<h3 class="text-[28px] font-bold text-[#918473] leading-[120%]"><?php echo $servicios_fields['titulo_servicio_1']; ?></h3>
					<p class="md:mt-8 my-6 md:text-[18px]">
						<?php echo strip_tags($servicios_fields['descripcion_servicio_1'], 'strong') ?>
					</p>
				</div>
				<img class="h-[414px] bg-gray-300 w-full object-cover" src="<?php echo $servicios_fields['imagen_servicio_1']['url'] ?>" alt="">
			</div>
			<div class="bg-white shadow-[2px_2px_30px_#00000020]">
				<div class="p-6 md:p-[50px]">
					<span class="text-[20px]">SERVICIO</span>
					<h3 class="text-[28px] font-bold text-[#918473] leading-[120%]"><?php echo $servicios_fields['titulo_servicio_2']; ?></h3>
					<p class="md:mt-8 my-6 md:text-[18px]">
						<?php echo strip_tags($servicios_fields['descripcion_servicio_2'], 'strong') ?>
					</p>
				</div>
				<img class="h-[414px] bg-gray-300 w-full object-cover" src="<?php echo $servicios_fields['imagen_servicio_2']['url'] ?>" alt="<?php echo $servicios_fields['imagen_servicio_2']['alt'] ?>">
			</div>
		</div>
		<a class="block mx-auto mt-12 w-fit bg-[#918473] text-white font-bold px-10 py-4 rounded-full" href="<?php echo $servicios_fields['boton']['url']; ?>">
			<?php echo $servicios_fields['boton']['title']; ?>
		</a>
	</div>
</section>

<section>
	<img class="h-[200px] md:h-[450px] w-full object-cover object-center" src="<?php echo $banner_fields['imagenbanner']['url'] ?>" alt="<?php echo $banner_fields['imagenbanner']['alt'] ?>">
</section>

<section class="py-[80px]">
	<div class="max-w-[1045px] mx-auto px-4">
		<h2 class="text-center text-[36px] mb-8"><?php echo $modalidad_fields['titulo'] ?></h2>
		<img class="max-w-full mb-10 w-[300px] md:w-[540px] mx-auto h-auto" src="<?php echo $modalidad_fields['bajada']['url'] ?>" alt="<?php echo $modalidad_fields['bajada']['alt'] ?>">
		<div class="grid md:grid-cols-2 gap-4 md:px-4">
			<div class="bg-white shadow-[2px_2px_30px_#00000020]">
				<div class="p-[50px]">
					<img class="size-[54px] mx-auto" src="<?php echo $modalidad_fields['icono_1']['url'] ?>" alt="<?php echo $modalidad_fields['icono_1']['alt'] ?>">
					<h3 class="text-[20px] mt-[24px] text-center font-bold text-[#918473] uppercase"><?php echo $modalidad_fields['titulo_1']; ?></h3>
					<p class="mt-8 text-[18px] text-center max-w-[320px] mx-auto">
						<?php echo strip_tags($modalidad_fields['descripcion_1'], 'strong') ?>
					</p>
				</div>
				<img class="h-[414px] bg-gray-300 w-full object-cover" src="<?php echo $modalidad_fields['imagen_1']['url'] ?>" alt="">
			</div>
			<div class="bg-white shadow-[2px_2px_30px_#00000020]">
				<div class="p-[50px]">
					<img class="size-[54px] mx-auto" src="<?php echo $modalidad_fields['icono_2']['url'] ?>" alt="<?php echo $modalidad_fields['icono_2']['alt'] ?>">
					<h3 class="text-[20px] mt-[24px] text-center font-bold text-[#918473] uppercase"><?php echo $modalidad_fields['titulo_2']; ?></h3>
					<p class="mt-8 text-[18px] text-center max-w-[320px] mx-auto">
						<?php echo strip_tags($modalidad_fields['descripcion_2'], 'strong') ?>
					</p>
				</div>
				<img class="h-[414px] bg-gray-300 w-full object-cover" src="<?php echo $modalidad_fields['imagen_2']['url'] ?>" alt="">
			</div>
		</div>
		<a class="block mx-auto mt-12 w-fit bg-[#918473] text-white font-bold px-10 py-4 rounded-full" href="<?php echo $modalidad_fields['boton']['url']; ?>">
			<?php echo $modalidad_fields['boton']['title']; ?>
		</a>
	</div>
</section>

<section>
	<div class="grid md:grid-cols-5 bg-[#4F5D29]/40">
		<img class="bg-gray-300 md:col-span-2" src="<?php echo $nosotros_fields['imagen_nosotros']['url']; ?>" alt="<?php echo $nosotros_fields['imagen_nosotros']['alt']; ?>">
		<div class="px-[90px] py-[140px] md:col-span-3">
			<h2 class="mb-[20px] text-[28px] uppercase"><?php echo $nosotros_fields['titulo']; ?></h2>
			<p class="text-[18px] font-light whitespace-pre-wrap"><?php echo strip_tags($nosotros_fields['descripcion']); ?></p>
		</div>
	</div>
</section>

<section class="py-[90px] bg-[#231F20]">
	<div class="max-w-[1260px] mx-auto px-4">
		<div class="grid grid-cols-9 gap-[60px]">
			<div class="col-span-4">
				<h3 class="text-white text-[40px] text-center leading-[110%]"><?php echo $banner2_fields['titulo'] ?></h3>
				<img class="w-[500px] max-w-full mx-auto" src="<?php echo $banner2_fields['bajada']['url'] ?>" alt="<?php echo $banner2_fields['bajada']['alt'] ?>">
				<a class="block mx-auto mt-12 w-fit border border-white text-white font-bold px-10 py-4 rounded-full" href="<?php echo $banner2_fields['boton']['url'] ?>"><?php echo $banner2_fields['boton']['title'] ?></a>
			</div>
			<div class="banner2-list col-span-5 flex items-center text-white text-[20px] font-semibold">
				<?php echo $banner2_fields['lista'] ?>
			</div>
		</div>
	</div>
</section>

<section class="py-[100px]">
	<div class="max-w-[1260px] mx-auto px-4">
		<div class="grid grid-cols-2 gap-12">
			<div class="max-w-[540px]">
				<img class="w-[459px] max-w-full mx-auto" src="<?php echo $clientes_fields['titulo']['url'] ?>" alt="<?php echo $clientes_fields['titulo']['alt'] ?>">
				<div class="flex gap-8 flex-wrap justify-center">
					<img class="object-contain w-[90px] min-h-[20px]" src="<?php echo $clientes_fields['cliente_1']['url']; ?>" alt="<?php echo $clientes_fields['cliente_1']['alt']; ?>">
					<img class="object-contain w-[90px] min-h-[20px]" src="<?php echo $clientes_fields['cliente_2']['url']; ?>" alt="<?php echo $clientes_fields['cliente_2']['alt']; ?>">
					<img class="object-contain w-[90px] min-h-[20px]" src="<?php echo $clientes_fields['cliente_3']['url']; ?>" alt="<?php echo $clientes_fields['cliente_3']['alt']; ?>">
					<img class="object-contain w-[90px] min-h-[20px]" src="<?php echo $clientes_fields['cliente_4']['url']; ?>" alt="<?php echo $clientes_fields['cliente_4']['alt']; ?>">
					<img class="object-contain w-[90px] min-h-[20px]" src="<?php echo $clientes_fields['cliente_5']['url']; ?>" alt="<?php echo $clientes_fields['cliente_5']['alt']; ?>">
					<img class="object-contain w-[90px] min-h-[20px]" src="<?php echo $clientes_fields['cliente_6']['url']; ?>" alt="<?php echo $clientes_fields['cliente_6']['alt']; ?>">
					<img class="object-contain w-[90px] min-h-[20px]" src="<?php echo $clientes_fields['cliente_7']['url']; ?>" alt="<?php echo $clientes_fields['cliente_7']['alt']; ?>">
				</div>
			</div>
			<img src="<?php echo $clientes_fields['cliente_destacado']['url']; ?>" alt="<?php echo $clientes_fields['cliente_destacado']['alt']; ?>">
		</div>
	</div>
</section>

<section>
	<div class="grid grid-cols-5">
		<div class="bg-white py-[150px] px-[80px] col-span-2">
			<p class="uppercase text-[18px] font-bold text-[#4F5D29]"><?php echo $contacto_fields['arriba_del_titulo'] ?></p>
			<h2 class="text-[32px] my-4 leading-[120%]"><?php echo $contacto_fields['titulo'] ?></h2>
			<p class="text-[20px] max-w-full w-[360px] font-medium leading-[120%]"><?php echo $contacto_fields['bajada'] ?></p>
		</div>
		<div class="bg-red-500 col-span-3 py-[80px] px-[100px] bg-[url('<?php echo $contacto_fields['imagen']['url']; ?>')] bg-cover">
			<?php echo do_shortcode('[contact-form-7 id="c0a4142" title="Formulario de contacto"]'); ?>
		</div>
	</div>
</section>

<?php get_footer(); ?>