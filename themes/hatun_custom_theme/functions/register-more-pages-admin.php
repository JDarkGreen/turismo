<?php  
/*
 * Archivo que permite agregar más menus de páginas
 * para el administrador de wordpress . Casos como las 
 * galerías etc.
 */

/*
 * Agregar función gracias al Hook
 */
add_action( 'admin_menu', 'add_more_page_to_admin'); 

/* Function callback hook */
function add_more_page_to_admin()
{
	
	/* Array de Elementos que tendrá la página */
	$args_menu_pages = array();

	/* Registrar Página de Galería */
	$args_menu_pages[] = array(
		'title_page' => 'Galería de Imágenes | ' . get_bloginfo('name'),
		'text_menu'  => 'Galería de Imágenes',
		'capability' => 'manage_options',
		'menu_slug'  => 'gallery_theme',
		'function'   => 'render_gallery_page',
		'icon_url'   => IMAGES . '/icons/gallery.png',
		'position'   => 12, 
	);

	/* Loop para registrar */
	for ( $i = 0 ; $i < count($args_menu_pages) ; $i++) 
	{ 
		//Actual Ítem de Página
		$item_page = $args_menu_pages[$i];

		//Agregar el Menú
		add_menu_page( $item_page['title_page'] , $item_page['text_menu'] , $item_page['capability'] , $item_page['menu_slug'] , $item_page['function'] , $item_page['icon_url'] , $item_page['position'] );
	}
	
}


/*
 * Incluir Las Funciones Necesarias 
 */

/* Renderizado de Galería de Tema */
$path_page_gallery = realpath( dirname(dirname(__FILE__)) . '/admin/more-page-admin/page-gallery/render-page-gallery.php' );
if( $path_page_gallery )
include( $path_page_gallery );



