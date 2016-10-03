<?php 
/**
** Archivo crea campos personalizados para las taxonomías especificadas
*/

/**
* TAXONOMIAS ESPECIFICADAS
*/

$taxonomies   = array();
$taxonomies[] = 'tour_category'; //c

/**
* Funciones para hacer la llamada callback
**/

/** AGREGAR NUMERO DE ORDEN **/
function theme_add_num_order( $value_number = 1 )
{
    ob_start(); //Encienda el búfer de salida ?>
    <tr class="form-field">  
        <th scope="row" valign="top">  
            <label for="term_meta[theme_tax_order]"><?php _e('Asignación Prioridad - Orden: '); ?></label> 
        </th>   <!-- /.scope="row" -->
        <td>
            <input type="number" name="term_meta[theme_tax_order]" value="<?= $value_number; ?>" min="1" style="max-width: 100px;" />
            <p class="description"> <?php _e( "Determina el orden de este termino: 1 = mayor prioridad , 2 , 3 etc", LANG ); ?></p>
            <!-- Separación--> <br />
        </td>
    </tr> <!-- /.form-field -->
    <?php
        $output_function_order = ob_get_contents(); #Devolver el contenido del búfer de salida
        ob_clean(); //Esta función desecha el contenido del búfer de salida. 
        return $output_function_order;
}


/** CAMPO PERSONALIZADO COLOR TAXONOMIA  **/
function theme_add_color( $value_color = "#000000" )
{
    ob_start(); //Encienda el búfer de salida ?>
    <tr class="form-field">  
        <th scope="row" valign="top">  
            <label for="term_meta[theme_tax_color]"><?php _e('Asignar Color Destacado: '); ?></label> 
        </th>   <!-- /.scope="row" -->
        <td>
            <p class="description"> <?php _e( "Por defecto Negro", LANG ); ?></p>

            <input type="text" class="js-add-theme-color" name="term_meta[theme_tax_color]" value="<?= $value_color; ?>" />

            <!-- Separación--> <br />
        </td>
    </tr> <!-- /.form-field -->
    <?php
        $output_function = ob_get_contents(); #Devolver el contenido del búfer de salida
        ob_clean(); //Esta función desecha el contenido del búfer de salida. 
        return $output_function;
}


/**---------------------------------------------------------------------------**/

function theme_taxonomy_add_custom_fields()
{
    /**
    *  CAMPO PERSONALIZADO ORDEN
    **/
    echo theme_add_num_order();

    /**
    * CAMPO PERSONALIZADO COLOR TAXONOMIA
    **/
    echo theme_add_color();

}


function theme_taxonomy_edit_custom_fields( $term  ) {  

    /*
     * Extraer los metas de cada taxonomia
     */

    /**
    *  CAMPO PERSONALIZADO ORDEN
    **/
    $value_order = get_term_meta( $term->term_id , 'meta_order_taxonomy' , true );
    echo theme_add_num_order( $value_order );

    /**
    * CAMPO PERSONALIZADO COLOR TAXONOMIA
    **/
    $value_color = get_term_meta( $term->term_id , 'meta_color_taxonomy' , true );
    echo theme_add_color( $value_color );

?>  

<?php  
}  

// Una función de devolución de llamada para salvar nuestro campo de la taxonomía extra (s)  
function save_taxonomy_custom_fields( $term_id ) {  

    /**
    * AGREGAR  META DATA A LAS TAXONOMIAS 
    **/

    /*|** [Campo Orden] **|*/ 
    $meta_order = get_term_meta( $term_id , 'meta_order_taxonomy' , true );

    #Si ya tiene un meta data 
    if ( !empty($meta_order) ):
        
        #actualizar valor
        update_term_meta( $term_id , 'meta_order_taxonomy' , $_POST['term_meta']['theme_tax_order'] );
    else:
        #agregar meta y valor 
        add_term_meta( $term_id, 'meta_order_taxonomy' , 1 );
    endif;

    /*|** [Campo Color] **|*/ 
    $meta_color = get_term_meta( $term_id , 'meta_color_taxonomy' , true );

    #Si ya tiene un meta data 
    if ( !empty($meta_color) ):
        
        #actualizar valor
        update_term_meta( $term_id , 'meta_color_taxonomy' , $_POST['term_meta']['theme_tax_color'] );
    else:
        #agregar meta y valor 
        add_term_meta( $term_id, 'meta_color_taxonomy' , '#000000' );
    endif;



}



/**
** Agregamos los hooks necesarios solo a la taxonomía Categoría
*/

// Agregue hooks para mostrar en la página de seteo 
add_action( 'category_add_form_fields', 'theme_taxonomy_add_custom_fields');

//  Agregue los campos a categoria , utilizando nuestra función de devolución de llamada
add_action( 'category_edit_form_fields', 'theme_taxonomy_edit_custom_fields');

// Accion Guardar Agregue los campos a categoria
add_action( 'create_category', 'save_taxonomy_custom_fields');

// Accion Guardar los campos a categoria formulario editar
add_action( 'edited_category', 'save_taxonomy_custom_fields');

/**
** Agregamos los hooks necesarios segun cuantas taxonomías hayamos seteado solo personalizados 
*/
foreach( $taxonomies as $tax ):
    // Agregue hooks para mostrar en la página de seteo 
    add_action( $tax . "_add_form_fields", 'theme_taxonomy_add_custom_fields', 10, 2 );  
    
    // Agregue los campos de la taxonomía , utilizando nuestra función de devolución de llamada
    add_action( $tax . "_edit_form_fields", 'theme_taxonomy_edit_custom_fields', 10, 2 );  
  
    // Guarde los cambios realizados en la taxonomía , utilizando nuestra función de devolución de llamada 
    add_action( "edited_" . $tax , 'save_taxonomy_custom_fields', 10, 2 );  
    add_action( "create_" . $tax , 'save_taxonomy_custom_fields', 10, 2 );

endforeach; /* end of foreach*/
