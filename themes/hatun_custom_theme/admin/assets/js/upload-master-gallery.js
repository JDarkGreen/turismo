'use strict';

var j = jQuery.noConflict();

/*
 * FUNCIONES REUSABLES
 */
function UploadImagebyButton(){

	/* Función Agregar Elemento A la Galería */
	j(document).on('click' , '.js-upload-image' , function(data){

		//Obtener Botón
		var current_button = j(data.toElement);

		//Obtener Objetivo ID
		if(  typeof( current_button.attr('data-target-id') ) !== 'undefined' ){

			var targetElement = j( '#' + current_button.attr('data-target-id') );

			//Abrir Frame de Imágen según sea attributo de botón
			var multiple_frame = typeof( current_button.attr('data-multiple-frame') ) !== 'undefined' ?  current_button.attr('data-multiple-frame') : false;

			multiple_frame = multiple_frame === 'true' ? true : false;

			//Setear frame frame de agregar imágenes
	    	var frame = wp.media({
	            title   : 'Este es el frame',
	            frame   : 'post',
	            multiple: Boolean(multiple_frame), 
	            library : { type : 'image'},
	            button  : { text : 'Agregar Imágen(es)' },
	        });

	        //Abrir frame
        	frame.open();

        	//Acciones al Seleccionar Multiples o Una Imágen y cerrar Frame
        	frame.on('close',function(data) { 

            	//Obtener todos los valores de la seleccion de imagenes
            	var images = frame.state().get('selection');

            	//Obtener los valores del campo y convertirlos en array
            	var imageArray = targetElement.val().split(",");

            	// Hacemos recorrido para obtener los ids de estas imagenes y al 
            	// Mismo tiempo las colocamos temporalmente en el valor a setear
            	images.each( function( image ){
        		
            		//Aumentamos los atributos id en el array temporal
            		imageArray.push( image.attributes.id ); 

            	});

            	// Agregar todas los id de imagen separados por coma al valor oculto
            	var stringtoSet = imageArray.join(",");

            	//Remover si hay una coma inicial en la cadena
            	var firstChar = stringtoSet.substring( 0 , 1 );

            	if( firstChar == ',' ){ stringtoSet = stringtoSet.substring( 1 ); }

            	//Seteamos el valor
            	targetElement.val( stringtoSet );

       		});

			
		}else{ console.log('No objetivo : Parent'); }

	});

}


(function($){

	j(document).on('ready' , function(){

		/* Cargar Imágenes por Botón */
		UploadImagebyButton();

	});

})(jQuery);