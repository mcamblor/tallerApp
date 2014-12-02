<?php

require_once('../data/conexion_bd.php');

$tipo = $_POST['tipo'];
$iDs = $_POST['idPer'];

switch ($tipo) {
	case 'Ayudante':
		deleteAyudante($iDs);
	break;
	case 'Adm':
		deleteAdm($iDs);
	break;
	case 'Academico':
	
	break;
	
}

function deleteAyudante($id){
	$consulta = new conexionBD;
	$rs = $consulta->consultar("DELETE FROM `ayudante` WHERE `idayudante`='$id'");
	$count = $rs->rowCount();

	if($count == 0){
		echo "error";
	}else{
		echo "ok";
	}	
}

function deleteAdm($id){
	$consulta = new conexionBD;
	$rs = $consulta->consultar("DELETE FROM `administrativo` WHERE `idadministrativo`='$id'");
	$count = $rs->rowCount();

	if($count == 0){
		echo "error";
	}else{
		echo "ok";
	}	
}

?>