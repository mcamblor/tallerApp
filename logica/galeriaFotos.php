<?php

$files = array_diff( scandir("../images/asignaturas"), array(".", "..") );
$respuesta = "";
for ($i=2; $i < sizeof($files)+2; $i++) { 
	$respuesta = $respuesta."/tallerapp/images/asignaturas/".$files[$i]."||";
}

echo $respuesta;


?>