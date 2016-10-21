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

			<div class="pageContentLayout">
	
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

							<?php if( !empty($post->post_content) ) : ?>
								<?= apply_filters( 'the_content' , __( $post->post_content , LANG ) ); ?>
							<?php else: ?>
								<div class="alert alert-success" role="alert">

								  <h4 class="alert-heading"><?= __('Ops!. Disculpa las molestias',LANG); ?></h4>

								  <p><?= __('Este contenido está actualmente en mantenimiento, puedes visitar nuestras otras secciones. Gracias' , LANG ); ?></p>

								</div>

							<?php endif; ?>	

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

							<!-- Video de Tours -->
							<?php  
								$link_video = get_post_meta( $post->ID , 'link_video_tour' , true ); 
								
								if($link_video):
								
								$link_video = getidYoutube( $link_video );
							?>
							<br/><br/>

							<div class="youtube" id="<?= $link_video; ?>" style="width: 100%; max-width:500px;height:210px;"></div>

							<?php endif; ?>
							
						</div> <!-- /.col-xs-12 col-sm-6 -->

					</div> <!-- /.row -->

					<!-- Espacios --> <br/><br/>

					<!-- Sección de Mapa -->
					<?php  
						$metabox_mapa = get_post_meta( $post->ID , 'mb_geocoder_item' , true );
						if( $metabox_mapa ) :
						$coords = explode(',', $metabox_mapa);
						$lat    = $coords[0];
						$lng    = $coords[1];
					?>
						<div id="mapa-tour" data-lat="<?= $lat ?>" data-lng="<?= $lng ?>" style="width:100%; height: 355px;">
						</div>

					<?php endif; ?>

				</div> <!-- /.contentSingleTour  -->
				
			</div> <!-- /.pageContentLayout -->

		</div> <!-- /.col-xs-12 col-sm-9 -->

	</div> <!--/.row -->

</div> <!-- /.pageWrapperLayout containerRelative -->

<?php if( $metabox_mapa ) : ?>

<!-- Cargar Script de Google Maps -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNMUy9phyQwIbQgX3VujkkoV26-LxjbG0"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>

<!-- Función Cargar Mapa -->
<script type="text/javascript">

    function initMap() {

        element_map = document.getElementById('mapa-tour');
        
        if( element_map !== null  ){
        	var latitud  = element_map.getAttribute('data-lat');
        	var longitud = element_map.getAttribute('data-lng');

        	//posicion default
        	var default_position = { lat : parseFloat(latitud) , lng : parseFloat(longitud) }

        	//Crear nuevo mapa
            var map = new google.maps.Map( element_map , {
                zoom  : 14,
                center: default_position
            });

            //Marcador 
            marker = new google.maps.Marker({
                map      : map,
                animation: google.maps.Animation.DROP,
                position : default_position
            });
        }

    }

    initMap();

</script> 

<?php endif; ?>


<!-- Footer -->
<?php get_footer(); ?>
