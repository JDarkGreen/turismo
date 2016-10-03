<?php
/**
 * Theme AQUA SPA funciones y definiciones
 *
 * Configurar el tema y proporciona algunas funciones auxiliares , que se utilizan en el
 * Tema como etiquetas de plantillas personalizadas . Otros están unidos a la acción y el filtro
 * Ganchos en WordPress para cambiar la funcionalidad básica .
 *
 * Cuando se utiliza un tema niño puede anular ciertas funciones (aquellos envueltos
 * En un function_exists ( ) llamada) definiéndolos por primera vez en su tema del niño
 * Archivo functions.php . archivo functions.php del tema de los niños está incluido antes
 * Archivo del tema de los padres , por lo que se utilizarían las funciones de temas niño.
 *
 * @link https://codex.wordpress.org/Theme_Development
 * @link https://codex.wordpress.org/Child_Themes
 *
 * Functions that are not pluggable (not wrapped in function_exists()) are
 * instead attached to a filter or action hook.
 *
 * For more information on hooks, actions, and filters,
 * {@link https://codex.wordpress.org/Plugin_API}
 */

/**
 * Opciones del tema
 */

$options = get_option("theme_settings");


/**
 * Definiendo Constantes
 */
require('functions/constants.php');


/******************************************************************/
/* 	Archivos de Condiguración en el Administrador */
/*******************************************************************/

/*-----------------
* Agregar nuevas columnas 
*------------------*/
require('admin/custom/new-columns.php');


/**
* Setear scripts archvos css y javascript de la administracion del tema
**/
//css
require('admin/assets/custom-styles.php');
//javascript
require('admin/assets/custom-scripts.php');

/*-----------------
* Opciones del tema
*------------------*/
include('admin/theme-customizer-modal.php');



/*******************************************************************/
/* 	Archivos de Condiguración en el Tema  */
/*******************************************************************/

/*-----------------
 * Registrar Menus
*------------------*/
include('functions/register-menu.php');

//Modificar menu inicio
function new_nav_menu_items( $items , $args ) {

  $homelink = '';
    if( $args->theme_location === 'main-menu' ) :
      
      $active_class = is_home() ? 'active' : '';
    
      $homelink = '<li class="home '.$active_class.'">';
      $homelink .= '<a href="'.home_url( '/' ) . '">';
      $homelink .= '<i class="fa fa-home" aria-hidden="true"></i>';
      $homelink .= '</a></li>';
    endif;
    
    $items = $homelink . $items;
    return $items;
}
add_filter( 'wp_nav_menu_items', 'new_nav_menu_items', 10, 2 );


/*-----------------
/* Agregando nuevos tipos de post
*------------------*/
require('functions/register-type-posts.php');

/*-----------------
/* Registrar Metabox
*------------------*/

include('functions/register-metabox.php');

/*-----------------
/* Registrar Taxonomias
*------------------*/

include('functions/register-taxonomies.php');

/*-----------------
/* Customizar Campos Taxonomias
*------------------*/

include('functions/taxonomy/custom-fields-taxonomies.php');


/*-----------------
/* Registrar Sidebar
*------------------*/

include('functions/register-sidebars.php');


/*-----------------
/* Soporte de tema
*------------------*/
include('functions/support-formats.php');

/*-----------------
/* Cargar archivos JS 
*------------------*/

include('functions/scripts-js.php');

/*-----------------
/* FUNCIONES PERSONALIZADAS
*------------------*/

include('functions/custom-functions.php');

/**------------------------------------------------
  * CARGAR WIDGETS
  *------------------------------------------------
  */
require_once('functions/widgets/publicity.php');

