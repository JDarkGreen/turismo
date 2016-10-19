<?php 
/*
 * Single : Detalle de Tour 
 */

/*
 * Objeto actual
 */
global $post;

/*
 * Obtener Header
 */
get_header(); 

/*
 * Extraer opciones del tema
 */
$options = get_option("theme_settings");

/*
 * Importar banner de Página
 */

include( locate_template('partials/banner-top-page.php') );

/*
 * Importar Navegación Principal
 */
include( locate_template('partials/main-menu-navigation.php') );

?>

<!-- Wrapper de Contenido  -->
<div class="pageWrapperLayout containerRelative">

	<div class="row">
		
		<!-- Cargar Sidebar -->
		<div class="col-xs-12 col-sm-3">
			
			<?php get_sidebar(); ?>
			
		</div> <!-- /.col-xs-12 col-sm-3 -->

		<!-- Contenido -->
		<div class="col-xs-12 col-sm-9">

			<!-- Breadcrumbs -->
			<?= getBreadcrumbs( $post->ID ); ?>

			<!-- Títulos  -->
			<h2 class="titleCommon__section titleCommon__section--big bg-line-green">
				<span> <?= __( $post->post_title , LANG ); ?> </span>
			</h2>

			<!-- Espacios --> <br /><br />
			
			<!-- Texto o Contenido -->
			<div class="contentSingleTour">
				
				<div class="row">
					
					<div class="col-xs-12 col-sm-6">
						
						<!-- Contenido de Scroll -->
						<div id="text-content-tour">
						<?= apply_filters( 'the_content' , __( $post->post_content , LANG ) ); ?>	
						</div> <!-- /#text-content-tour -->
						
					</div> <!-- /.col-xs-12 col-sm-6 -->	

					<div class="col-xs-12 col-sm-6">
						
						<!-- Galería De Imágenes -->
						<?php 
							$gallery_tour = get_gallery_post( $post->ID );
							if( $gallery_tour && count($gallery_tour) > 1 ) :

							$items_per_page = 4; //items por página
						?>

						<div id="singe-tour-gallery" class="js-carousel-gallery" data-items="1" data-items-responsive="1" data-margins="10" data-dots="true" data-autoplay="true" data-timeautoplay="5000">

							<?php
								$control = 1;

								foreach( $gallery_tour as $image ) :
								//Url de Imágen
								$url_image = $image->guid;
							?>

							<?php if( $control == 1 || ($control%($items_per_page+1)) == 0 ) : ?> <div style="overflow: hidden;"> <?php endif; ?>
							
							<figure class="featured-image" style="background-image : url( <?= $url_image ?> )">

								<a href="<?= $url_image ?>" class="d-block gallery-fancybox" title="<?= $image->post_content ?>" rel="group1"></a>

							</figure> <!-- /.featured-image -->

							<?php if( $control !== 1 && ($control%$items_per_page) == 0 || $control == count($gallery_tour) ) : ?> </div> <!--/ end open --> <?php endif; ?>

							<?php $control++; endforeach; ?>

						</div> <!-- /#singe-tour-gallery -->

						<!-- Paginador -->
						<section class="paginationTour text-xs-right">
							<?php for ( $i = 0; $i < (count($gallery_tour) / $items_per_page ) ; $i++) { ?> 
							
							<a href="#" class="js-carousel-indicator <?= $i == 0 ? 'active' : '' ?>" data-slider="singe-tour-gallery" data-to="<?= $i; ?>"></a>	
							
							<?php } ?>
						</section> <!-- /.paginationTour -->

						<?php endif; ?>
						
					</div> <!-- /.col-xs-12 col-sm-6 -->

				</div> <!-- /.row -->

			</div> <!-- /.contentSingleTour  -->


		</div> <!-- /.col-xs-12 col-sm-9 -->

	</div> <!--/.row -->

</div> <!-- /.pageWrapperLayout containerRelative -->


<!-- Footer -->
<?php get_footer(); ?>
