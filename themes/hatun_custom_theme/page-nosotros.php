<?php /* Template Name: Página Nosotros Template */
/**
 * Esta es la plantilla que despliega la informacion de la página
 * Nosotros
 *
 */

/**
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

			<!-- Contenedor Texto Layout -->
			<div class="pageContentLayout pageNosotros">

				<div class="text-xs-center">

					<!-- Titulo -->
					<h2 class="titleCommon__page">
						<?php  
							$text_title = !empty($post->post_excerpt) ? $post->post_excerpt : 'Bienvenidos a Hatum Tour!!';

							_e( $text_title , LANG );
						?>
						
					</h2> <!-- titleCommon__page -->

					<!-- Contenido -->
					<section class="pageNosotrosContent ">
					
						<div class="scroll-animate">
						<?= apply_filters( 'the_content' , __($post->post_content , LANG ) ); ?>	
						</div> <!-- /.scroll-animate-rotate -->

						<!-- Espacio -->
						<br><br>

						<!-- Galería de Imágenes  -->
						<?php  
							/*
							 * Comprobar si hay galería
							 */
							$the_gallery = get_gallery_post($post->ID);
							/*
							 * Si hay más de imagenes
							 */
							if( $the_gallery && count($the_gallery) >= 2 ):
						?>	

						<!-- Carousel Galeria  -->
						<section id="carousel-nosotros" class="m-x-auto">
		
							<div class="js-carousel-gallery" data-items="1" data-items-responsive="1" data-margins="10" data-dots="true" data-autoplay="true" data-timeautoplay="5000">

							<?php foreach( $the_gallery as $item ): ?>
								
								<a href="<?= $item->guid ?>" class="gallery-fancybox" title="<?= $post->post_title; ?>" rel="group1">
									
									<img src="<?= $item->guid ?>" alt="<?= $item->post_content ?>" class="img-fluid d-block" />
									
								</a> <!-- /. -->

							<?php endforeach; ?>

							</div> <!-- /.js-carousel-gallerys -->
							
						</section> <!-- #carousel-nosotros  -->

						<?php endif; ?>


					</section> <!-- pageNosotrosContent  -->
					
				</div> <!-- /.text-xs-center -->
				
				<?php 
				echo '<br/><br/><br/>'; 

				/*
				 * Importar Partial de Sección de Blog
				 */
				include( locate_template('partials/home/section-blog.php') );
				?>

			</div> <!-- /.pageContentLayout  -->
			
		</div> <!-- /.col-xs-12 col-sm-9 -->
		
	</div> <!-- /.row -->

</div> <!-- /.pageWrapperLayout containerRelative -->

<!-- Footer -->
<?php get_footer(); ?>


<!-- Footer -->
<?php get_footer(); ?>