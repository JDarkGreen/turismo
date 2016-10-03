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

		<?php 
			wp_nav_menu(
				array(
				'menu_class'     => 'main-menu',
				'theme_location' => 'main-menu'
			));
		?>
		
	</div> <!-- /.pageWrapperLayout -->
	
</nav> <!-- /.mainNavigation -->