<?php  
/***
*--------------------------------------------------------------
* Este archivo registra Sidebars
*---------------------------------------------------------------
***/

/**
 * Register two widget areas.
 *
 * @since Hatun Tours
 *
 * @return void
 */


function function_register_sidebars() 
{
    register_sidebar( array(
        'name'          => __( 'Main Sidebar Area', LANG ),
        'id'            => 'sidebar-main',
        'description'   => __( 'Despliega el sidebar Principal', LANG ),
        'before_widget' => '<aside id="%1$s" class="widget %2$s">',
        'after_widget'  => '</aside>',
        'before_title'  => '<h3 class="widget-title">',
        'after_title'   => '</h3>',
    ) );
}


add_action( 'widgets_init', 'function_register_sidebars' );


?>