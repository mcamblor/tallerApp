<?php

require_once('../data/conexion_bd.php');

$mencion = $_POST['mencion'];
$codigo = $_POST['codigo'];

$consulta = new conexionBD;
$rs = $consulta->consultar("SELECT profesor,descripcion_corta,descripcion_larga,url_imagen,nombre,idCodigo FROM asig_mencion WHERE mencion_idMencion='$mencion' AND idCodigo='$codigo'");
$count = $rs->rowCount();

$record = $rs->fetch(PDO::FETCH_ASSOC);

$resultado = $record['profesor']."||";
$resultado = $resultado.$record['descripcion_corta']."||";
$resultado = $resultado.$record['descripcion_larga']."||";
$resultado = $resultado.$record['url_imagen']."||";
$resultado = $resultado.$record['nombre']."||";
$resultado = $resultado.$record['idCodigo'];

echo $resultado;

?>