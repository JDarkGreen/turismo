<?php
/**
 * La plantilla que muestra el footer
 *
 * Contiene el cierre de la div #content y todo el contenido después de
 *
 * @package WordPress
 * @subpackage Aqua Spa
 * @since Aqua Spa 1.0
 */

//Extraer todas las opciones de personalización
$options = get_option("theme_settings");

//var_dump($options);

?>
	
	<footer id="mainFooter" class="mainFooter">
		
	</footer> <!-- /.#mainFooter -->
	
	</div> <!-- /end sliderbar container -->

	<?php wp_footer(); ?>

	
	<script> var url = "<?= THEMEROOT ?>"; </script>


</body>
</html>
