<?php /* Template Name: Página Promociones Template */
/**
 * Esta es la plantilla que despliega la informacion de la página
 * Promociones
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

/*
 * Obtener todos los tours que son promociones
 */
$posts_por_page = 9;
$paged          = get_query_var('paged') ? get_query_var('paged') : 1;

$args = array(
	'post_type'      => 'theme-promotions',
	'posts_per_page' => $posts_per_page,
	'paged'          => $paged , 
	'order'          => 'DESC',
	'orderby'        => 'menu_order',
);

//Query
$the_query = new WP_Query( $args );

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
			<div class="pageContentLayout pagePromotions">

				<div class="text-xs-center">

					<!-- Título -->
					<h2 class="titleCommon__page">
						<?php  
							$text_title = !empty($post->post_excerpt) ? $post->post_excerpt : 'Las mejores Promociones';

							_e( $text_title , LANG );
						?>
						
					</h2> <!-- titleCommon__page -->

					<!-- Texto -->
					<div class="content-welcome m-x-auto">
						<?= apply_filters( 'the_content' , __( $post->post_content , LANG ) ); ?>
					</div> <!-- /.content-welcome -->
				
				</div> <!-- /.text-xs-center -->

				<!-- Espacios --> <br /><br />

				<?php if($the_query->have_posts()): ?>

				<!-- Contenedor de Ítems -->
				<section class="sectionItemTours containerFlex containerAlignContent">
					
					<?php 
						while( $the_query->have_posts() ) : 
						$the_query->the_post(); 

						/* Ruta image */
						$feat_img = wp_get_attachment_url( get_post_thumbnail_id() );
						$feat_img = !empty($feat_img) ? $feat_img : IMAGES  . '/hatun_tour_default.jpg';

						/* Metabox de duración */
						$mb_duration = get_post_meta( get_the_ID() , 'duration_travel' , true );
						/* Metabox de precio */
						$mb_price = get_post_meta( get_the_ID() , 'price_travel' , true );
					?>

						<!-- Item Preview Promotion -->
						<article class="itemPreviewPromotion scroll-animate">
							
							<a href="<?= get_permalink(); ?>">
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
								<a href="<?= get_permalink(); ?>" class="btn-show-more btn-to-promotion text-uppercase"> <?= __('leer más',LANG); ?> </a>

							</div> <!-- /.containerRelative -->

						</article>

					<?php endwhile; ?>

				</section> <!-- /.sectionItemTours -->

				<?php else: ?>

				<?php endif; wp_reset_postdata(); ?>
				
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

