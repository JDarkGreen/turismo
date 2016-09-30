<?php /**
 * El template para mostrar en el header
 *
 * Muestra todos los elementos de la cabeza y todo hasta el div " - contenido del sitio " .
 *
 * @package Wordpress
 * @subpackage Custom Theme Hatum
 * @since Custom Theme Hatum 1.0
 */

?><!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js">

<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">

	<title><?php wp_title('|', true, 'right'); ?><?php bloginfo('name'); ?></title>

	<meta name="description" content="<?php bloginfo('description'); ?>" />
	<meta name="author" content="" />

	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />

	<link rel="profile" href="http://gmpg.org/xfn/11">
	
	<!-- Pingback -->
	<?php if ( is_singular() && pings_open( get_queried_object() ) ) : ?>
		<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
	<?php endif; ?>

	<!-- Stylesheets -->
	<link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>" />
	
	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- Favicon and Apple Icons -->
	<link rel="shortcut icon" href="<?= IMAGES ?>/favicon.ico" type="image/x-icon" />
	<link rel="icon" href="<?= IMAGES ?>/favicon.ico" type="image/x-icon" />

	<?php wp_head(); ?>
</head>

<?php  
	# Extraer todas las opciones de personalización
	$options   = get_option("theme_settings");
	# Comprobar si esta desplegada la barra de Navegación
	$admin_bar = is_admin_bar_showing() ? 'mainHeader__active-bar' : '';

	# Extraemos el logo de las opciones del tema
	$logo_theme_url = get_header_image();

	$logo_theme_url = !empty( $logo_theme_url ) ? $logo_theme_url : IMAGES . '/logo.jpg';

?>

<body <?php body_class(); ?>>


<!-- Contenedor Header Mobile  -->
<header class="mainHeader hidden-sm-up containerFlex containerAlignContent" canvas="">

	<!-- Icono abrir menu lateral -->
	<div class="icon-header">
		<i class="js-toggle-mobile-nav fa fa-bars" data-id="id-container-menu" aria-hidden="true"></i>
	</div><!-- /.icon-header -->

	<!-- Logo -->
	<h1 id="mainLogo">
		<a href="<?= site_url(); ?>">
			<img src="<?= $logo_theme_url; ?>" alt="<?php bloginfo('description'); ?>" class="img-fluid d-block m-x-auto" />
		</a>
	</h1> <!-- /.mainLogo -->

	<!-- Icono abrir menu lateral derecha -->
	<div class="icon-header">
		<i class="js-toggle-mobile-nav fa fa-bars" data-id="id-container-post" aria-hidden="true"></i>
	</div><!-- /.icon-header -->	

</header> <!-- /.mainHeader -->

<!-- Menu lateral Izquierda -->
<div off-canvas="id-container-menu left push">

	<aside class="sidebarMobile">
		<?php include( locate_template('partials/main-navigation-small.php') ); ?>
	</aside> <!-- /.sidebarMobile -->

</div> <!-- /.id-container-menu left push -->


<!-- Menu lateral Derecha -->
<div off-canvas="id-container-post right push">

	<aside class="sidebarMobile">
		<?php include( locate_template('partials/categories-sidebar.php') ); ?>
	</aside> <!-- /.sidebarMobile -->

</div> <!-- /.id-container-menu left push -->


<!-- Contenedor canvas wrapper para slider mobile -->
<div canvas="container">

	<header id="mainHeader" class="hidden-xs-down">
		
		<!-- Wrapper de Contenido / Contenedor Layout -->
		<div class="pageWrapperLayout containerRelative">

			<!-- Lista de Items -->
			<ul id="branding" class="containerFlex containerAlignContent">
				
				<!-- Widget Wheater -->
				<li id="meteo_main" class="item-branding text-uppercase">

					<div id="meteo_main_icon" class="clear" title="Cielos despejados">
                    </div>

                    <div id="meteo_main_detalhes">
                        <div class="meteo_main_localidade">Santarém 
                            <span class="meteo_main_date"> 
                            	/ <?= date('D') . '.' . date('d'); ?>   
                            	<i class="fa fa-caret-right" aria-hidden="true"></i>
                            </span>
                       	</div>
                        <span class="meteo_main_temp" title="31°C/13°C">
                        31°C/13°C </span>

                    </div>
					
				</li>

				<!-- Idioma -->
				<li id="idioma_main" class="item-branding">

					<ul id="language_menu" class="language_menu hovered">
                        <li class="selected">

                            <a href="#" id="idioma_title" class="header_title" title="">
                                
                                <span class="idioma_title_label" title="Idioma">IDIOMA 
                                <i class="fa fa-caret-down" aria-hidden="true"></i>
                                </span>
                                
                                <span class="idioma_title_lang">Español</span>
                            </a>

                            <div class="idioma_subitems">
                                <ul>
                                	<li>
                                        <a href="https://www.visitportugal.com/pt-pt/weather" title="Português">Português</a>
                                    </li>
                                    <li><a href="https://www.visitportugal.com/en/weather" title="English">English</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul> <!-- /fin de menu de idioma -->
				</li>

				<!-- Logo -->
				<li id="logo_main" class="item-branding">
					<h1 id="mainLogo">
						<a href="<?= site_url(); ?>">
							<img src="<?= $logo_theme_url; ?>" alt="<?php bloginfo('description'); ?>" class="img-fluid d-block m-x-auto" />
						</a>
					</h1> <!-- /.mainLogo -->
				</li> 

				<!-- Contacto -->
				<li class="item-branding">
					<!-- title --> <h2 class="title text-uppercase"> <?= __('contacte con nosotros' , LANG ); ?> </h2>

					<!-- Whatsapp -->
					<span class="whatsaap">  
					<!-- Icon whatsapp --> <i id="icon-whatsapp"></i> 
					+51 99944558
					</span>

				</li>

				<!-- Compartir -->
				<li class="item-branding">
					
					<!-- title --> <h2 class="title text-uppercase"> <?= __('compartir' , LANG ); ?> </h2>
					
					<!-- RssFeed -->
					<span>
			  			<a href="#" target="_blank" title="" class="link-not-decoration">
                  			<img src="<?= IMAGES ?>/icons/rss_icon.png" title="RSS" alt="RSS" />
                  		</a>
                  	</span> <!-- / -->

                  	<span>
			  			<a href="#" class="link-not-decoration" title="Compartir Web">
                  			<img src="<?= IMAGES ?>/icons/share_icon.png" title="Compartir" alt="Compartir">
                  		</a>
			  		</span>

				</li>

			</ul> <!-- /.branding -->

		</div> <!-- /.pageWrapperLayout containerRelative -->

	</header> <!-- /#mainHeader -->





