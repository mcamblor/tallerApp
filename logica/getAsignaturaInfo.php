<?php

require_once('../data/conexion_bd.php');

$asignatura = $_POST['asignatura'];

$consulta = new conexionBD;
if(!isset($_POST['malla'])){
	$rs = $consulta->consultar("SELECT nombre,descrip,profesor,ayudante1,ayudante2,numero,foto FROM asignatura WHERE numero='$asignatura'");
}else{
	$malla = $_POST['malla'];
	$rs = $consulta->consultar("SELECT nombre,descrip,profesor,ayudante1,ayudante2,numero,foto FROM asignatura WHERE numero='$asignatura' AND malla_idMalla='$malla'");
}

$count = $rs->rowCount();

$record = $rs->fetch(PDO::FETCH_ASSOC);

$resultado = $record['nombre']."||";
$resultado = $resultado.$record['profesor']."||";
$resultado = $resultado.$record['ayudante1']."||";
$resultado = $resultado.$record['ayudante2']."||";
$resultado = $resultado.$record['numero']."||";
$resultado = $resultado.$record['foto']."||";
$resultado = $resultado.$record['descrip'];

echo $resultado;

?>