<?php

require_once('../data/conexion_bd.php');

$malla = $_POST['malla'];
$numero = $_POST['number'];

$codigo = $malla.$numero;

$consulta = new conexionBD;
$rs = $consulta->consultar("SELECT nombre,descrip,semestre_semestre FROM asignatura WHERE numero='$numero' AND malla_idMalla='$malla' ");
$rs1 = $consulta->consultar("SELECT anio FROM descargas WHERE idCodigo='$codigo' AND estado=1");
$count = $rs->rowCount();
$count1 = $rs1->rowCount();

$record = $rs->fetch(PDO::FETCH_ASSOC);
$periodos = "";

while($record1 = $rs1->fetch(PDO::FETCH_ASSOC)){
	$periodos = $periodos.$record1['anio']."++";
}

$respuesta = $record['nombre']."||";
$respuesta = $respuesta.$record['descrip']."||";
$respuesta = $respuesta.$periodos."||";
$respuesta = $respuesta.$record['semestre_semestre'];

echo $respuesta;

?>