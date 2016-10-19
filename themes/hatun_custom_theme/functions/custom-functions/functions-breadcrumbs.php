<?php 
/*
 * Funcion Customizada:
 * Permite obtener el breadcrumbs del objeto 
 * pasado como parametro
 */

if( !function_exists('getBreadcrumbs') ):

function getBreadcrumbs( $object_id = 1 )
{

	/*
	 * Obtener el post por ID
	 */
	$the_object = get_post( $object_id );

	if($the_object):

		ob_start();
?>
		<!-- Menu de breadcrumbs -->
		<ul id="breadcrumbs-menu" class="pull-xs-right">
			
			<li>
				<a href="<?= site_url();?>"> <?= __( 'Inicio' , LANG ); ?> </a>
			</li>
			
			<!-- Objeto actual id -->
			<li>
				<a href="<?= get_permalink($object_id); ?>"> 
				<?= __( $the_object->post_title , LANG ); ?> </a>
			</li>

		</ul> <!-- /#breadcrumbs-menu -->

		<!-- Limpiar floats -->
		<div class="clearfix"></div>

<?php

		$menu_breadcrumbs = ob_get_contents();
		ob_clean();

		return $menu_breadcrumbs;

	endif;

}


endif;