<?php

include('../data/conexion_bd.php');

$consulta = new conexionBD;
$semestre = $_POST['sem'];
$asignatura = $_POST['ramo'];
$nombres_archivos = $_POST['name'];

$nombres = explode("||",$nombres_archivos);
$cant_nombres = count($nombres)-1;
$temp = 0;
$url = "../static/$semestre/$asignatura/".date("Y")."/";

while($temp<$cant_nombres){
	$datos = explode(".", $nombres[$temp]);
	$rs = $consulta->consultar("INSERT INTO `descargas` (`idDescargas`, `titulo`, `url`, `abstract`, `anio`, `estado`, `usuario_administrador_rut`, `idCodigo`) VALUES (NULL,'".$datos[0]."','".$url.$nombres[$temp]."', NULL,'".date("Y")."','0','16484897','".$asignatura."')");
	$count = $rs->rowCount();
	$temp = $temp + 1;
}





?>