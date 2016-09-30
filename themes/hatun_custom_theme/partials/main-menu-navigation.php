<?php  
/**
 *  Archivo Partial que muestra 
 *  el menu de navegacion principal
**/

/**
  * Todas las funciones se encuentran en functions/custom-functions.php
  */

?>

<nav id="mainNavigation" class="mainNavigation">
	
	<!-- Contenedor Layout -->
	<div class="pageWrapperLayout">

		<div class="row">
		
			<!-- Left menu -->
			<div class="col-sm-5">
			<?php 
				wp_nav_menu(
					array(
					'menu_class'     => 'left-menu',
					'theme_location' => 'left-menu'
				));
			?>
			</div> <!-- /col-sm-5 -->

			<!-- Logo -->
			<div class="col-sm-2">
				
				<h1 id="mainLogo">
					<a href="<?= site_url(); ?>">
						<img src="<?= $logo_theme_url; ?>" alt="<?php bloginfo('description'); ?>" class="img-fluid d-block m-x-auto" />
					</a>
				</h1> <!-- /.mainLogo -->

			</div> <!-- /.col-sm-2 -->

			<!-- Right menu -->
			<div class="col-sm-5">
			<?php 
				wp_nav_menu(
					array(
					'menu_class'     => 'right-menu',
					'theme_location' => 'right-menu'
				));
			?>
			</div> <!-- /col-sm-5 -->
			
		</div> <!-- /.row -->

	</div> <!-- /.pageWrapperLayout -->
	
</nav> <!-- /.mainNavigation -->