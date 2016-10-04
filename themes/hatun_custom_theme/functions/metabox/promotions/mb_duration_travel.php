<?php  
/**
  * version 1.0
  * Metabox que incluye campo para 
  * setear la duración del viaje
  */
/*|-------------------------------------------------------------------------|*/
/*|----------------- METABOX DE DURACIÓN  --------------------|*/
/*|-------------------------------------------------------------------------|*/

add_action( 'add_meta_boxes', 'cd_mb_duration_travel' );

//llamar funcion 
function cd_mb_duration_travel()
{   
    $array_custom_types = array('theme-promotions');

    //Solo en productos
    add_meta_box( 'mb-duration-travel', 'Duración del Viaje', 'cd_mb_duration_travel_cb', $array_custom_types , 'side', 'high' );
}

//customizar box
function cd_mb_duration_travel_cb( $post )
{
    // $post is already set, and contains an object: the WordPress post
    global $post;

    $values = get_post_custom( $post->ID );

    $duration_travel = isset( $values['duration_travel'] ) ? $values['duration_travel'][0] : '';

    // We'll use this nonce field later on when saving.
    wp_nonce_field( 'my_meta_box_nonce', 'meta_box_nonce' );


    ?>
        <label for="duration_travel"> <?= __('Duración Viaje', LANG ); ?> </label> <br />

        <input type="text" name="duration_travel" value="<?= isset($duration_travel) && !empty($duration_travel) ? $duration_travel : '' ?>" /> 

        <!-- ********************************************************** -->

    <?php    
}


//guardar la data
add_action( 'save_post', 'cd_mb_duration_travel_save' );

function cd_mb_duration_travel_save( $post_id )
{
    // Bail if we're doing an auto save
    if( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) return;
     
    // if our nonce isn't there, or we can't verify it, bail
    if( !isset( $_POST['meta_box_nonce'] ) || !wp_verify_nonce( $_POST['meta_box_nonce'], 'my_meta_box_nonce' ) ) return;
     
    // if our current user can't edit this post, bail
    if ( !current_user_can( 'edit_post', $post_id ) ) return;
     
    // now we can actually save the data
    $allowed = array( 
        'a' => array( // on allow a tags
            'href' => array() // and those anchors can only have href attribute
        )
    );
     
    // Make sure your data is set before trying to save it
    if( isset( $_POST['duration_travel'] ) )
        update_post_meta( $post_id, 'duration_travel', $_POST['duration_travel'] );
}


?>