<?php  
/*
 * Archivo que permite agregar más menus de páginas
 * para el administrador de wordpress . Casos como las 
 * galerías etc.
 */


function add_more_page_to_admin()
{
	
	/*
	 * Registrar Página de Galería
	 */
	add_menu_page( 'Galería de Imágenes | ' . get_bloginfo('name') , 'Galería de Imágenes' ,
	'manage_options' , 'gallery_theme' , 'custom_theme_gallery_page' , IMAGES . '/icons/gallery.png' , 12 );
}


/*
 * Agregar función gracias al Hook
 */
add_action( 'admin_menu', 'add_more_page_to_admin'); 


/**
* Mostrardo el renderizado final y las opciones del tema
**/
function custom_theme_gallery_page()
{ ?>

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
		
	</section> <!-- /section -->

<?php 
}

