<?php
    session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <title>Escuela de Ingeniería Civil Informática</title>
    <link rel="shortcut icon" href="../../images/favicon.ico">
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="css/plugins/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" style="color:#FFF;"><img src="../../images/favicon.ico" alt="logo" style="vertical-align: sub;width: 25px;"><?php echo $_SESSION['nombre_ramo'];?> - Administración</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <?php echo $_SESSION['nick']; ?><b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="../../index.php" target="_blank"><span class="glyphicon glyphicon-eye-open"></span> Ir al Sitio</a>
                            <a id="boton_salir_admin" style="cursor:pointer"><span class="glyphicon glyphicon-log-out"></span> Salir</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li class="active">
                        <a href="index.php"><span class="glyphicon glyphicon-comment"></span> Información</a>
                    </li>
                    <li>
                        <a href="documentos.php"><span class="glyphicon glyphicon-file"></span> Documentos</a>
                    </li>
                    <li>
                        <a href="perfil.php"><span class="glyphicon glyphicon-user"></span> Perfil</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Información: <small>Edita la informacion del ramo en que estas a cargo</small>
                        </h1>
                    </div>
                </div>
                <!-- /.row -->
                <div class="row">
                   <div class="col-lg-12">
                        <div class='alert alert-dismissible' role='alert' id='validar_descarga'><div id="contenido_alert"></div></div>
                    </div>
                </div>            

                <div class="row">
                    <div class="col-lg-6">
                        <br>
                        <form class="form-horizontal">
                            <fieldset>
                                <input type="text" id="datos_ocultos" HIDDEN value="<?php echo $_SESSION['ramo'];?>">
                                <div class="form-group">
                                  <label class="col-md-3 control-label" for="profesor_asignatura">Profesor</label>  
                                  <div class="col-md-5">
                                  <input id="profesor_asignatura" name="profesor_asignatura" type="text" class="form-control input-md"> 
                                  </div>
                                  <div class="col-md-3">  
                                    <a class="btn btn-primary" id="boton_modifica_profesor" name="boton_modifica_profesor"><span class="glyphicon glyphicon-pencil"></span> Modificar Profesor</a> 
                                  </div>
                                </div>
                                <div class="form-group">
                                  <label class="col-md-3 control-label" for="ayudante1_asignatura">Ayudante nº1</label>  
                                  <div class="col-md-5">
                                  <input id="ayudante1_asignatura" name="ayudante1_asignatura" type="text" class="form-control input-md"> 
                                  </div>
                                  <div class="col-md-3">  
                                    <a class="btn btn-warning" id="boton_modifica_ayudante1" name="boton_modifica_ayudante1"><span class="glyphicon glyphicon-pencil"></span> Modificar Ayudante</a> 
                                  </div>
                                </div>
                                <div class="form-group">
                                  <label class="col-md-3 control-label" for="ayudante2_asignatura">Ayudante nº2</label>  
                                  <div class="col-md-5">
                                  <input id="ayudante2_asignatura" name="ayudante2_asignatura" type="text" class="form-control input-md"> 
                                  </div>
                                  <div class="col-md-3">  
                                    <a class="btn btn-danger" id="boton_modifica_ayudante2" name="boton_modifica_ayudante2"><span class="glyphicon glyphicon-pencil"></span> Modificar Ayudante</a> 
                                  </div>
                                </div>
                                <div class="form-group">
                                  <label class="col-md-3 control-label" for="comentario_asignarura">Comentarios</label>
                                  <div class="col-md-5">                     
                                    <textarea class="form-control" id="comentario_asignatura" name="comentario_asignatura"></textarea>
                                    <span class="help-block">Información acerca de la asignatura (comentarios)</span>
                                  </div>
                                  <div class="col-md-3">
                                    <a class="btn btn-success" id="boton_modifica_comentario" name="boton_modifica_comentario"><span class="glyphicon glyphicon-pencil"></span> Modificar Comenterio</a>
                                  </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                    <div class="col-lg-5">
                        <br>

                        <form class="form-horizontal">
                            <fieldset>
                                <div class="form-group">                                
                                    <label class="col-md-3 control-label" for="foto_asignatura"></label>  
                                      <div class="col-md-9">
                                         <div style="border:1px solid;" id="foto_ramo_marco"><img src="" id="foto_ramo"></div> 
                                      </div>
                                </div>
                                <div class="form-group">
                                  <label class="col-md-3 control-label" for="foto_asignatura">Foto</label>  
                                  <div class="col-md-9">
                                  <input id="foto_asignatura" name="foto_asignatura" type="file" class="form-control input-md"> 
                                  </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label" for="foto_asignatura"></label>  
                                <div class="col-md-5">  
                                    <a class="btn btn-primary" id="boton_modifica_foto" name="boton_modifica_foto"><span class="glyphicon glyphicon-picture"></span> Cambiar Imagen</a> 
                                </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
            <h3 class="modal-title" id="myModalLabel"></h3>
          </div>
          <div class="modal-body" id="cuerpoModal" style="text-align : justify;">
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-success" id="boton_aprobar_cierre"><span class="glyphicon glyphicon-ok"></span> Aprobar</button>
            <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
          </div>
        </div>
      </div>
    </div>

    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>
    <script src="js/funcion_admin_asignatura.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="js/plugins/morris/raphael.min.js"></script>
    <script src="js/plugins/morris/morris.min.js"></script>
    <script src="js/plugins/morris/morris-data.js"></script>

    <!-- Flot Charts JavaScript -->
    <!--[if lte IE 8]><script src="js/excanvas.min.js"></script><![endif]-->
    <script src="js/plugins/flot/jquery.flot.js"></script>
    <script src="js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="js/plugins/flot/jquery.flot.pie.js"></script>
    <script src="js/plugins/flot/flot-data.js"></script>
   
</body>

</html>
