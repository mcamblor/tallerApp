<?php 	
		require_once('../data/conexion_bd.php');
		$user = $_POST['usuario'];
		$pass = $_POST['clave'];
		
		session_start();

		$consulta = new conexionBD;
		$rs = $consulta->consultar("SELECT * FROM usuario_administrador WHERE nickname='$user'");
		$count = $rs->rowCount();

		if($count == 0){
			session_destroy();
			echo 2;
		}else{
			$record = $rs->fetch(PDO::FETCH_ASSOC);
			if($record["password"] == $pass){
				$_SESSION['nick'] = $record["nickname"];
				$_SESSION['rut'] = $record["rut"];
				echo 0;
			}else{
				session_destroy();
				echo 1;    
			}
		}
				  
?>	