<?php

$semestre = $_POST["sem"];
$ramo = $_POST["ramo"];

$path = "../static/$semestre/$ramo/".date("Y")."/no_aprobado";
if (!is_dir($path)){
 	mkdir($path,0777,true);
 	chmod($path, 0777);
}

?>