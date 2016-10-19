'use strict';

var j = jQuery.noConflict();

/**
* Funcion de Condicionar ancho de navegador
**/

function getWidthBrowser()
{
	return j(window).width();
}


(function($){
/*|----------------------------------------------------------------------|*/

	j(document).on('ready',function(){

		/*|-----------------------------------|*/
		/*|-----  BOTON ARRIBA  -----|*/
		/*|------------------------------------|*/

		j('#arrow-up-page').on('click' , function(e){

			e.preventDefault();

			j('div[canvas=container]').animate( 
			    {scrollTop: '0px' } , 700
			);

		});


		/*|----------------------------------------------------------------------|*/
		/*|-----  CAROUSEL HOME  LIBRERIA OWL CAROUSEL -----|*/
		/*|----------------------------------------------------------------------|*/

		//Carousel Home
		j("#carousel-home").revolution({
			sliderType  : "standard",
			sliderLayout: "auto",
			autoHeight  : "on",
			delay       : 9000,
			navigation: {
				keyboardNavigation   : "on", 
				keyboard_direction   : "horizontal",
				mouseScrollNavigation: "off",   
				onHoverStop          : "on",

				arrows :{ 
					enable : true,
					left   : { h_offset: 100, } , 
					right  : { h_offset: 100, } , 
				} ,

				bullets: { 
					enable      : true ,
					tmp         :'<span class="tp-bullet-image"></span><span class="tp-bullet-imageoverlay"></span><span class="tp-bullet-title"> </span></div>', 
					direction   : "horizontal",
					h_offset    : -8,
					v_offset    : 32,
					h_align     : "center",
					v_align     : "bottom",
					space       : 10,
					hide_onleave: false,
				},
			}, 
			minHeight : 280, 
			gridwidth : 1366,
			gridheight: 524
    	}); 



		/*|----------------------------------------------------------------------|*/
		/*|-----  CAROUSEL ITEMS OWN CAROUSEL - SETEAR PARAMETROS   -----|*/
		/*|----------------------------------------------------------------------|*/		

		if( j(".js-carousel-gallery").length )
		{
			j(".js-carousel-gallery").each(function(){

				/* Carousel */
				var current = j(this);

				/* Valor de Items */
				var Items  = current.attr('data-items') !== null && typeof(current.attr('data-items') ) !== "undefined" ? current.attr('data-items') : 3;

				/* Valor de Items Responsive */
				var Itemsresponsive  = current.attr('data-items-responsive') !== "" && typeof(current.attr('data-items-responsive') ) !== "undefined" ? current.attr('data-items-responsive') : Items;

				/* Valor de Márgenes */
				var Margins = current.attr('data-margins') !== null && typeof(current.attr('data-margins') ) !== "undefined"  ? current.attr('data-margins') : 10;	

				/* Habilitar autoplay */
				var Autoplay = current.attr('data-autoplay') !== null && typeof( current.attr('data-autoplay') ) !== "undefined"  && current.attr('data-autoplay') !== "false" ? true : false;
				
				/* Habilitar time autoplay */
				var timeAutoplay = current.attr('data-timeautoplay') !== null && typeof( current.attr('data-timeautoplay') ) !== "undefined"  && current.attr('data-timeautoplay') !== "false" ? current.attr('data-timeautoplay') : 2500;

				/* Habilitar dots */
				var Dot = current.attr('data-dots') !== null && typeof( current.attr('data-dots') ) !== "undefined" && current.attr('data-dots') !== "false" ? true : false;

				/* Generar el carousel */
				current.owlCarousel({
					items          : parseInt( Items ),
					lazyLoad       : false,
					loop           : true,
					margin         : parseInt( Margins ),
					nav            : false,
					autoplay       : Autoplay,
					responsiveClass: true,
					mouseDrag      : true,
					autoplayTimeout: parseInt( timeAutoplay ),
					fluidSpeed     : 2000,
					smartSpeed     : 2000,
					dots           : Dot,
					responsive:{
				      	320:{
				            items: parseInt( Itemsresponsive )
				        },
				        650:{
				            items: parseInt( Items )
				        },
			    	}	
				});
			
			/* end each */
			});
		/* end conditional */
		}

		/*|°°------------- Flechas del carousel ---------------°°|*/
		//prev carousel
		j(".js-carousel-prev").on('click',function(e){ 
			e.preventDefault();
			var slider = j(this).attr('data-slider');	
			j("#"+slider).trigger('prev.owl.carousel' , [900] );
		});
		//next carousel
		j(".js-carousel-next").on('click',function(e){ 
			e.preventDefault();
			var slider = j(this).attr('data-slider');	
			j("#"+slider).trigger('next.owl.carousel' , [900] );
		});

		/*
		 * INDICADORES DE CAROUSEL
		 */
		j(".js-carousel-indicator").on("click",function(e){

			e.preventDefault();
			var slider  = j(this).attr('data-slider');
			var slideto = j(this).attr('data-to');
			j("#"+slider).trigger( 'to.owl.carousel' , [ slideto , 900 ] );

			/* Quitar y agregar clase activa */
			j(".js-carousel-indicator").removeClass('active');
			j(this).addClass('active');
			
		});


		/*|----------------------------------------------------------------------|*/
		/*|-----  FANCYBOX GALERIAS   -----|*/
		/*|----------------------------------------------------------------------|*/

		j("a.gallery-fancybox").fancybox({
			'overlayShow': false,
			'openEffect' : 'elastic',
			'closeEffect': 'elastic',
			'openSpeed'  : 300,
			'closeSpeed' : 300,
		});

		
		/*|----------------------------------------------------------------------|*/
		/*|-----  SCROLLREVEAL - animación on scroll   -----|*/
		/*|----------------------------------------------------------------------|*/
		
		window.sr = ScrollReveal({ reset: true });

		// Customizing a reveal set
		sr.reveal('.scroll-animate' , { duration: 1200 } , 50 );

		//Rotate Animation
		var fooReveal = {
		  delay    : 200,
		  distance : '90px',
		  easing   : 'ease-in-out',
		  rotate   : { z: 10 },
		  scale    : 1.1,
		  reset    : false,
		};
		sr.reveal('.scroll-animate-rotate', fooReveal );

		//Perspective 
		sr.reveal('.sr-perpective', { 
			rotate  : { y: 65 },
			easing  : 'ease-in',
			delay   : 400,
			scale   : 0.8,
			duration: 2000,
		} , 60 );



		/*|----------------------------------------------------------------------|*/
		/*|-----  VALIDAR FORMULARIO   -----|*/
		/*|----------------------------------------------------------------------|*/

		if( j('#form-contacto').length )
		{
			var formulario = j('#form-contacto');

			formulario.parsley();

			formulario.submit( function(e){
				e.preventDefault();
				//Subir el formulario mediante ajax
				j.post( url + '/email/enviar.php', 
				{ 
					name   : j("#input_name").val(),
					email  : j("#input_email").val(),
					phone  : j("#input_phone").val(),
					address: j("#input_address").val(),
					message: j("#input_message").val(),
					
				},function(data){

					alert( data );

					j("#input_name").val("");
					j("#input_email").val("");
					j("#input_phone").val("");
					j("input_address").val("");
					j("#input_message").val("");

					window.location.reload(false);
				});			
			}); 

		}

	/*|- end of document -|*/
	});


	/**
	* Eventos on Scroll no se pone a window o document
	* ya que afecta la libreria slidebar js
	**/

	j('div[canvas=container]').on( 'scroll' , function(){

		var wrapperContainer = 	j('div[canvas=container]');

		/*|------------------------------------|*/
		/*|----- BOTÓN ARRIBA -----|*/
		/*|---------------------------------------------------|*/	
		
		//Si está el boton
		if( j('#arrow-up-page').length )
		{
			if( wrapperContainer.scrollTop() >= 400 )
			{
				j('#arrow-up-page').fadeIn();
			}else{
				j('#arrow-up-page').fadeOut('fast');
			}
		}

		/*---------------------------------------------------------*/
		
	});

/*|----------------------------------------------------------------------|*/
})(jQuery);