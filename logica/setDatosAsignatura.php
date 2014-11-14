<?php

require_once('../data/conexion_bd.php');

$nuevos_datos = $_POST['data'];
$asignatura = explode("_", $_POST['ramo']);
$tipo = $_POST['tipo'];

$consulta = new conexionBD;
		if($tipo == "foto"){
			$nuevos_datos = "/tallerapp/images/asignaturas/".$nuevos_datos;
			$rs = $consulta->consultar("UPDATE asignatura SET $tipo = '$nuevos_datos' WHERE numero = '$asignatura[1]' AND malla_idMalla='$asignatura[0]'");
		}else{
			$rs = $consulta->consultar("UPDATE asignatura SET $tipo = '$nuevos_datos' WHERE numero = '$asignatura[1]' AND malla_idMalla='$asignatura[0]'");
		}
		$count = $rs->rowCount();
		if($count == 0){
			echo "error";
		}else{
			if($tipo == "foto"){
				echo "ok||".$nuevos_datos;
			}else{
				echo "ok";
			}
		}


?>