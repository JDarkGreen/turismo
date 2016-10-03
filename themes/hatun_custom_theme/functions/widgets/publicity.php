<?php  
/**
  * Widget que despliega una imagen y un enlace
  * para redireccionar
  */
	
	class Custom_Publicity_Widget extends WP_Widget {
	
		public function __construct() 
		{
			parent::__construct(
				'custom_publicity_w',
				'Publicidad Widget',
				array('description' => __('Muestra un bloque de publicidad con un link', LANG ))
			); 
		}
		
		public function form($instance) {
			$defaults = array(
				'title'   => __( 'Publicidad' , LANG ),
				'ad_img'  => IMAGES . '/demo/widget_image.jpg',
				'ad_link' => get_bloginfo('url'),
			);
			
			$instance = wp_parse_args( (array) $instance, $defaults );
			
			?>
			<!-- The Title -->
			<p>
				<label for="<?php echo $this->get_field_id('title') ?>"><?php _e('Title:', 'adaptive-framework'); ?></label>
				<input type="text" class="widefat" id="<?php echo $this->get_field_id('title'); ?>" name="<?php echo $this->get_field_name('title'); ?>" value="<?php echo esc_attr($instance['title']); ?>" />
			</p>

			<!-- Ad Image -->
			<p>
			
			<section class="js-containerParentGallery">

				<?php  
					//Image Url
					$url_image = $instance['ad_img'];
				?>

        		<!-- Input Oculto -->
        		<label for="<?= $this->get_field_name('ad_img'); ?>"> Imágen : </label>
        		<input type="hidden" id="<?= $this->get_field_id('ad_img'); ?>" name="<?= $this->get_field_name('ad_img'); ?>" value="<?= $url_image; ?>" />

        		<!-- Contenedor Padre -->
        		<div class="customize-img-container">

	            	<!-- Boton Agregar Elemento -->
	            	<button class="button button-primary js-add-custom-img" data-type="image" data-field-id="<?= $this->get_field_id('ad_img'); ?>">
	                <?= empty($url_image) ? 'Agregar Elemento' : 'Cambiar Elemento'; ?> </button>  
	            
	            	<!-- Espaciado -->
	            	<div style="height: 5px;"> </div>

	            	<!-- Botón remover -->
	            	<button class="button button-primary js-remove-custom-img" data-field-id="<?= $this->get_field_id('ad_img'); ?>">
	                <?php _e( 'Remover Elemento' , LANG ); ?> </button>

	            	<!-- Contenedor Hijo -->
	            	<div class="container-preview" style="background: rgba(0,0,0,.3); border: 1px dotted black; margin: 10px 0; text-align: center; width : 150px; overflow: hidden;">

	                	<?php if(!empty($url_image)) : ?>
	                    	<img src="<?= $url_image; ?>" alt="" width="100%" height="auto" />
	                	<?php endif; ?>
	            	</div>
	            
	        	</div> <!-- /.customize-img-container -->

	        </section> <!-- /.js-containerParentGallery -->

			</p>

			<!-- Ad Link -->
			<p>
				<label for="<?php echo $this->get_field_id('ad_link') ?>"><?php _e('Link de Imágen:', LANG ); ?></label>

				<?php  
					/*
					 * Obtener Post y Páginas
					 */

					$args = array(
						'order'          => 'ASC',
						'orderby'        =>'name',
						'post_status'    => 'publish',
						'post_type'      => array('post','page'),
						'posts_per_page' => -1,
					); 

					$items = get_posts( $args );

					/*
					 * Elemento actualmente seleccionado
					 */
					$current_link = $instance['ad_link'];
				?>

				<select id="<?php echo $this->get_field_id('ad_link'); ?>" name="<?php echo $this->get_field_name('ad_link'); ?>" >

					<option value="#" <?php selected( $current_link , '#' , true ) ?> > 
					<?= __( 'Sin Link' , LANG ); ?> </option>

				<?php foreach( $items as $item ): ?>

					<option value="<?= get_permalink( $item->ID ); ?>" <?php selected( $current_link , get_permalink( $item->ID ) , true ) ?> > 
					<?= __( $item->post_title , LANG ); ?> </option>

				<?php endforeach; ?>
					
				</select> <!-- /end of select -->

			</p>

			
			<?php
		}
		
		public function update($new_instance, $old_instance) {
			$instance = $old_instance;
			
			// The Title
			$instance['title']   = strip_tags($new_instance['title']);
			
			// The Ad Images
			$instance['ad_img']  = $new_instance['ad_img'];
			
			// The Ad Links
			$instance['ad_link'] = $new_instance['ad_link'];
			
			return $instance;
		}
		
		public function widget($args, $instance) 
		{
			extract($args);
			
			// Get the title and prepare it for display
			$title     = apply_filters('widget_title', $instance['title']);
			
			// Get the ad images
			$ad_img  = $instance['ad_img'];
			
			// Get the ad links
			$ad_link = $instance['ad_link'];

			if( !empty($ad_img) ):
?>
			
			<div class="itemWidgetPublicity">
				
				<!-- Link -->
				<a href="<?= $ad_link; ?>">
					
					<img src="<?= $ad_img; ?>" alt="<?= $title; ?>" class="img-fluid d-block m-x-auto" />

				</a>
				
			</div> <!-- /.itemWidgetPublicity -->

<?php
			endif;
		}

	}

	register_widget('Custom_Publicity_Widget');

?>