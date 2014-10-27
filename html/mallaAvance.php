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
                    <h1><span class="glyphicon glyphicon-tasks"></span> Simulador de Avance Academico</h1>
                    <p>Simula tu avance academico segun tu situacion actual</p>
                </div>
                <div class="col-sm-6">
                    <ul class="breadcrumb pull-right">
                        <li><a href="../index.php">Inicio</a></li>
                        <li><a href="malla.php">Malla Curricular</a></li>
                        <li class="active">Simulador de Avance Academico</li>
                    </ul>
                </div>
            </div>
        </div>
    </section><!--/#title-->

    <section id="about-us" class="container">
        <div class='center gap'>
                <h2><span class="glyphicon glyphicon-eye-open"></span> Selecciona la malla que deseas ver</h2>
        </div>
        <div class="row">
            <div class="col-sm-4">
                <a href="mallaici.php" class="enlace_malla"><img src="../images/mencion/planici.png" class="foto_malla"></a>
            </div>
            <div class="col-sm-4">
                <a href="mallaiin.php" class="enlace_malla"><img src="../images/mencion/planiin.png" class="foto_malla"></a>
            </div>
            <div class="col-sm-4">
                <a href="mallaiej.php" class="enlace_malla"><img src="../images/mencion/planiej.png" class="foto_malla"></a>
            </div>
        </div>
    </section><!--/#about-us-->

    <?php include("../includes/footer_html.php");?>

    <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.prettyPhoto.js"></script>
    <script src="../js/main.js"></script>
</body>
</html>