<?php
	/*
	 * Obtener Header
	 */
	get_header(); 

	/*
	 * Extraer opciones del tema
	 */
	$options = get_option("theme_settings");

	/*
	 * Importar partial de slider
	 */
	include( locate_template('partials/slider-home/slider-home-revolution.php') );

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
			<div class="pageContentLayout pageHome">
				
				<div class="text-xs-center">

					<!-- Titulo -->
					<h2 class="titleCommon__page">
						<?= isset($options['theme_welcome_title_home']) ? __( $options['theme_welcome_title_home'] , LANG ) : '' ?>
					</h2> <!--  -->

					<!-- Contenido -->
					<div class="content-welcome m-x-auto">
						<?= isset($options['theme_welcome_text_home']) ? apply_filters( 'the_content' , __( $options['theme_welcome_text_home'] , LANG ) ) : '' ?>
						
						<!-- Leer Más -->
						<?php  
							$page_nosotros = get_page_by_path('nosotros');
							$link_page_nosotros = $page_nosotros ? get_permalink( $page_nosotros->ID ) : '#';
						?>
						<a class="link-to-more" href="<?= $link_page_nosotros; ?>"> <?php _e( 'Leer más' , LANG ); ?> </a>

					</div> <!--  -->
					
				</div> <!-- /.text-xs-center -->

			</div> <!-- /.pageContentLayout  -->
			
		</div> <!-- /.col-xs-12 col-sm-9 -->
		
	</div> <!-- /.row -->

</div> <!-- /.pageWrapperLayout containerRelative -->

<!-- Footer -->
<?php get_footer(); ?>
