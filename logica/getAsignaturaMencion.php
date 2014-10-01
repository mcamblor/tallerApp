<?php

require_once('../data/conexion_bd.php');

$mencion = $_POST['mencion'];

switch ($mencion) {
	case 'redes':
		echo getAsigRedes();
		break;
	
	case 'software':
		echo getAsigSw();
		break;

	case 'database':
		echo getAsigBD();
		break;
}


function getAsigRedes(){

}

function getAsigSw(){
	
}

function getAsigBD(){
	
}

?>