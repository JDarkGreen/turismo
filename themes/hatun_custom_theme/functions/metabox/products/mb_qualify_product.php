<?php  
/**
** Metabox que agregar un campo personalizado para todos 
** los productos muestra la calificación
**/

/*|-------------------------------------------------------------------------|*/
/*|----------------- METABOX DE CALIFIFACIÓN --------------------|*/
/*|-------------------------------------------------------------------------|*/

add_action( 'add_meta_boxes', 'cd_mb_qualify_product' );

//llamar funcion 
function cd_mb_qualify_product()
{   
    $array_custom_types = array('theme-products');

    //Solo en productos
    add_meta_box( 'mb-qualify-product', 'Calificación Producto', 'cd_mb_qualify_product_cb', $array_custom_types , 'side', 'high' );
}

//customizar box
function cd_mb_qualify_product_cb( $post )
{
    // $post is already set, and contains an object: the WordPress post
    global $post;

    $values = get_post_custom( $post->ID );

    $qualify = isset( $values['product_qualify'] ) ? $values['product_qualify'][0] : '';

    // We'll use this nonce field later on when saving.
    wp_nonce_field( 'my_meta_box_nonce', 'meta_box_nonce' );


    ?>
        <label for="product_qualify"> Calificación de Estrellas </label> <br />

        <input type="number" name="product_qualify" min="0" value="<?= isset($qualify) && !empty($qualify) ? $qualify : 0 ?>" /> 

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
    if( isset( $_POST['product_qualify'] ) )
        update_post_meta( $post_id, 'product_qualify', $_POST['product_qualify'] );
}



