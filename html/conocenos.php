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
    <link href="../js/DataTables-1.10.3/media/css/jquery.dataTables.min.css" rel="stylesheet">
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
                    <h1><span class="glyphicon glyphicon-user"></span> ¿Quienes somos?</h1>
                    <p>Conoce el equipo de la Escuela de Ingeniería Civil en Informática</p>
                </div>
                <div class="col-sm-6">
                    <ul class="breadcrumb pull-right">
                        <li><a href="../index.php">Inicio</a></li>
                        <li class="active">¿Quienes somos?</li>
                    </ul>
                </div>
            </div>
        </div>
    </section><!--/#title-->

    <section id="portfolio" class="container">
        <ul class="portfolio-filter">
            <li><a class="btn btn-default active" href="#" data-filter="*">Todos</a></li>
            <li><a class="btn btn-default" href="#" data-filter=".bootstrap">Académicos</a></li>
            <li><a class="btn btn-default" href="#" data-filter=".html">Administrativos</a></li>
            <li><a class="btn btn-default" href="#" data-filter=".wordpress">Ayudantes Laboratorio</a></li>
        </ul><!--/#portfolio-filter-->

        <ul class="portfolio-items col-3">
            <li class="portfolio-item apps">
                <div class="item-inner">
                    <img src="images/portfolio/thumb/item1.jpg" alt="">
                    <h5>Lorem ipsum dolor sit amet</h5>
                    <div class="overlay">
                        <a class="preview btn btn-danger" href="images/portfolio/full/item1.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>             
                    </div>           
                </div>           
            </li><!--/.portfolio-item-->
            <li class="portfolio-item joomla bootstrap">
                <div class="item-inner">
                    <img src="images/portfolio/thumb/item2.jpg" alt="">
                    <h5>Lorem ipsum dolor sit amet</h5>
                    <div class="overlay">
                        <a class="preview btn btn-danger" href="images/portfolio/full/item2.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>              
                    </div>           
                </div>           
            </li><!--/.portfolio-item-->
            <li class="portfolio-item bootstrap wordpress">
                <div class="item-inner">
                    <img src="images/portfolio/thumb/item3.jpg" alt="">
                    <h5>Lorem ipsum dolor sit amet</h5>
                    <div class="overlay">
                        <a class="preview btn btn-danger" href="images/portfolio/full/item3.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>        
                    </div>           
                </div>           
            </li><!--/.portfolio-item-->
            <li class="portfolio-item joomla wordpress apps">
                <div class="item-inner">
                    <img src="images/portfolio/thumb/item4.jpg" alt="">
                    <h5>Lorem ipsum dolor sit amet</h5>
                    <div class="overlay">
                        <a class="preview btn btn-danger" href="images/portfolio/full/item4.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                    </div>           
                </div>           
            </li><!--/.portfolio-item-->
            <li class="portfolio-item joomla html">
                <div class="item-inner">
                    <img src="images/portfolio/thumb/item5.jpg" alt="">
                    <h5>Lorem ipsum dolor sit amet</h5>
                    <div class="overlay">
                        <a class="preview btn btn-danger" href="images/portfolio/full/item5.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>          
                    </div>    
                </div>       
            </li><!--/.portfolio-item-->
            <li class="portfolio-item wordpress html">
                <div class="item-inner">
                    <img src="images/portfolio/thumb/item6.jpg" alt="">
                    <h5>Lorem ipsum dolor sit amet</h5>
                    <div class="overlay">
                        <a class="preview btn btn-danger" href="images/portfolio/full/item6.jpg" rel="prettyPhoto"><i class="icon-eye-open"></i></a>           
                    </div>           
                </div>           
            </li><!--/.portfolio-item-->
        </ul>
    </section><!--/#portfolio-->

    <!-- Modal -->
<div class="modal fade" id="myModal_download" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="myModalLabel"></h3>
      </div>
      <div class="modal-body" id="cuerpoModal">
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
    <script src="../js/jquery.isotope.min.js"></script>
    <script src="../js/main.js"></script>
    <script src="../js/DataTables-1.10.3/media/js/jquery.dataTables.min.js"></script>
    <script src="../js/funcion_descargas.js"></script>
    <script src="../js/bootstrap.file-input.js"></script>
</body>
</html>