<?php  
/*
 * Template sidebar 
 * @version 1.0
 */

/**
  * Incluir Las terminos de la categoria
  * tour
  */
include( locate_template('partials/sidebar/order-cat-by-meta.php') );

?>

<!-- Contenedor De categorias -->
<section id="containerTours">
	
	<?php
	/*
	 * Recorrer las categorias
	 */

	foreach( $new_cat_tours as $cat_tour ) : 

		$cat_tour_term = get_term( $cat_tour['id'] , 'tour_category' );
	?>

		<!-- Titulo -->
		<h2 class="sidebar-title text-uppercase"> 
		<?= __( $cat_tour_term->name , LANG ); ?> </h2>

		<?php  
			/**
			  * Obtener Post segun la taxonomia
			  */
			$args = array(
				'order'          => 'ASC',
				'orderby'        => 'menu_order',
				'post_status'    => 'publish',
				'post_type'      => 'theme-tours',
				'posts_per_page' => -1,
				'tax_query' => array(
					array(
						'taxonomy' => 'tour_category',
						'field'    => 'term_id',
						'terms'    => $cat_tour_term->term_id,
					),
				),
			);

			$tours = get_posts( $args );

			foreach( $tours as $tour ):
		?>
			
			<!-- Item Tour-->
			<a href="<?= get_permalink( $tour->ID ) ?>" class="item-link-tour d-block">
				<span> <?= __( $tour->post_title , LANG ); ?> </span>
			</a>

		<?php endforeach; ?>

	<?php endforeach; ?>

</section> <!-- /end containerTours  -->

<?php  

/**
  * Widgets del Sidebar
  */

if ( is_active_sidebar( 'sidebar-main' ) ) : 

	dynamic_sidebar( 'sidebar-main' );

endif;

?>