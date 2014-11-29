<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Escuela de Ingeniería Civil Informática</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/font-awesome.min.css" rel="stylesheet">
    <link href="../css/prettyPhoto.css" rel="stylesheet">
    <link href="../css/animate.css" rel="stylesheet">
    <link href="../css/main.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="../images/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->
<body>
    <?php include("../includes/header_html.php");?>
 <section id="title" class="emerald">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <h1><span class="glyphicon glyphicon-th"></span> Malla Ingenieria Civil en Informatica</h1>
                </div>
                <div class="col-sm-6">
                    <ul class="breadcrumb pull-right">
                        <li><a href="../index.php">Inicio</a></li>
                        <li><a href="mallaObjetivo.php">Objetivos Academicos</a></li>
						<li class="active">Malla ICI</li>
                    </ul>
                </div>
            </div>
        </div>
    </section><!--/#title-->
    <section class="container">
        <div class="center gap">
                <h2><span class="glyphicon glyphicon-hand-up"></span> Asignaturas y sus Competencias</h2>
                <p>Las asignaturas tienen objetivos que sirven para futuras asignaturas, como tambien para reforzar conocimientos ya adquiridos.<br>Haz click en una asignatura para ver con que otras asignaturas se relaciona segun sus objetivos<p>
        </div>
        <div class="row" style='margin-bottom:2%;'>
            <div class="col-sm-6 center"><a class="btn btn-lg btn-primary" id="boton_descargar_simulacion"><span class="glyphicon glyphicon-picture"></span> Guardar Simulación en PDF</a></div>
            <div class="col-sm-6 center"><a class="btn btn-lg btn-danger" id="boton_reiniciar_simulacion"><span class="glyphicon glyphicon-refresh"></span> Reiniciar Simulación</a></div>
        </div>
	    <div class="row">
	        <div class="col-sm-12" style="overflow-x:scroll;" id="mallaICI">
			</div>
	    </div>
	</section>

<div class="modal fade" id="myModal_mencion" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="myModalLabel"></h3>
      </div>
      <div class="modal-body" id="cuerpoModal" style="text-align : justify;">
      </div>
      <div class="modal-footer">
        <a id='button1id' name='button1id' class='btn btn-success' href='descargas.php'>Ir a Descargas</a>
        <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>

	<?php include("../includes/footer_html.php");?>

    <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.prettyPhoto.js"></script>
    <script src="../js/main.js"></script>
    <script src="../js/funciones_mallaICIOB.js"></script>
</body>
</html>