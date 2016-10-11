<?php /* Single Name: Promociones Template */
/**
 * Esta es la plantilla que despliega la informacion del single
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

/*
 * Obtener página promociones 
 */
$banner = get_page_by_path('promociones'); //var_dump($banner);
$banner_title = __( $banner->post_title , LANG );

include( locate_template('partials/banner-top-page.php') );

/*
 * Importar Navegación Principal
 */
include( locate_template('partials/main-menu-navigation.php') );

/*
 * Metabox o información de este item
 */

/* Metabox de duración */
$mb_duration = get_post_meta( $post->ID , 'duration_travel' , true );
/* Metabox de precio */
$mb_price    = get_post_meta( $post->ID , 'price_travel' , true );

/*
 * Página Contacto
 */
$page_contact = get_page_by_title('contactanos');
$page_contact_link = !empty($page_contact) ? get_permalink($page_contact->ID) : '#';

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
			<main class="singlePromotion pageContentLayout">
				
				<div class="text-xs-center">
	
					<!-- Título -->
					<h2 class="titleCommon__page text-xs-center"> <?= __( $post->post_title , LANG ); ?> 
					</h2> <!-- ./the-title -->

					<!-- Subtitle -->
					<h3 class="the-subtitle"> 
						<?= __($mb_duration,LANG) . ' ' . $mb_price ?>
					</h3> <!-- /.the-title -->
					
				</div> <!-- /.text-xs-center -->

				<!-- Espacio --> <br />

				<!-- Imágen Destacada -->
				<?php if( has_post_thumbnail($post->ID) ): ?>
				
					<figure class="featured-image scroll-animate-rotate">

						<?= get_the_post_thumbnail( $post->ID , 'full' , array('class'=>'img-fluid d-block m-x-auto') ); ?>					
					</figure>
						
				<?php endif; ?>

				<!-- Espacio --> <br />

				<!-- Texto y Párrafo -->
				<div class="singlePromotionContent">
					<?= apply_filters( 'the_content' , __( $post->post_content , LANG ) ); ?>

					<!-- Espacio --> <br />

					<!-- Botón ver más  -->
					<a href="<?= $page_contact_link; ?>" class="btn-show-more text-uppercase"> <?= __('reservar',LANG); ?> </a>

				</div>

			</main> <!-- /.singlePromotion pageContentLayout  -->

		</div> <!-- /.col-xs-12 col-sm-9 -->

	</div> <!-- /.row -->

</div> <!-- /.pageWrapperLayout containerRelative -->


<!-- Footer -->
<?php get_footer(); ?>
