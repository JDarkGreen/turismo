<?php  
/**
  * Version 1.0
  * Archivo partial que muestra sección de Tour Destacados
  * en el Home
  */

/**
  * Extraer todas las destacados
  */

$limit_items = 24;

$args = array(
	'order'          => 'DESC',
	'orderby'        => 'date',
	'post_status'    => 'publish',
	'post_type'      => 'theme-tours',
	'posts_per_page' => $limit_items,
);

$features = get_posts( $args );
?>

<section class="sectionHomeFeatures">
	
	<!-- Título -->
	<h2 class="titleCommon__section bg-line-green">
		<span> <?php _e( 'Destacados' , LANG ); ?> </span>
	</h2> <!-- /.titleCommon__section -->

	<?php
		//Limite de items
		$limit_items = 5;

		/*
		 * Si el numero de items es mayor a limite entonces 
		 * retorar true 
		 */
		function makeCarousel() 
		{
			global $features , $limit_items; 

			if( count($features) > $limit_items ) : return true;
			else: return false; endif;
		}
	?>

	<?php if( makeCarousel() ): ?>

		<!-- Carousel Galeria de Clientes -->
		<div id="carousel-features-tour" class="section__single_gallery js-carousel-gallery" data-items="1" data-items-responsive="1" data-margins="10" data-dots="true" data-autoplay="true" data-timeautoplay="9000">

	<?php endif; ?>
		
		<?php  #Variable control 
		$control_items  = 0; ?>

		<!-- Carousel De Items de Destacados -->
		<?php foreach( $features as $featured ): ?>
				
		<?php 
			//Ruta image
			$feat_img = wp_get_attachment_url( get_post_thumbnail_id($featured->ID) );
			$feat_img = !empty($feat_img) ? $feat_img : IMAGES  . '/hatun_tour_default.jpg';

			//Extracto
			$text_excerpt = !empty($featured->post_excerpt) ? $featured->post_excerpt : 'Anímese y viaje con nosotros!!!';
		?>
			
			<?php if( ($control_items === 0) || ($control_items%$limit_items === 0)  ) : ?>
				<!--  Contenedor Flexible -->
				<div class="containerFeatures containerFlex">
			<?php endif; ?>

			<!-- Articulo -->
			<article class="itemTourPreview">

				<!-- Imagen -->
				<figure class="featured-image containerRelative" style="background-image: url( <?= $feat_img; ?> )">

					<!-- Botón ver más -->
					<a href="<?= get_permalink($featured->ID); ?>" class="btn-show-more text-uppercase"> 
					<?= __( 'leer más' , LANG ); ?> </a>
					
				</figure>

				<!-- Título -->
				<h2 class="text-capitalize"> <?= __( $featured->post_title , LANG ); ?> </h2>

				<!-- Extracto -->
				<span class="text-excerpt"> <?= __( $text_excerpt , LANG ); ?>  </span>
				
			</article> <!-- /.itemTourPreview -->

			<?php if( ($control_items !== 0 ) && ( ($control_items+1) % $limit_items === 0)  ) : ?>
				</div> <!-- /.containerFeatures -->
			<?php endif; ?>

		<?php $control_items++; endforeach; ?>
	
	<?php if( makeCarousel() ): ?>

		</div> <!-- /.#carousel-features-tour -->
	
	<?php endif; ?>
	
</section> <!-- /.sectionCarouselPromotions  -->
