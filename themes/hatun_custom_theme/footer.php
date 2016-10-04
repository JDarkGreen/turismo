<?php
/**
 * La plantilla que muestra el footer
 *
 * Contiene el cierre de la div #content y todo el contenido después de
 *
 * @package WordPress
 * @subpackage Aqua Spa
 * @since Aqua Spa 1.0
 */

//Extraer todas las opciones de personalización
$options = get_option("theme_settings");

//var_dump($options);

?>
	
	<footer id="mainFooter" class="mainFooter">

		<!-- Wrapper de Contenido  -->
		<div class="pageWrapperLayout containerRelative">

			<div class="row">
				
				<!-- Item Footer -->
				<div class="col-xs-12 col-sm-4">

					<article class="itemFooter containerFlex containerAlignContent">

						<!-- Logo -->
						<h1 id="mainLogoFooter">
							<a href="<?= site_url() ?>">
								<img src="<?= IMAGES ?>/logo_footer.png" alt="<?php bloginfo('description') ?>" class="img-fluid d-block m-x-auto" />
							</a>
						</h1> <!-- /mainLogoFooter -->
						
						<div id="text-footer">
							<?= isset($options['theme_footer_text']) && !empty($options['theme_footer_text']) ? apply_filters( 'the_content' , $options['theme_footer_text'] ) : ''; ?>
						</div>
						
					</article> <!-- /.itemFooter -->
					
				</div> <!-- /.col-xs-12 col-sm-4 -->

				<!-- Item Footer Redes Sociales -->
				<div class="col-xs-12 col-sm-4">

					<article class="itemFooter text-xs-center">

						<!-- Título -->
						<h2 class="text-uppercase title-footer">
							<?php _e( 'redes sociales' , LANG ); ?>
						</h2>

						<div class="d-block clearfix"></div>

						<!-- Menu de Redes Sociales -->
						<?php include( locate_template('partials/social/menu-footer-social.php') ); ?>
						
					</article> <!-- /.itemFooter -->
					
				</div> <!-- /.col-xs-12 col-sm-4 -->

				<!-- Item Footer Datos -->
				<div class="col-xs-12 col-sm-4">

					<article class="itemFooter">

						<!-- Título -->
						<h2 class="text-uppercase title-footer">
							<?php _e( 'datos' , LANG ); ?>
						</h2>

						<div class="d-block clearfix"></div>

						<!-- Menu datos de Contacto -->
						<?php include( locate_template('partials/data-contact.php') ); ?>
						
					</article> <!-- /.itemFooter -->
					
				</div> <!-- /.col-xs-12 col-sm-4 -->

			</div> <!-- /.row -->

		</div> <!-- /.pageWrapperLayout containerRelative -->

		<!-- Sección Desarrollo -->
		<section class="mainFooter__develop text-xs-center">
			<?= '&copy; ' . date('Y') . 'Hatun Tours. '; ?>
			<?= __( 'Derechos reservados Design by ' ); ?>
			<a href="http://www.ingenioart.com/" target="_blank"> INGENIOART </a>
		</section>
		
	</footer> <!-- /.#mainFooter -->
	
	</div> <!-- /end sliderbar container -->

	<?php wp_footer(); ?>

	
	<script> var url = "<?= THEMEROOT ?>"; </script>


</body>
</html>
