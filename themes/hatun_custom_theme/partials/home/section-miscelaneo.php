<?php  
/**
  * ARCHIVO PARTIAL QUE MUESTRA LAS ENTRADAS DEL BLOG DE LA WEB
  */

?>

<section class="pageInicioMiscelaneo">

	<div class="row">
		
		<div class="col-xs-12 col-sm-5">

			<!-- Agenda Turistica -->
			<div id="tourist-events">
					
				<!-- Titulo -->
				<h2 class="title-section">
					<!-- Icon -->
					<i class="fa fa-calendar-o" aria-hidden="true"> <span>21</span> </i>
					<?= __( 'Agenda Turista' , LANG ); ?>
				</h2>

				<div class="content">
					
					<!-- Imagen -->
					<figure class="featured-image">
						<a href="#">
							<img src="<?= IMAGES ?>/agenda-turistica.jpg" alt="agenda-viajes-turisticos-hatun-tour" class="img-fluid m-x-auto d-block" />
						</a>
					</figure> <!-- /.featured-image -->

					<!-- Nombre -->
					<h3 class="title-event"> <?= __( 'Fiesta del Vino de Madeira' , LANG ); ?> </h3>

					<!-- Extracto -->
					<span class="excerpt-event d-block">  <?= __( 'En setiembre , participe en la fiesta dedicada a uno de los productos más (...) ' , LANG ) ?> </span>

					<!-- Boton ver más -->
					<a href="#" class="btn-more-events text-uppercase"> <?= __( 'ver todos' , LANG ); ?> </a>

				</div> <!-- /.content -->

			</div> <!-- /tourist-events -->

		</div> <!-- /.col-xs-12 col-sm-8 -->


		<div class="hidden-xs-down col-sm-2">
			
			<div id="line-miscelaneo"></div>

		</div>

		<div class="col-xs-12 col-sm-5 text-xs-center">

			<!-- Título -->
			<h2 class="titleCommon__section">
				<span> <?= __( 'Síguenos en Facebook' , LANG ); ?> </span>
			</h2>
			
			<!-- Facebook  -->
			<?php include( locate_template('partials/fan-page-facebook.php') ) ?>
			
		</div> <!-- /.col-xs-12 col-sm-4 -->

	</div> <!-- /.row -->
	
</section> <!-- /.pageInicioBlog -->