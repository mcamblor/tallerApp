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
	<style>
table, th, td {
    align: center;
    border: 2px solid black;
    border-collapse: collapse;
}
<!--table {
   
	text-align: center;
}-->
</style>
</head><!--/head-->
<body>
    <?php include("../includes/header_html.php");?>
 <section id="title" class="emerald">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <h1><span class="glyphicon glyphicon-th"></span> Malla Ingenieria Civil en Informatica</h1>
                    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada</p>
                </div>
                <div class="col-sm-6">
                    <ul class="breadcrumb pull-right">
                        <li><a href="../index.php">Inicio</a></li>
                        <li><a href="malla.php">Malla Curricular</a></li>
						<li class="active">Malla Ingenieria Civil en Informatica</li>
                    </ul>
                </div>
            </div>
        </div>
    </section><!--/#title-->
    <table style="width:80%">
  <tr>
    <td colspan="3" >Primer año</td>
    <td colspan="4" >Segundo año</td>		
    <td colspan="4" >Tercer año</td>
    <td colspan="4" >Cuarto año</td>
    <td colspan="4" >Quinto año</td>
    <td colspan="4" >Sexto año</td>
  </tr>
   <tr>
    <td colspan="24" >Plan Ingenieria Civil en Informatica</td>
  </tr>
<tr>
    <td>1° Sem.</td>
    <td colspan="2">2° Sem.</td>		
    <td colspan="2">3° Sem.</td>
    <td colspan="2">4° Sem.</td>	    
    <td colspan="2">5° Sem.</td>
    <td colspan="2">6° Sem.</td>	    
    <td colspan="2">7° Sem.</td>
    <td colspan="2">8° Sem.</td>	    
    <td colspan="2">9° Sem.</td>
    <td colspan="2">10° Sem.</td>	    
    <td colspan="2">11° Sem.</td>
    <td colspan="2">12° Sem.</td>	
  </tr>
  <?php
		require_once('../data/conexion_bd.php');
		$consulta = new conexionBD;
		$s1 = $consulta->consultar("SELECT malla_idMalla, numero, nombre from asignatura where malla_idMalla='INC' and numero between '100' and '104'");
		$s2 = $consulta->consultar("SELECT malla_idMalla, numero, nombre from asignatura where malla_idMalla='INC' and numero between '110' and '114'");
		$s3 = $consulta->consultar("SELECT malla_idMalla, numero, nombre from asignatura where malla_idMalla='INC' and numero between '200' and '205'");
		$s4 = $consulta->consultar("SELECT malla_idMalla, numero, nombre from asignatura where malla_idMalla='INC' and numero between '210' and '215'");
		$s5 = $consulta->consultar("SELECT malla_idMalla, numero, nombre from asignatura where malla_idMalla='INC' and numero between '300' and '305'");
		$s6 = $consulta->consultar("SELECT malla_idMalla, numero, nombre from asignatura where malla_idMalla='INC' and numero between '310' and '315'");
		$s7 = $consulta->consultar("SELECT malla_idMalla, numero, nombre from asignatura where malla_idMalla='INC' and numero between '400' and '405'");
		$s8 = $consulta->consultar("SELECT malla_idMalla, numero, nombre from asignatura where malla_idMalla='INC' and numero between '410' and '415'");
		$s9 = $consulta->consultar("SELECT malla_idMalla, numero, nombre from asignatura where malla_idMalla='INC' and numero between '500' and '505'");
		$s10 = $consulta->consultar("SELECT malla_idMalla, numero, nombre from asignatura where malla_idMalla='INC' and numero between '510' and '515'");
		$s11 = $consulta->consultar("SELECT malla_idMalla, numero, nombre from asignatura where malla_idMalla='INC' and numero between '600' and '602'");
		$s12 = $consulta->consultar("SELECT malla_idMalla, numero, nombre from asignatura where malla_idMalla='INC' and numero between '610' and '611'");
		//echo "<tr>";
			//echo "<td>".$sem1['malla_idMalla'].$sem1['numero']." ".$sem1['nombre']."</td>";
			//echo "<td>R: </td>\n";
			//echo "<td>".$sem2['malla_idMalla'].$sem2['numero']." ".$sem2['nombre']."</td>";
			while($sem3 = $s3->fetch(PDO::FETCH_ASSOC)) {
				$sem4 = $s4->fetch(PDO::FETCH_ASSOC);
				$sem5 = $s5->fetch(PDO::FETCH_ASSOC);
				$sem6 = $s6->fetch(PDO::FETCH_ASSOC);
				$sem7 = $s7->fetch(PDO::FETCH_ASSOC);
				$sem8 = $s8->fetch(PDO::FETCH_ASSOC);
				$sem9 = $s9->fetch(PDO::FETCH_ASSOC);
				$sem10 = $s10->fetch(PDO::FETCH_ASSOC);
				$sem1 = $s1->fetch(PDO::FETCH_ASSOC);
				$sem2 = $s2->fetch(PDO::FETCH_ASSOC);
				$sem11 = $s11->fetch(PDO::FETCH_ASSOC);
				$sem12 = $s12->fetch(PDO::FETCH_ASSOC);
				echo "<tr>";
				if($sem1){
					echo "<td>".$sem1['malla_idMalla'].$sem1['numero']." ".$sem1['nombre']."</td>";
					echo "<td>R: </td>\n";
					echo "<td>".$sem2['malla_idMalla'].$sem2['numero']." ".$sem2['nombre']."</td>";
				}else {
					echo "<td> </td>\n";
					echo "<td> </td>\n";
					echo "<td> </td>\n";
				}
				echo "<td>R: </td>\n";
				echo "<td>".$sem3['malla_idMalla'].$sem3['numero']." ".$sem3['nombre']."</td>";
				echo "<td>R: </td>\n";
				echo "<td>".$sem4['malla_idMalla'].$sem4['numero']." ".$sem4['nombre']."</td>";
				echo "<td>R: </td>\n";
				echo "<td>".$sem5['malla_idMalla'].$sem5['numero']." ".$sem5['nombre']."</td>";
				echo "<td>R: </td>\n";
				echo "<td>".$sem6['malla_idMalla'].$sem6['numero']." ".$sem6['nombre']."</td>";
				echo "<td>R: </td>\n";
				echo "<td>".$sem7['malla_idMalla'].$sem7['numero']." ".$sem7['nombre']."</td>";
				echo "<td>R: </td>\n";
				echo "<td>".$sem8['malla_idMalla'].$sem8['numero']." ".$sem8['nombre']."</td>";
				echo "<td>R: </td>\n";
				echo "<td>".$sem9['malla_idMalla'].$sem9['numero']." ".$sem9['nombre']."</td>";
				echo "<td>R: </td>\n";
				echo "<td>".$sem10['malla_idMalla'].$sem10['numero']." ".$sem10['nombre']."</td>";
				if($sem11){
					echo "<td>R: </td>\n";
					echo "<td>".$sem11['malla_idMalla'].$sem11['numero']." ".$sem11['nombre']."</td>";
				}else {
					//echo "<td> </td>\n";
					//echo "<td> </td>\n";
				}
				if($sem12){
					echo "<td>R: </td>\n";
					echo "<td>".$sem12['malla_idMalla'].$sem12['numero']." ".$sem12['nombre']."</td>";
				}else {
					//echo "<td> </td>\n";
					//echo "<td> </td>\n";
				}
				echo "</tr>";
			}
  ?>

</table>


    <?php include("../includes/footer_html.php");?>

    <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.prettyPhoto.js"></script>
    <script src="../js/main.js"></script>
</body>
</html>