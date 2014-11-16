<?php

require_once('../data/conexion_bd.php');

$consulta = new conexionBD;
$asignatura = $_POST['asignatura'];
$malla = $_POST['malla'];
$rs = $consulta->consultar("SELECT nombre,descrip,profesor,foto,semestre_semestre FROM asignatura WHERE numero='$asignatura' AND malla_idMalla='$malla'");

$count = $rs->rowCount();

$record = $rs->fetch(PDO::FETCH_ASSOC);

$resultado = $record['nombre']."||";
$resultado = $resultado.$record['profesor']."||";
$resultado = $resultado.$record['foto']."||";
$resultado = $resultado.$record['semestre_semestre']."||";
$resultado = $resultado.$record['descrip'];

echo $resultado;

?>