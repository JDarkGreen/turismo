<?php 

/*
 * ARCHIVO QUE MODIFICA O CAMBIA ALGUNOS ESTILOS EN EL PANEL DE ADMINISTRACION O 
 * LOGIN DE WORDPRESS
 */ 


/*
 * ESTILOS 
 */

function my_custom_login_page_css()
{
	wp_enqueue_style( 'login-css', THEMEROOT . "/admin/assets/css/login.css" );
}

add_action('login_head', 'my_custom_login_page_css');


/*
 * REDIRECCIÓN DEL LOGO
 */

function my_custom_login_url()
{
	return get_bloginfo('url');
}

add_filter('login_headerurl', 'my_custom_login_url' );

/*
 * ENCOLAR CSS's EN ADMINISTRADOR
 */
add_action( 'admin_enqueue_scripts', 'load_custom_wp_admin_style' );

function load_custom_wp_admin_style() {
	
	/* Encolar CSS : Subida de Imágenes y Botones */
	wp_enqueue_style( 'wp-upload-images' , THEMEROOT . '/admin/assets/css/style-upload-images.css'  , '' , 1.0  );

}