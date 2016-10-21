<?php /* Template Name: Página Reservas Template */
/**
 * Esta es la plantilla que despliega la informacion de la página
 * Reservas
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
			<div id="pageReservas" class="pageContentLayout">

				<div class="text-xs-center">

					<!-- Título -->
					<h2 class="titleCommon__page">
						<?php  
							$text_title = !empty($post->post_excerpt) ? $post->post_excerpt : 'Reserva tu Viaje';

							_e( $text_title , LANG );
						?>
						
					</h2> <!-- titleCommon__page -->

					<!-- Texto -->
					<div class="content-welcome m-x-auto">
						<?= apply_filters( 'the_content' , __( $post->post_content , LANG ) ); ?>
					</div> <!-- /.content-welcome -->

					<!-- Espacio  --> <br /><br /><br />

					<!-- Contenedor y Formulario de Reserva -->
					<section>
						
						<!-- Título -->
						<h2 class="titleCommon__section text-xs-left">
							<span> <?= __( 'Reservación :' , LANG ); ?></span>
						</h2>

						<!-- Formulario Reserva -->
						<form id="form-reservation" class="formularyCommon" action="" method="POST">

							<!-- Nombres y apellidos -->
							<label for="input_name"></label>
							<input type="text" id="input_name" name="input_name" placeholder="<?php _e( 'Nombre y Apellidos:', LANG ); ?>" required />

							<!-- Nombres y apellidos -->
							<label for="input_phone"></label>
							<input type="text" id="input_name" name="input_name" placeholder="<?php _e( 'Nombre y Apellidos:', LANG ); ?>" required />
							
						</form> <!-- /#form-reservation -->

					</section> <!-- /section. -->
				
				</div> <!-- /.text-xs-center -->

				<!-- Espacios --> <br /><br />

			</div> <!-- /.pageContentLayout  -->
			
		</div> <!-- /.col-xs-12 col-sm-9 -->
		
	</div> <!-- /.row -->

</div> <!-- /.pageWrapperLayout containerRelative -->

<!-- Footer -->
<?php get_footer(); ?>


<!-- Footer -->
<?php get_footer(); ?>