<?php  
/**
*  Cargar los archivos JS pero del administrador WP con sus respectivos estilos
**/

/* Add the media uploader script */
function load_admin_custom_enqueue() {

	//upload media
	wp_enqueue_media();


	//JQUERY UI
	wp_enqueue_script('wp-js-jqueryui', 'https://code.jquery.com/ui/1.12.1/jquery-ui.min.js', array('jquery' ), '1.10.3', true );


	/**
	 * ESTILOS MODAL - portBox
	 */
	wp_enqueue_style( 'wp-css-portbox', THEMEROOT . "/admin/assets/css/portbox/portBox.css" );
	wp_enqueue_script('wp-js-portbox', THEMEROOT . '/admin/assets/js/portbox/portBox.slimscroll.min.js', array('jquery' ), '1.0', true);


	/**
	* OPCIONES DEL TEMA
	**/


	//configuraciones generales de acuerdo a las librerias usadas anteriormente
	wp_enqueue_style( 'wp-css-custom-theme-admin', THEMEROOT . "/admin/assets/css/custom-theme-admin.css" );


	wp_register_script( 'wp-js-custom-theme-admin', THEMEROOT . '/admin/assets/js/custom-theme-admin.js' , array('jquery') , true );

	/**
	  * Pasar Variables
	  */
	$variables_array = array(
		'templateDir' => get_bloginfo('template_directory')
	);

	wp_localize_script( 'wp-js-custom-theme-admin' , 'objectVariable', $variables_array );
	wp_enqueue_script( 'wp-js-custom-theme-admin' );


	/**
	* JS DE SUBIR GALERIA DE IMAGENES 
	**/

	//Versión 2 de Galería
	wp_enqueue_script('wp-master-upload-gallery', THEMEROOT . '/admin/assets/js/upload-master-gallery.js', array('jquery'), '1.2' , true);


	wp_enqueue_script('wp-js-upload-gallery', THEMEROOT . '/admin/assets/js/upload-container-gallery.js', array('jquery' ), '', true);
	//Imágen Simple
	wp_enqueue_script('wp-js-upload-single-image', THEMEROOT . '/admin/assets/js/upload-single-image.js', array('jquery' ), '', true);

	/*
	 * Color Picker for inputs
	 */
	wp_enqueue_style( 'wp-color-picker' );
	wp_enqueue_script( 'wp-js-colorpicker-input' , THEMEROOT . '/admin/assets/js/wpcolorpicker-input.js' , array('jquery', 'wp-color-picker' ) , '1.0' , true );

}

add_action('admin_enqueue_scripts', 'load_admin_custom_enqueue');

?>