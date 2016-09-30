<?php  
/** 
* Archivo muestra o contiene los menus del tema 
**/

function register_my_menus(){
	register_nav_menus(

		array(
			'left-menu'  => __('Left Menu', LANG ),
			'right-menu' => __('Right Menu', LANG ),
		)
	);
}
add_action('init', 'register_my_menus');


?>