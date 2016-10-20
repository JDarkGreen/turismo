<?php 

global $post; 
	

/*****************************************************************/
/**- COMUNES **/
/******************************************************************/

/**[ INCLUIR METABOX DE BANNER DE PÁGINA ]**/
include("metabox/common/mb_custom_banner.php");

/**[ INCLUIR METABOX DE GALERÍA ]**/
include("metabox/common/mb_custom_gallery.php");


/******************************************************************/
/**- SLIDER HOME **/
/******************************************************************/

/**[ INCLUIR METABOX DE REVOLUTION EFFECT ]**/
include("metabox/slider-home/mb_revolution_slider.php");

/******************************************************************/
/**- PROMOCIONES **/
/******************************************************************/

/**
  * Metabox de duración de viaje
  */
include('metabox/promotions/mb_duration_travel.php');
/**
  * Metabox de precio 
  */
include('metabox/promotions/mb_price_travel.php');


/******************************************************************/
/**- TOURS **/
/******************************************************************/

/*
 * Metabox de Video
 */
if( stream_resolve_include_path('metabox/tours/mb_video_tour.php') ):
	include('metabox/tours/mb_video_tour.php' );
endif;
/*
 * Metabox de Geolocalización
 */
if( stream_resolve_include_path('metabox/tours/mb_geocoder.php') ):
	include('metabox/tours/mb_geocoder.php' );
endif;




