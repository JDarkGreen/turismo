<?php  
/**
** Metabox que agregar un campo personalizado para todos 
** los tours para obtener su dirección de mapa
**/

/*|-------------------------------------------------------------------------|*/
/*|-------------- METABOX DE GEOLOCALIZACIÓN --------------------|*/
/*|-------------------------------------------------------------------------|*/

add_action( 'add_meta_boxes', 'cd_mb_geocoder_tour' );

//llamar funcion 
function cd_mb_geocoder_tour()
{   
    $array_custom_types = array('theme-tours');

    //Solo en productos
    add_meta_box( 'mb-geocoder-tours', 'Localización - Mapa:', 'cd_mb_geocoder_tour_cb', $array_custom_types , 'normal', 'high' );
}

//customizar box
function cd_mb_geocoder_tour_cb( $post )
{
    // $post is already set, and contains an object: the WordPress post
    global $post;

    $values = get_post_custom( $post->ID );

    $geocoder_map = isset($values['mb_geocoder_item']) && !empty($values['mb_geocoder_item']) ? $values['mb_geocoder_item'][0] : '';

    // We'll use this nonce field later on when saving.
    wp_nonce_field( 'my_meta_box_nonce', 'meta_box_nonce' );
?>
    
    <style>
        #map { height: 400px; }

        #floating-panel {
          background-color: #fff;
          border          : 1px solid #999;
          font-family     : 'Roboto','sans-serif';
          left            : 45%;
          line-height     : 30px;
          padding         : 5px;
          padding-left    : 10px;
          position        : absolute;
          text-align      : center;
          top             : 25%;
          z-index         : 5;
        }
    </style>


    <label for="geocoder_map_tour"> Selección de Mapa: NOTA !! No presionar ENTER aquí, solamente usar el botón Buscar Ubicación , para SELECCIONAR UNA UBICACIÓN Haga click sobre el marcado <b style="color:red;">Rojo</b> </label> <br />
    
    <input type="hidden" id="geocoder_map_tour" name="geocoder_map_tour" value="<?= isset($geocoder_map) && !empty($geocoder_map) ? $geocoder_map : '' ?>" size="80" /> 

    <h2 id="geocoder_map_title"> Coordenada Actual : <?= isset($geocoder_map) && !empty($geocoder_map) ? $geocoder_map : 'Sin coordenadas' ?></h2>

    <!-- Espacio --> <div> <br/> </div>

    <div id="floating-panel">
        <input id="address" type="textbox" value="Sydney, NSW (Ejemplo)"> <!-- /address -->
        <input id="submit" type="button" value="Buscar Ubicación"> <!-- /submit -->
        <input id="delete-address" type="button" value="Borrar Ubicación"> 
        <!-- /borrar ubicación -->
    </div> <!-- /floating-panel -->
    <div id="map"></div> <!-- /#map -->
         
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

    <!-- Función Cargar Mapa -->
    <script type="text/javascript">

        function initMap() {

            //coordenadas por defecto
            var default_position;

            //Si elemento existe
            element_input_map = document.getElementById('geocoder_map_tour');
            if( element_input_map !== null  )
            {
                //Valor de input metabox
                str_coords = element_input_map.value;
                //Si el valor no está vacio
                if( str_coords !== '' && str_coords.length !== 0 )
                {
                    //Crearlo a Array 
                    str_coords = str_coords.split(',' , 2);
                    console.log(str_coords);

                    default_position = { lat: parseFloat(str_coords[0]) , lng: parseFloat(str_coords[1]) };

                }else{ default_position = { lat: -34.397, lng: 150.644 }; }
            }

            //Crear nuevo mapa
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom  : 15,
                center: default_position
            });

            //Marcador 
            marker = new google.maps.Marker({
                map      : map,
                draggable: true,
                animation: google.maps.Animation.DROP,
                position : default_position
            });
            //Agregar evento al hacer click en marcador
            marker.addListener('click', function(event) {
            
                //alert( event.latLng.lat() + ' ' +event.latLng.lng() ); 
                var Latitud  = event.latLng.lat();
                var Longitud = event.latLng.lng();

                //Setear estos valores en campo de texto solo si existe 
                var element_to_set = document.getElementById('geocoder_map_tour');
                var title_to_set = document.getElementById('geocoder_map_title');

                if( element_to_set !== null && title_to_set !== null ){
                    element_to_set.value= Latitud + ',' +Longitud;
                    element_to_set.setAttribute('value', Latitud + ',' +Longitud);
                    title_to_set.innerHTML = 'Coordenada Actual : ' + Latitud + ',' +Longitud;
                }else{ console.log('elementos no existen'); }

            });

            
            //Obtener geocoder
            var geocoder = new google.maps.Geocoder();
            document.getElementById('submit').addEventListener('click', function() {
                geocodeAddress(geocoder, map);
            });
        }

        function geocodeAddress(geocoder, resultsMap) {
            
            var address = document.getElementById('address').value;
            
            geocoder.geocode({'address': address}, function(results, status) {
                if (status === google.maps.GeocoderStatus.OK) {
                    resultsMap.setCenter(results[0].geometry.location);

                    var marker = new google.maps.Marker({
                        map      : resultsMap,
                        draggable: true,
                        position : results[0].geometry.location
                    });

                    //Agregar evento al hacer click en marcador
                    marker.addListener('click', function(event) {
                    
                        //alert( event.latLng.lat() + ' ' +event.latLng.lng() ); 
                        var Latitud  = event.latLng.lat();
                        var Longitud = event.latLng.lng();

                        //Setear estos valores en campo de texto solo si existe 
                        var element_to_set = document.getElementById('geocoder_map_tour');
                        var title_to_set = document.getElementById('geocoder_map_title');

                        if( element_to_set !== null && title_to_set !== null ){
                            element_to_set.value= Latitud + ',' +Longitud;
                            element_to_set.setAttribute('value', Latitud + ',' +Longitud);
                            title_to_set.innerHTML = 'Coordenada Actual : ' + Latitud + ',' +Longitud;
                        }else{ console.log('elementos no existen'); }

                    });

                } else {
                  alert('No se puede encontrar el mapa por la siguiente razón: ' + status + ' Intente con otra ubicación aproximada');
                }
            });
        }

        function deleteMap(){
            var erase_map = document.getElementById('delete-address');
            var element_to_set = document.getElementById('geocoder_map_tour');
            var title_to_set = document.getElementById('geocoder_map_title');

            if( erase_map !== null && element_to_set !== null && title_to_set !== null  ){

                erase_map.addEventListener("click", function(event){
                    element_to_set.value = "";
                    element_to_set.setAttribute('value','');
                    title_to_set.innerHTML = 'Coordenadas Actuales: Sin Coordenadas';
                });
            }
        }

        //Llamar a funciones
        initMap(); deleteMap();

    </script>

<?php
}


//guardar la data
add_action( 'save_post', 'cd_mb_geocoder_tour_save' );

function cd_mb_geocoder_tour_save( $post_id )
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

    //Guardar Con seguridad los datos
    if( isset($_POST['geocoder_map_tour']) ) : 

        update_post_meta( $post_id , 'mb_geocoder_item' , $_POST['geocoder_map_tour'] );

    endif;
        
}



