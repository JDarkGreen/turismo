<?php  
/**
** Metabox que agregar un campo personalizado para todos 
** los servicios en el cual setea la multiple data
**/

/*|-------------------------------------------------------------------------|*/
/*|----------------- METABOX DE LISOS --------------------|*/
/*|-------------------------------------------------------------------------|*/

add_action( 'add_meta_boxes', 'cd_mb_service_data_lisos' );

//llamar funcion 
function cd_mb_service_data_lisos()
{   
    $array_custom_types = array('theme-services');

    //Solo en productos
    add_meta_box( 'mb-services-lisos', 'Multiples Datos: Lisos', 'cd_mb_services_data_lisos_cb', $array_custom_types , 'normal', 'high' );
}

//customizar box
function cd_mb_services_data_lisos_cb( $post )
{
    // $post is already set, and contains an object: the WordPress post
    global $post;

    $values = get_post_custom( $post->ID );

    $current_lisos = isset( $values['mbservicelisos'] ) ? $values['mbservicelisos'][0] : '';

    #var_dump($current_data);

    // We'll use this nonce field later on when saving.
    wp_nonce_field( 'my_meta_box_nonce', 'meta_box_nonce' );

    //seteando editores
    $settings_editor = array(
        'editor_height' => 250,
    );

    ?>
        <label for="mbservicelisos"> Escribe Texto </label>
        <?php 
            $text_lisos = isset($current_lisos) ? $current_lisos : '';

            wp_editor( $text_lisos , 'mbservicelisos' , $settings_editor ); 
        ?> 

    <?php    
}


//guardar la data
add_action( 'save_post', 'cd_mb_service_data_lisos_save' );

function cd_mb_service_data_lisos_save( $post_id )
{
    // Bail if we're doing an auto save
    if( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) return;
     
    // if our nonce isn't there, or we can't verify it, bail
    if( !isset( $_POST['meta_box_nonce'] ) || !wp_verify_nonce( $_POST['meta_box_nonce'], 'my_meta_box_nonce' ) ) return;
     
    // if our current user can't edit this post, bail
    if( !current_user_can( 'edit_post' ) ) return;
     
    // now we can actually save the data
    $allowed = array( 
        'a' => array( // on allow a tags
            'href' => array() // and those anchors can only have href attribute
        )
    );
     
    // Make sure your data is set before trying to save it
    if( isset( $_POST['mbservicelisos'] ) )
        update_post_meta( $post_id, 'mbservicelisos', $_POST['mbservicelisos'] );
}



