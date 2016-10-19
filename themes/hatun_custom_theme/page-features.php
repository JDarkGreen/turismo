<?php /* Template Name: Página Destacados Template */
/**
 * Esta es la plantilla que despliega la informacion de la página
 * Destacados
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
$posts_por_page = 12;
$paged          = get_query_var('paged') ? get_query_var('paged') : 1;

$args = array(
	'order'          => 'DESC',
	'orderby'        => 'date',
	'post_status'    => 'publish',
	'post_type'      => 'theme-tours',
	'posts_per_page' => $posts_por_page,
	'paged'          => $paged,
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
							$text_title = !empty($post->post_excerpt) ? $post->post_excerpt : 'Los más Destacados';

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

					<div class="containerFlex containerAlignContent">

						<?php while($the_query->have_posts()): $the_query->the_post(); ?> 

						<?php 
							//Ruta image
							$feat_img = wp_get_attachment_url( get_post_thumbnail_id() );
							$feat_img = !empty($feat_img) ? $feat_img : IMAGES  . '/hatun_tour_default.jpg';

							//Extracto
							$text_excerpt = '' !== get_the_excerpt() ? get_the_excerpt() : 'Anímese y viaje con nosotros!!!';
						?>

							<!-- Artículo -->
							<article class="itemTourPreview sr-perpective">

								<!-- Imagen -->
								<figure class="featured-image containerRelative" style="background-image: url( <?= $feat_img; ?> )">

									<!-- Botón ver más -->
									<a href="<?= get_permalink(); ?>" class="btn-show-more text-uppercase"> 
									<?= __( 'leer más' , LANG ); ?> </a>
									
								</figure>

								<!-- Título -->
								<h2 class="text-capitalize"> <?= __( get_the_title() , LANG ); ?> </h2>

								<!-- Extracto -->
								<span class="text-excerpt"> <?= __( $text_excerpt , LANG ); ?>  </span>
								
							</article> <!-- /.itemTourPreview -->
							
						<?php endwhile; ?>
						
					</div> <!-- /.containerFlex containerAlignContent -->

					<!-- Páginación -->
					<section class="paginationTour text-xs-center text-sm-right">
						<?php $max_pages = $the_query->max_num_pages; ?>
					
						<?php for( $i = 1 ; $i <= $max_pages ; $i++ ) { ?>

						<!-- Link -->
						<a href="<?= get_pagenum_link($i); ?>" class="<?= $paged == $i ? 'active' : '' ?>"> <?= $i ?> </a>

						<?php } ?>
						
					</section> <!-- /.paginationTour -->


				<?php else: ?>

					No posts

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

