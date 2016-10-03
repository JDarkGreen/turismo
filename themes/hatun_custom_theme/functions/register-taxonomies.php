<?php  
/***
*--------------------------------------------------------------
* Este archivo registra las nuevas taxonomías agregadas
*---------------------------------------------------------------
***/

//create a custom taxonomy
add_action( 'init', 'create_category_taxonomy', 0 );

function create_category_taxonomy() 
{

  /**
  * Categoría Imágenes
  */
  $labels_images = array(
    'name'             => __( 'Categoría Imágenes'),
    'singular_name'    => __( 'Categoría Imágenes'),
    'search_items'     => __( 'Buscar Categoría Imágenes'),
    'all_items'        => __( 'Todas Categorías de Imágenes' ),
    'parent_item'      => __( 'Categoría padre de Imágenes' ),
    'parent_item_colon'=> __( 'Categoría padre:' ),
    'edit_item'        => __( 'Editar categoría de Imágenes' ), 
    'update_item'      => __( 'Actualizar categoría de Imágenes' ),
    'add_new_item'     => __( 'Agregar nueva categoría de Imágenes' ),
    'new_item_name'    => __( 'Nuevo nombre categoría de Imágenes' ),
    'menu_name'        => __( 'Categoria Imágenes' ),
  ); 

  // Ahora registramos esta taxonomia
  register_taxonomy('images_category',array('theme-images'), array(
    'hierarchical'     => true,
    'labels'           => $labels_images,
    'show_ui'          => true,
    'show_admin_column'=> true,
    'query_var'        => true,
    'rewrite'          => array( 'slug' => 'images-category' ),
  ));  


  /**
  * Categoría Tour
  */
  $labels_tour = array(
    'name'             => __( 'Categoría Tour'),
    'singular_name'    => __( 'Categoría Tour'),
    'search_items'     => __( 'Buscar Categoría Tour'),
    'all_items'        => __( 'Todas Categorías de Tour' ),
    'parent_item'      => __( 'Categoría padre de Tour' ),
    'parent_item_colon'=> __( 'Categoría padre:' ),
    'edit_item'        => __( 'Editar categoría de Tour' ), 
    'update_item'      => __( 'Actualizar categoría de Tour' ),
    'add_new_item'     => __( 'Agregar nueva categoría de Tour' ),
    'new_item_name'    => __( 'Nuevo nombre categoría de Tour' ),
    'menu_name'        => __( 'Categoria Tour' ),
  ); 

  // Ahora registramos esta taxonomia
  register_taxonomy('tour_category',array('theme-tours'), array(
    'hierarchical'     => true,
    'labels'           => $labels_tour,
    'show_ui'          => true,
    'show_admin_column'=> true,
    'query_var'        => true,
    'rewrite'          => array( 'slug' => 'tour-category' ),
  ));  



}


?>