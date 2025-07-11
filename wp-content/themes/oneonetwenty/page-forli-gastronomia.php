<?php
		// Archivo creado automaticamente
		// auto-update-variables-true
		// auto-update-sections-true
		
		// variables ---
		$hero_fields = get_field('hero');
$servicios_fields = get_field('servicios');
$banner_fields = get_field('banner');
$modalidad_fields = get_field('modalidad');
$nosotros_fields = get_field('nosotros');
$banner_2_fields = get_field('banner_2');
$clientes_fields = get_field('clientes');
$contacto_fields = get_field('contacto');

	// fin variables ---
		
		get_header(); ?>
		
			<!-- secciones -->
		
						<section class="tcp-forli-gastronomia__hero">
							<div class='max-w-[1200px] mx-auto px-4 xl:px-0 py-[60px]'>
<h2 class='text-2xl font-bold'><?php echo strip_tags($hero_fields['titulo']) ?></h2>
<a class='tcp-btn' href='<?php echo $hero_fields['boton']['url'] ?>'><?php echo $hero_fields['boton']['title'] ?></a>
<img class='max-w-full' src='<?php echo $hero_fields['fondo']['url'] ?>' alt='<?php echo $hero_fields['fondo']['alt'] ?>' /></div>
						</section>

						<section class="tcp-forli-gastronomia__servicios">
							<div class='max-w-[1200px] mx-auto px-4 xl:px-0 py-[60px]'>
<h2 class='text-2xl font-bold'><?php echo strip_tags($servicios_fields['titulo_servicio_1']) ?></h2>
<p><?php echo strip_tags($servicios_fields['descripcion_servicio_1'], '<strong>') ?></p>
<img class='max-w-full' src='<?php echo $servicios_fields['imagen_servicio_1']['url'] ?>' alt='<?php echo $servicios_fields['imagen_servicio_1']['alt'] ?>' /><h2 class='text-2xl font-bold'><?php echo strip_tags($servicios_fields['titulo_servicio_2']) ?></h2>
<img class='max-w-full' src='<?php echo $servicios_fields['imagen_servicio_2']['url'] ?>' alt='<?php echo $servicios_fields['imagen_servicio_2']['alt'] ?>' /><p><?php echo strip_tags($servicios_fields['descripcion_servicio_2'], '<strong>') ?></p>
<a class='tcp-btn' href='<?php echo $servicios_fields['boton']['url'] ?>'><?php echo $servicios_fields['boton']['title'] ?></a>
</div>
						</section>

						<section class="tcp-forli-gastronomia__banner">
							<div class='max-w-[1200px] mx-auto px-4 xl:px-0 py-[60px]'>
<img class='max-w-full' src='<?php echo $banner_fields['imagenbanner']['url'] ?>' alt='<?php echo $banner_fields['imagenbanner']['alt'] ?>' /></div>
						</section>

						<section class="tcp-forli-gastronomia__modalidad">
							<div class='max-w-[1200px] mx-auto px-4 xl:px-0 py-[60px]'>
<h2 class='text-2xl font-bold'><?php echo strip_tags($modalidad_fields['titulo']) ?></h2>
<img class='max-w-full' src='<?php echo $modalidad_fields['bajada']['url'] ?>' alt='<?php echo $modalidad_fields['bajada']['alt'] ?>' /><img class='max-w-full' src='<?php echo $modalidad_fields['icono_1']['url'] ?>' alt='<?php echo $modalidad_fields['icono_1']['alt'] ?>' /><h2 class='text-2xl font-bold'><?php echo strip_tags($modalidad_fields['titulo_1']) ?></h2>
<img class='max-w-full' src='<?php echo $modalidad_fields['imagen_1']['url'] ?>' alt='<?php echo $modalidad_fields['imagen_1']['alt'] ?>' /><img class='max-w-full' src='<?php echo $modalidad_fields['icono_2']['url'] ?>' alt='<?php echo $modalidad_fields['icono_2']['alt'] ?>' /><h2 class='text-2xl font-bold'><?php echo strip_tags($modalidad_fields['titulo_2']) ?></h2>
<img class='max-w-full' src='<?php echo $modalidad_fields['imagen_2']['url'] ?>' alt='<?php echo $modalidad_fields['imagen_2']['alt'] ?>' /><a class='tcp-btn' href='<?php echo $modalidad_fields['boton']['url'] ?>'><?php echo $modalidad_fields['boton']['title'] ?></a>
</div>
						</section>

						<section class="tcp-forli-gastronomia__nosotros">
							<div class='max-w-[1200px] mx-auto px-4 xl:px-0 py-[60px]'>
