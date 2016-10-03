<?php  
/**
  * Archivo Parcial que incluye las
  * categorias de "tour"
  * 
  *
  */

/*
 * Extraer todos los tours
 */
$tour_taxonomy = 'tour_category';

$cat_tours = get_terms( array(
	'hide_empty' => false,
	'parent'     => 0,
	'taxonomy'   => $tour_taxonomy,
) );

/*
 * Ordenar por el tipo de meta
 */
//ARRAY temporal 
$new_cat_tours = [];

$i = 0;
foreach($cat_tours as $cat_tour ):
	/* Extraer meta */
	$meta_order = get_term_meta( $cat_tour->term_id , 'meta_order_taxonomy' , true );
	$meta_order = !empty($meta_order) ? $meta_order : 1;

	/* Asignar al array temporal */
	$new_cat_tours[$i]['id']    = $cat_tour->term_id;
	$new_cat_tours[$i]['order'] = intval($meta_order);

$i++; endforeach;

/* 
 * Ordenamiento
 */
function sort_array( $a , $b )
{
	return strcmp( $a['order'] , $b['order'] );
}
usort( $new_cat_tours , 'sort_array' );


?>