<?php

require_once('../data/conexion_bd.php');

$nuevos_datos = $_POST['data'];
$asignatura = $_POST['ramo'];
$tipo = $_POST['tipo'];

$consulta = new conexionBD;

		$rs = $consulta->consultar("UPDATE asignatura SET $tipo = '$nuevos_datos' WHERE numero = '$asignatura'");		
		$count = $rs->rowCount();
		if($count == 0){
			echo 0;
		}else{
			echo 1;
		}


?>