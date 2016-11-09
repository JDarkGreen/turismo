<?php 
/*
 * File : Render Page Gallery 
 * Contiene la Función callback que despliega la Sección Galería de Imágenes
 * dentro del administrador
 */

if( !function_exists('render_gallery_page') ) :

function render_gallery_page()
{
	ob_start(); ?>

	<!-- Estilos -->
	<style>
		@import url('https://fonts.googleapis.com/css?family=Ubuntu');

		#section-gallery{ font-family:'Ubuntu', sans-serif; }
		#section-gallery h2.title{ font-size: 30px; font-weight: 700; color: green; }
		#section-gallery p{ font-size: 18px; }

	</style>

	<!-- Seccion -->
	<section id="section-gallery">

		<h2 class="title"> Bienvenido a Galería de Imágenes </h2>

		<p> Esta es la galería de Imágenes Puedes Subir tus propias fotos desde aquí para que se muestren en la página de Imágenes. </p>

		<!-- Galería Imágenes -->
		<section class="sectionUploadGallery">

			<!-- Section Sortable Gallery -->
			<section class="sortableGallery">
				
			</section> <!-- /.sortableGallery -->

			<!-- Botones -->
			<div>

				<input id="field-gallery-theme" name="field-gallery-theme" type="text" />
				
				<!-- Añadir Imágen -->
				<button class="js-upload-image btn-upload" data-target-id="field-gallery-theme" data-multiple-frame="true"> Añadir Imágen </button>

				<!-- Remover Todos los elementos -->
				<button class="js-remove-gallery btn-upload btn-upload--red"> Eliminar Todo </button>

			</div>
			
		</section> <!-- /.sectionUploadGallery -->
		
	</section> <!-- /section -->

<?php 
	
	$render = ob_get_contents(); ob_clean();
	echo $render;
}

endif;
