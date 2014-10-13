<header class="navbar navbar-inverse navbar-fixed-top wet-asphalt" role="banner">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php"><img src="images/header_decom.png" alt="logo" style="margin-top:-32px"></a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href="index.php">Inicio</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Menciones <i class="icon-angle-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="html/redes.php">Redes y Telecomunnicaciones</a></li>
                            <li><a href="html/software.php">Gestion de Proyectos de Software</a></li>
                            <li><a href="html/database.php">Gestion y Diseño de Base de Datos</a></li>
                        </ul>
                    </li>
                    <li><a href="html/descargas.php">Descargas</a></li> 
                    <li><a href="html/malla.php">Malla Curricular</a></li>
                    <li><div class="dropdown">
                          <button type="button" class="btn btn-success btn-sm" data-toggle="dropdown">Login</button>
                          <div class="dropdown-menu" style="padding: 10px;">
                            <form action="" role="form">
                              <div class="form-group">
                                <a>Usuario</a>
                                <input type="text" class="form-control" id="user" placeholder="Usuario">
                                <a>Contraseña</a>
                                <input type="password" class="form-control" id="clave" placeholder="Contraseña">
                              </div>
                              <a id="boton_login" class="btn btn-warning">Entrar</a>
                            </form>
                          </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </header><!--/header-->