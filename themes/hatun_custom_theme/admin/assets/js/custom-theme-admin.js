var j = jQuery.noConflict();

/**
* Funciones a llamar
**/


(function($){

	/**
	* Eventos al cargar el documento
	*/
	j(document).on("ready",function(){

		/**
		* Utilizar ajax para actualizar las opciones del tema
		*/

		j(document).on('click' , '.js-update-ajax-options' , function(e){

			e.preventDefault();

			//Elemento contenedor actual
			var container_element = j('#'+ j(this).attr('data-id') );

			//Objeto temporal
			var options = {};

			//Encontrar campos (input , textareas, etc) y guardarlos en un objeto
			container_element.find('.js-field-ajax').each( function(index,element){

				//name 
				var current_name = j(this).attr('id');
				var current_val  = j(this).val();

				options[index] = { [current_name] : current_val };
			});

			/**
			  * Variable del directorio template
			  * objectVariable.templateDir
			  */


			//Enviar por ajax este objeto
			j.post( objectVariable.templateDir + '/admin/update-options-ajax.php' , {

				options_theme : options

			} , function( data ){
			  	
			  	console.log(data);
		
				//Cerrar modal
				j('.close-portBox').trigger('click');

				//Setear Mensaje
				j(".containerSectionOptions").prepend('<div id="message" class="updated fade"><p><strong> Opciones Guardadas. </strong></p></div>');

				/**
				* Que los mensajes solo duren 3 segundos y luego se oculten
				**/
				j('#message').delay(3000).fadeOut(1000);

			}, "json");


		});



	});

	/**
	**/

})(jQuery);