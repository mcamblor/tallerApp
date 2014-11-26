<?php

require_once('../data/conexion_bd.php');

$tipo = $_POST['tipo'];

switch ($tipo) {
	case 'academico':
		getAcademico();
		break;
	case 'administrativo':
		getADM();
		break;
	case 'ayudante':
		getAyudante();
		break;
	
}

function getAcademico(){
	$consulta = new conexionBD;	
	$rs = $consulta->consultar("SELECT `nombre`, `tipo`, `correo`, `web`, `fono`, `urlfoto` FROM `academico` WHERE `estado`=1");

	$resultado = "";
	while($record = $rs->fetch(PDO::FETCH_ASSOC)){
		$resultado = $resultado.$record['nombre']."++";
		$resultado = $resultado.$record['tipo']."++";
		$resultado = $resultado.$record['correo']."++";
		$resultado = $resultado.$record['web']."++";
		$resultado = $resultado.$record['fono']."++";
		$resultado = $resultado.$record['urlfoto']."||";
	}

	echo $resultado;

}

function getAyudante(){
	$consulta = new conexionBD;	
	$rs = $consulta->consultar("SELECT `nombre`, `correo`, `urlFoto` FROM `ayudante` WHERE `estado`=1");

	$resultado = "";
	while($record = $rs->fetch(PDO::FETCH_ASSOC)){
		$resultado = $resultado.$record['nombre']."++";
		$resultado = $resultado.$record['correo']."++";
		$resultado = $resultado.$record['urlFoto']."||";
	}

	echo $resultado;

}

function getADM(){
	$consulta = new conexionBD;	
	$rs = $consulta->consultar("SELECT `nombre`, `cargo`, `correo`, `urlfoto` FROM `administrativo` WHERE `estado`=1");

	$resultado = "";
	while($record = $rs->fetch(PDO::FETCH_ASSOC)){
		$resultado = $resultado.$record['nombre']."++";
		$resultado = $resultado.$record['cargo']."++";
		$resultado = $resultado.$record['correo']."++";
		$resultado = $resultado.$record['urlfoto']."||";
	}

	echo $resultado;

}

?>