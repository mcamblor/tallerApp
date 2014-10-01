<?php

require_once('../data/conexion_bd.php');

$mencion = $_POST['mencion'];

switch ($mencion) {
	case 'redes':
		echo getAsigRedes();
		break;
	
	case 'software':
		echo getAsigSw();
		break;

	case 'database':
		echo getAsigBD();
		break;
}


function getAsigRedes(){
	$consulta = new conexionBD;
	$rs = $consulta->consultar("SELECT profesor,descripcion_corta,nombre,idCodigo FROM asig_mencion WHERE mencion_idMencion='RED'");
	$count = $rs->rowCount();

	$respuesta = "";

	while($record = $rs->fetch(PDO::FETCH_ASSOC)){
		$respuesta = $respuesta.$record['profesor']."++";
		$respuesta = $respuesta.$record['descripcion_corta']."++";
		$respuesta = $respuesta.$record['nombre']."++";
		$respuesta = $respuesta.$record['idCodigo']."||";
	}

	return $respuesta;

}

function getAsigSw(){
	$consulta = new conexionBD;
	$rs = $consulta->consultar("SELECT profesor,descripcion_corta,nombre,idCodigo FROM asig_mencion WHERE mencion_idMencion='SOF'");
	$count = $rs->rowCount();

	$respuesta = "";

	while($record = $rs->fetch(PDO::FETCH_ASSOC)){
		$respuesta = $respuesta.$record['profesor']."++";
		$respuesta = $respuesta.$record['descripcion_corta']."++";
		$respuesta = $respuesta.$record['nombre']."++";
		$respuesta = $respuesta.$record['idCodigo']."||";
	}

	return $respuesta;	
}

function getAsigBD(){
	$consulta = new conexionBD;
	$rs = $consulta->consultar("SELECT profesor,descripcion_corta,nombre,idCodigo FROM asig_mencion WHERE mencion_idMencion='BD'");
	$count = $rs->rowCount();

	$respuesta = "";

	while($record = $rs->fetch(PDO::FETCH_ASSOC)){
		$respuesta = $respuesta.$record['profesor']."++";
		$respuesta = $respuesta.$record['descripcion_corta']."++";
		$respuesta = $respuesta.$record['nombre']."++";
		$respuesta = $respuesta.$record['idCodigo']."||";
	}

	return $respuesta;
}

?>