<?php  
/**
  * Version 1.0
  * Archivo partial que muestra carousel de Promociones 
  * en el Home
  */

/**
  * Extraer todas las promociones
  */
$args = array(
	'order'          => 'ASC',
	'orderby'        => 'menu_order',
	'post_status'    => 'publish',
	'post_type'      => 'theme-promotions',
	'posts_per_page' => -1,
);

$promotions = get_posts( $args );

?>

<section class="sectionCarouselPromotions">
	
	<!-- Título -->
	<h2 class="titleCommon__section bg-line-green">
		<span> <?php _e( 'Promociones' , LANG ); ?> </span>
	</h2> <!-- /.titleCommon__section -->


	<div class="containerRelative">

		<!-- Carousel Galeria -->
		<div id="carousel-promotion" class="section__single_gallery js-carousel-gallery" data-items="3" data-items-responsive="1" data-margins="21" data-dots="false" data-autoplay="true" data-timeautoplay="5000">
			
			<?php foreach( $promotions as $promotion ): ?>
				
				<?php if( has_post_thumbnail( $promotion->ID ) ): 

					$feat_img = wp_get_attachment_url( get_post_thumbnail_id($promotion->ID) );

					/* Metabox de duración */
					$mb_duration = get_post_meta( $promotion->ID , 'duration_travel' , true );
					/* Metabox de precio */
					$mb_price = get_post_meta( $promotion->ID , 'price_travel' , true );
				?>
				
				<!-- Item Preview Promotion -->
				<article class="itemPreviewPromotion">
					
					<a href="<?= get_permalink( $promotion->ID ); ?>">
						<figure class="featured-image" style="background-image : url(<?= $feat_img; ?>)">
						</figure>
					</a>
					
					<div class="containerRelative">
	
						<!-- Duración -->
						<p> <?= __('Duración: ',LANG); ?> <span> <?= __($mb_duration , LANG ); ?> 
						</span> </p>

						<!-- Precio -->
						<p> <?= __('Desde: ',LANG); ?> <span> <?= __($mb_price , LANG ); ?> 
						</span> </p>

						<!-- Botón ver más  -->
						<a href="<?= get_permalink( $promotion->ID ); ?>" class="btn-show-more btn-to-promotion text-uppercase"> <?= __('leer más',LANG); ?> </a>

					</div> <!-- /.containerRelative -->

				</article>
	
				<?php endif; ?>
			
			<?php endforeach; ?>

		</div> <!-- /carousel-single-services -->

		<!-- Flechas de Carousel -->
		<a href="#" class="arrow-promotion arrow-prev js-carousel-prev" data-slider="carousel-promotion">
			<i class="fa fa-angle-left" aria-hidden="true"></i>
		</a> <!-- /. -->

		<a href="#" class="arrow-promotion arrow-next js-carousel-next" data-slider="carousel-promotion">
			<i class="fa fa-angle-right" aria-hidden="true"></i>
		</a> <!-- /. -->

	</div> <!-- /containerRelative -->

</section> <!-- /.sectionCarouselPromotions  -->
