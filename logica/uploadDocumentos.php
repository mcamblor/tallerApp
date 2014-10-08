<?php

include('../data/conexion_bd.php');

$semestre = $_POST["semestre"];
$ramo = $_POST["ramo"];
$url = $_POST["dir"];
$archivo = 

$path = "../static/".$semestre."/".$ramo."/".date("Y")."/no_aprobado";
if (!is_dir($path)){
 	mkdir($path,0777,true);
 	chmod($path, 0777);
}

$uploadfilename = strtolower(str_replace(" ", "_",basename($_FILES['archivo']['name'])));

?>