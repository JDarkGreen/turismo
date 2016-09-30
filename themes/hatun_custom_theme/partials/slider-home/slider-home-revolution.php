<?php  

/**
* Plantila Slider Home modificado para trabajar con libreria 
* SLIDER REVOLUTION
**/

	// The Query
	$args = array(
		'order'          => 'ASC',
		'orderby'        => 'menu_order',
		'post_status'    => 'publish',
		'post_type'      => 'slider-home',
		'posts_per_page' => -1,
	);

	$the_query = new WP_Query( $args );

	//Control Loop
	$i = $j = $k = 0;

	// The Loop
	if ( $the_query->have_posts() ) : 
?>

<!-- START REVOLUTION SLIDER 5.0 -->
<div class="rev_slider_wrapper">
	
	<div id="carousel-home" class="slider rev_slider manual" data-version="5.0">
  		
  		<ul style="padding: 0; margin: 0; list-style-type: none;"> 

  			<?php while( $the_query->have_posts() ) : $the_query->the_post(); ?>

  			<?php  
  				/*
  				 * Obtener metabox de efecto de transición para el slider
  				 */
  				$mb_transition = get_post_meta( get_the_ID() , 'mb_rev_slider_select' , true );

  				$mb_transition = !empty($mb_transition) ? $mb_transition : 'notransition';
  			
  				/*
  				 * Ruta Imagen destacada
  				 */
  				$feat_img = wp_get_attachment_url( get_post_thumbnail_id( get_the_ID() ) );
  			?>	
   			
   			<li data-transition="<?= $mb_transition; ?>"> 
     			
     			<!-- MAIN IMAGE -->
				<img src="<?= $feat_img ?>"  alt=""  width="1920" height="1080" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina />

     			<!-- LAYER NR -->
     			<div class="tp-caption Concept-Title tp-resizeme rs-parallaxlevel-2 skrollable skrollable-between" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" data-width="['none','none','none','575']" data-height="none" data-transform_idle="o:1;" data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeInOut;" data-transform_out="x:left(R);s:1000;e:Power3.easeIn;" data-start="800" data-splitin="none" data-splitout="none" data-responsive_offset="on">
     				
     				<!-- Container Text -->
     				<div class="contentTextSlider text-xs-center">
     					
     					<h2><strong><?= get_the_title(); ?></strong></h2>

     					<!-- Botón a Contacto -->
     					<?php  
     						$page_contacto = get_page_by_title('Contactanos');
     						$link_page_contacto = !empty($page_contacto) ? get_permalink($page_contacto->ID) : '#';
     					?>
     					<a id="btn-slider-home" href="<?= $link_page_contacto; ?>" class="btn-show-more text-uppercase">
     						<?= __( 'viaja ahora' , LANG ); ?>
     					</a>

     				</div> <!-- /.contentTextSlider -->

     			</div>

   			</li> <!-- /end li -->

   			<?php endwhile; ?>

  		</ul>  <!-- /end ul -->
	
	</div><!-- END REVOLUTION SLIDER -->

</div><!-- END OF SLIDER WRAPPER -->



<?php endif; wp_reset_postdata(); ?>