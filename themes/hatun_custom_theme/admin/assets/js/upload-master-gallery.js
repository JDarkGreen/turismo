'use strict';

var j = jQuery.noConflict();

/*
 * FUNCIONES REUSABLES
 */

/* Función devuelve una imágen Preview con las clases */
function getImageSortable( id = '' , url = '' ){

	var id_image  = id;
	var url_image = url;

	var stringImage = "<div class='ui-state-default imagePreviewGallery' data-id-element="+id_image+">";

	stringImage += "<a href='#' class='js-remove-from-gallery btn-remove-image' data-id-element="+id_image +">X</a>";

	stringImage += "<img src=" + url_image + " />";
	
	stringImage += "<div/> <!-- end of preview -->";

	return stringImage;
}


/* Función Agregar Elemento A la Galería */
function UploadImagebyButton(){

	j(document).on('click' , '.js-upload-image' , function(data){

		//Obtener Botón
		var current_button = j(data.toElement);

		//Obtener elemento Padre .sortableGallery
		var parentSortableContent = current_button.closest('.sectionUploadGallery').find('.sortableGallery');

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

            		/* Llamar al metodo agregar Imágenes por url */
            		var previewImage = getImageSortable( image.attributes.id , image.attributes.url );

            		/* Setear En Contenedor Padre Sortable */
            		if( parentSortableContent.length ){

            			parentSortableContent
            			.append( previewImage ).slideDown('slow');
            			
            		}else{ console.log('padre no encontrado'); }

            	});

            	// Agregar todas los id de imagen separados por coma al valor oculto
            	var stringtoSet = imageArray.join(",");

            	//Remover si hay una coma inicial en la cadena
            	var firstChar = stringtoSet.substring( 0 , 1 );

            	if( firstChar == ',' ){ stringtoSet = stringtoSet.substring( 1 ); }
            	
            	//Remover si hay un -1,
            	var NegativeNumber =  stringtoSet.substring( 0 , 3 );
            	if( NegativeNumber == '-1,' ){ stringtoSet = stringtoSet.substring( 3 ); }

            	//Seteamos el valor
            	targetElement.val( stringtoSet );

       		});

			
		}else{ console.log('No objetivo : Parent'); }

	});
}

/* Funcion Eliminar Imágen por Botón */
function deleteImagebyButton()
{
	j(document).on( 'click' , '.js-remove-from-gallery' , function(data){

		data.preventDefault();

		//Obtener Elemento Botón
		var current_button = j(data.toElement);

		//Padre de Botón
		var parentofButton = current_button.parent('.imagePreviewGallery');

		//Input Que contiene el id de imágenes
		var targetElement  =  current_button
							  .closest('.sectionUploadGallery')
							  .find('input.js-field-gallery-theme');

		//Obtener Id de Imágen o Elemento
		if( typeof(current_button.attr('data-id-element')) !== 'undefined' ){

			//Id de Imagen
			var id_image = current_button.attr('data-id-element');

			//Remover Este Elemento
			if( parentofButton.length ){ parentofButton.slideUp('slow'); }

			//Remover del Input
			var valueTarget = targetElement.val();

			//1.- Convertir valor del input a arreglo
			valueTarget = valueTarget.split(',');
			//2. Buscar el valor de id elemento en arreglo y eliminarlo
			var index = valueTarget.indexOf( id_image );

			if( index !== -1 ){ valueTarget.splice( index , 1); }

			//3.- Unir las piezas con comas // el default join es la coma(,)
			var stringnewValue = valueTarget.join();

			//4.-Si el valor está vacio entonces setear a -1
			if( stringnewValue.length == 0 ){ stringnewValue = -1; }

			//5.- Setear valor en input
			targetElement.val( stringnewValue );
		};

	});
}

/* Eliminar todas las Imágenes */
function deleteAllImages(){

	j(document).on('click' , '.js-remove-gallery' , function(data){

		//Obtener Botón
		var current_button = j(data.toElement);

		//Elemento Padre Sortable
		var parentSortableContent = current_button.closest('.sectionUploadGallery').find('.sortableGallery');

		//Obtener Objetivo ID
		if(  typeof( current_button.attr('data-target-id') ) !== 'undefined' ){

			/* Objetivo Field */
			var currentTarget = j( '#' + current_button.attr('data-target-id') );

			if( currentTarget.length ){

				currentTarget.text('-1').val( -1 );

				//Vaciar HTML de Contenedor Padre
				parentSortableContent.slideUp( 'slow' , function(){
					j(this).html('');
				});

			}else{ console.log('Objetivo no existe'); }
			
		}else{ console.log('No id objetivo a eliminar'); }

	});
}


(function($){

	j(document).on('ready' , function(){

		/* Cargar Imágenes por Botón */
		UploadImagebyButton();

		/* Eliminar Imágen por Botón */
		deleteImagebyButton();

		/* Eliminar Imágenes por Botón */
		deleteAllImages();

	});

})(jQuery);