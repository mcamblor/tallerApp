<?php

require_once('../data/conexion_bd.php');

$tipo = $_POST['tipo'];

switch ($tipo) {
	case 'new':
		add_objetivo($_POST['code'],$_POST['name_asig'],$_POST['content']);
		break;
	case 'delete':
		$id_objetivo = explode("||", $_POST['idObj']);
		$cant = count($id_objetivo)-1;
		for ($i=0; $i < $cant; $i++) {
			delete_objetivo($id_objetivo[$i]);
		}
		break;
	case 'update':
		$id_objetivo = explode("||", $_POST['idObj']);
		$estado = explode("||", $_POST['state']);
		$cant = count($id_objetivo)-1;
		for ($i=0; $i < $cant; $i++) {
			update_objetivo($id_objetivo[$i],$estado[$i]);
		}
		break;
}

function delete_objetivo($idO){
	$consulta = new conexionBD;
	$rs1 = $consulta->consultar("DELETE FROM `objetivos` WHERE `idObjetivo`='$idO'");
}

function add_objetivo($codigo,$nombre,$desc){
	$consulta = new conexionBD;
	$rs1 = $consulta->consultar("INSERT INTO `objetivos`(`idObjetivo`, `idCodigo_asig`, `nombre_asig`, `descrip`, `estado`) VALUES (NULL,'$codigo','$nombre','$desc','visible')");
	$rs2 = $consulta->consultar("SELECT idObjetivo FROM objetivos WHERE idObjetivo=(SELECT max(idObjetivo) FROM objetivos)");
	$record = $rs2->fetch(PDO::FETCH_ASSOC);
	echo $record['idObjetivo'];
}

function update_objetivo($id_obje,$est){
	$consulta = new conexionBD;
	if($est == "checked"){
		$rs1 = $consulta->consultar("UPDATE `objetivos` SET `estado`='visible' WHERE idObjetivo='$id_obje'");
	}else{
		$rs1 = $consulta->consultar("UPDATE `objetivos` SET `estado`='no_visible' WHERE idObjetivo='$id_obje'");
	}
}

?>