<?php  
/**
  * version 1.0
  * Archivo Partial que muestra los datos de contacto
  * de la empresa respectiva
  */
?>

<ul class="menuDatosContacto">
							
	<!--  Telefono -->
	<li>
		<i class="fa fa-phone" aria-hidden="true"></i>	

		<?php  
			for ($i=1; $i <= 2 ; $i++) 
			{  
				$phone = isset($options['theme_phone_text_'.$i]) ? $options['theme_phone_text_'.$i] : '';

				$split = $phone !== '' && $i !== 1 ? ' / ' : '';
				
				echo $split . $phone;
			}
		?>			
	</li>	

	<!--  Celular -->
	<li>
		<i class="fa fa-mobile cellphone" aria-hidden="true"></i>	

		<?php  
			for ($i=1; $i <= 2 ; $i++) 
			{  
				$cellphone = isset($options['theme_cel_text_'.$i]) ? $options['theme_cel_text_'.$i] : '';

				$split = $cellphone !== '' && $i !== 1 ? ' / ' : '';
				
				echo $split . $cellphone;
			}
		?>	

	</li>	

	<!--  Email -->
	<li>
		<i class="fa fa-envelope" aria-hidden="true"></i>		
		<?= isset($options['theme_email_text']) ? $options['theme_email_text'] : ''; ?>		
	</li>

	<!-- Direccion -->
	<li class="">
		<i class="fa fa-map-marker" aria-hidden="true"></i>
		<?= isset($options['theme_address_text']) ? apply_filters( 'the_content' , $options['theme_address_text'] ) : ''; ?>	
	</li>	
					
</ul> <!-- /.menuDatosContacto -->