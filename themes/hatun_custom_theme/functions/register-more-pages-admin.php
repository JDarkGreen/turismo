<?php  
/*
 * Archivo que permite agregar más menus de páginas
 * para el administrador de wordpress . Casos como las 
 * galerías etc.
 */

/*
 * Registrar Página de Galería
 */
add_menu_page( 'Galería de Imágenes | ' . get_bloginfo('name') , 'Galería de Imágenes' ,
'edit_users' , '' , '' , IMAGES . 'icons/photo.ico' , 12 );