<?php  
/**
** Metabox que agregar un campo personalizado para todos 
** los tours que tengan un video
**/

/*|-------------------------------------------------------------------------|*/
/*|-------------- METABOX DE VIDEOS --------------------|*/
/*|-------------------------------------------------------------------------|*/

add_action( 'add_meta_boxes', 'cd_mb_video_tour' );

//llamar funcion 
function cd_mb_video_tour()
{   
    $array_custom_types = array('theme-tours');

    //Solo en productos
    add_meta_box( 'mb-video-tours', 'Video Link Tour', 'cd_mb_video_tour_cb', $array_custom_types , 'normal', 'high' );
}

//customizar box
function cd_mb_video_tour_cb( $post )
{
    // $post is already set, and contains an object: the WordPress post
    global $post;

    $values = get_post_custom( $post->ID );

    $link_video = isset( $values['link_video_tour'] ) ? $values['link_video_tour'][0] : '';

    // We'll use this nonce field later on when saving.
    wp_nonce_field( 'my_meta_box_nonce', 'meta_box_nonce' );


    ?>
        <label for="link_video_tour"> Link de Video: </label> <br />

        <input type="text" name="link_video_tour" value="<?= isset($link_video) && !empty($link_video) ? $link_video : '' ?>" size="80" /> 

        <!-- ********************************************************** -->

    <?php    
}


//guardar la data
add_action( 'save_post', 'cd_mb_qualify_products_save' );

function cd_mb_qualify_products_save( $post_id )
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
    if( isset( $_POST['link_video_tour'] ) )
        update_post_meta( $post_id, 'link_video_tour', $_POST['link_video_tour'] );
}



