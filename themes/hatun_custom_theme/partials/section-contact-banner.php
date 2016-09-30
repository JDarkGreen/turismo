<?php  
/**
  * ARCHIVO PARTIAL QUE MUESTRA EL BANNER HACIA EL CONTACTO
***/

$page_contacto      = get_page_by_title('Contacto');

$page_contacto_link = !empty($page_contacto) ? get_permalink( $page_contacto->ID ) : '#';

?>

<section id="sectionBannerContacto" class="containerRelative">

	<div class="content-text m-x-auto containerFlex containerAlignContent text-xs-center">

		<!-- Titulo -->
		<h2 class=""> <?= __("Siente la experiencia en el Spa" , LANG ); ?></h2>
		<!-- Boton -->
		<a href="<?= $page_contacto_link; ?>" class="btn-show-more btn-show-more--gray text-uppercase"> Contáctanos ahora </a>

	</div> <!-- /.content-text -->

</section> <!-- /.sectionBannerContacto -->