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
                    <h1><span class="glyphicon glyphicon-tasks"></span> Especialidad en Software</h1>
                    <p>Gestion de Proyectos de Software</p>
                </div>
                <div class="col-sm-6">
                    <ul class="breadcrumb pull-right">
                        <li><a href="../index.php">Inicio</a></li>
                        <li><a>Menciones</a></li>
                        <li class="active">Especialidad en Software</li>
                    </ul>
                </div>
            </div>
        </div>
    </section><!--/#title-->

    <section id="about-us" class="container">
        <div class="row">
            <div class="col-sm-6">
                <h2>Gestión de Proyectos de Software</h2>
                <p style="text-align : justify;" id="campo_descripcion"></p>
            </div><!--/.col-sm-6-->
                <div class="col-sm-6">
                    <h2></h2>
                    <section id="main-slider" class="no-margin">
                        <div class="carousel slide wet-asphalt">
                            <ol class="carousel-indicators">
                                <li data-target="#main-slider" data-slide-to="0" class="active"></li>
                                <li data-target="#main-slider" data-slide-to="1"></li>
                                <li data-target="#main-slider" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active fotos_mencion" style="background-image: url(../images/mencion/sw1.png)"></div><!--/.item-->
                                <div class="item fotos_mencion" style="background-image: url(../images/mencion/sw2.png)"></div><!--/.item-->
                                <div class="item fotos_mencion" style="background-image: url(../images/mencion/sw3.png)"></div><!--/.item-->
                            </div><!--/.carousel-inner-->
                        </div><!--/.carousel-->
                        <a class="prev hidden-xs" href="#main-slider" data-slide="prev">
                            <i class="icon-angle-left"></i>
                        </a>
                        <a class="next hidden-xs" href="#main-slider" data-slide="next">
                            <i class="icon-angle-right"></i>
                        </a>
                    </section><!--/#main-slider-->
                </div><!--/.col-sm-6-->
            </div><!--/.row-->

        <div class="gap"></div>
        <h1 class="center">Asignaturas de mención - Año <?php echo date("Y"); ?></h1>
        <p class="lead center">Haz clic para ver la informacion de una asignatura.</p>
        <div class="gap"></div>

        <div id="meet-the-team" class="row">
        </div><!--/#meet-the-team-->
    </section><!--/#about-us-->

<!-- Modal -->
<div class="modal fade" id="myModal_mencion" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h3 class="modal-title" id="myModalLabel"></h3>
      </div>
      <div class="modal-body" id="cuerpoModal" style="text-align : justify;">
      </div>
      <div class="modal-footer">
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
    <script src="../js/funcion_mencion_sw.js"></script>
</body>
</html>