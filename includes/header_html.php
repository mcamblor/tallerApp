<?php
    $script_ejecutandose = explode("/tallerApp/html/", $_SERVER["PHP_SELF"]);
?>
<header class="navbar navbar-inverse navbar-fixed-top wet-asphalt" role="banner">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php"><img src="../images/header_decom.png" alt="logo" style="margin-top:-32px"></a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="../index.php">Inicio</a></li>
                    <?php if($script_ejecutandose[1] == "redes.php" || $script_ejecutandose[1] == "software.php" || $script_ejecutandose[1] == "database.php"){?>
                        <li class="dropdown active">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Menciones <i class="icon-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="redes.php">Redes y Telecomunnicaciones</a></li>
                                <li><a href="software.php">Gestion de Proyectos de Software</a></li>
                                <li><a href="database.php">Gestion y Diseño de Base de Datos</a></li>
                            </ul>
                        </li>
                    <?php }else{ ?>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Menciones <i class="icon-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="redes.php">Redes y Telecomunnicaciones</a></li>
                                <li><a href="software.php">Gestion de Proyectos de Software</a></li>
                                <li><a href="database.php">Gestion y Diseño de Base de Datos</a></li>
                            </ul>
                        </li>
                    <?php } if($script_ejecutandose[1] == "descargas.php"){?>
                        <li class="active"><a href="descargas.php">Descargas</a></li>
                    <?php }else{ ?> 
                        <li><a href="descargas.php">Descargas</a></li>
                    <?php } if($script_ejecutandose[1] == "malla.php"){?>
                        <li class="active"><a href="malla.php">Malla Curricular</a></li>
                    <?php }else{ ?>
                        <li><a href="malla.php">Malla Curricular</a></li>
                    <?php }?>
                </ul>
            </div>
        </div>
    </header><!--/header-->