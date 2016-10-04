<?php  
/**
  * ARCHIVO PARTIAL QUE MUESTRA LAS ENTRADAS DEL BLOG DE LA WEB
  */

$args = array(
	'order'          => 'DESC',
	'orderby'        => 'date',
	'post_status'    => 'publish',
	'post_type'      => 'post',
	'posts_per_page' => 3,
);

$posts = get_posts( $args );

?>

<section class="pageInicioBlog">

	<!-- Título -->
	<h2 class="titleCommon__section bg-line-green">
		<span> <?php _e( 'Visita nuestro Blog' , LANG ); ?> </span>
	</h2>

	<div class="containerFlex">
		
		<?php foreach( $posts as $entrada ): ?>

			<?php  
				$feat_img = has_post_thumbnail($entrada->ID) ? wp_get_attachment_url( get_post_thumbnail_id($entrada->ID) ) : IMAGES . '/hatun_tour_default.jpg';
			?>

			<!-- Item -->
			<article class="itemPreviewPost">
				
				<!-- Imagen Destacada -->
				<figure class="featured-image containerRelative">
					
					<a href="<?= get_permalink($entrada->ID); ?>">
	
						<img src="<?= $feat_img; ?>" alt="<?= $entrada->post_name; ?>" class="img-fluid d-block m-x-auto" />

						<div class="date-post text-uppercase text-xs-center">
							<span class="d-block"> <?= get_the_date( 'd' , $entrada->ID  ); ?> </span>
							<?= __( get_the_date( 'F' , $entrada->ID ) , LANG ) . '<br/>' ; ?>
							<?= get_the_date( 'Y' , $entrada->ID ); ?>
						</div>
						
					</a> <!-- /. -->

				</figure> <!--  -->

				<!-- Titulo -->
				<h2 class="text-uppercase"> <?= __( $entrada->post_title , LANG ); ?> </h2>

			</article> <!-- /.itemPreviewPost -->

		<?php endforeach; ?>

	</div> <!-- /.containerFlex -->
	
</section> <!-- /.pageInicioBlog -->