<img class='max-w-full' src='<?php echo $nosotros_fields['imagen_nosotros']['url'] ?>' alt='<?php echo $nosotros_fields['imagen_nosotros']['alt'] ?>' /><h2 class='text-2xl font-bold'><?php echo strip_tags($nosotros_fields['titulo']) ?></h2>
<p><?php echo strip_tags($nosotros_fields['descripcion'], '<strong>') ?></p>
</div>
						</section>

						<section class="tcp-forli-gastronomia__banner_2">
							<div class='max-w-[1200px] mx-auto px-4 xl:px-0 py-[60px]'>
<h2 class='text-2xl font-bold'><?php echo strip_tags($banner_2_fields['titulo']) ?></h2>
<h2 class='text-2xl font-bold'><?php echo strip_tags($banner_2_fields['subtitulo']) ?></h2>
<img class='max-w-full' src='<?php echo $banner_2_fields['bajada']['url'] ?>' alt='<?php echo $banner_2_fields['bajada']['alt'] ?>' /><a class='tcp-btn' href='<?php echo $banner_2_fields['boton']['url'] ?>'><?php echo $banner_2_fields['boton']['title'] ?></a>
<p><?php echo strip_tags($banner_2_fields['lista'], '<strong>') ?></p>
</div>
						</section>

						<section class="tcp-forli-gastronomia__clientes">
							<div class='max-w-[1200px] mx-auto px-4 xl:px-0 py-[60px]'>
<img class='max-w-full' src='<?php echo $clientes_fields['titulo']['url'] ?>' alt='<?php echo $clientes_fields['titulo']['alt'] ?>' /><img class='max-w-full' src='<?php echo $clientes_fields['cliente_1']['url'] ?>' alt='<?php echo $clientes_fields['cliente_1']['alt'] ?>' /><img class='max-w-full' src='<?php echo $clientes_fields['cliente_2']['url'] ?>' alt='<?php echo $clientes_fields['cliente_2']['alt'] ?>' /><img class='max-w-full' src='<?php echo $clientes_fields['cliente_3']['url'] ?>' alt='<?php echo $clientes_fields['cliente_3']['alt'] ?>' /><img class='max-w-full' src='<?php echo $clientes_fields['cliente_4']['url'] ?>' alt='<?php echo $clientes_fields['cliente_4']['alt'] ?>' /><img class='max-w-full' src='<?php echo $clientes_fields['cliente_5']['url'] ?>' alt='<?php echo $clientes_fields['cliente_5']['alt'] ?>' /><img class='max-w-full' src='<?php echo $clientes_fields['cliente_6']['url'] ?>' alt='<?php echo $clientes_fields['cliente_6']['alt'] ?>' /><img class='max-w-full' src='<?php echo $clientes_fields['cliente_7']['url'] ?>' alt='<?php echo $clientes_fields['cliente_7']['alt'] ?>' /><img class='max-w-full' src='<?php echo $clientes_fields['cliente_destacado']['url'] ?>' alt='<?php echo $clientes_fields['cliente_destacado']['alt'] ?>' /></div>
						</section>

						<section class="tcp-forli-gastronomia__contacto">
							<div class='max-w-[1200px] mx-auto px-4 xl:px-0 py-[60px]'>
<h2 class='text-2xl font-bold'><?php echo strip_tags($contacto_fields['arriba_del_titulo']) ?></h2>
<h2 class='text-2xl font-bold'><?php echo strip_tags($contacto_fields['titulo']) ?></h2>
<h2 class='text-2xl font-bold'><?php echo strip_tags($contacto_fields['bajada']) ?></h2>
<img class='max-w-full' src='<?php echo $contacto_fields['imagen']['url'] ?>' alt='<?php echo $contacto_fields['imagen']['alt'] ?>' /></div>
						</section>

	<!-- fin secciones -->
		
		<?php get_footer(); ?>