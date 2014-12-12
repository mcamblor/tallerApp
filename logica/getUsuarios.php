<?php

require_once('../data/conexion_bd.php');

$consulta = new conexionBD;
$rs = $consulta->consultar("SELECT `rut`, `nombre`, `apellido`, `mail`, `nickname`, `tipo` FROM `usuario_administrador`");

$respuesta = "";
while ($record = $rs->fetch(PDO::FETCH_ASSOC)) {
	$respuesta = $respuesta.$record['rut']."++".$record['nombre']."++".$record['apellido']."++".$record['mail']."++".$record['nickname']."++".$record['tipo']."||";
}

echo $respuesta;

?>