<?php

require_once('../data/conexion_bd.php');

$codigo = $_POST['idCod'];

$consulta = new conexionBD;
$rs = $consulta->consultar("SELECT nombre,descrip,semestre FROM asignaturas WHERE idCodigo='$codigo'");
$count = $rs->rowCount();

$record = $rs->fetch(PDO::FETCH_ASSOC);

$respuesta = $record['nombre']."||";
$respuesta = $respuesta.$record['descrip']."||";
$respuesta = $respuesta.$record['semestre'];

echo $respuesta;

?>