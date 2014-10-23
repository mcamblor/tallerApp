<?php

require_once('../data/conexion_bd.php');

$var = $_POST['malla'];
switch ($var) {
	case 'ICI':
		mallaICI();
		break;
	case 'IIN':
		mallaIIN();
		break;
	case 'IEJ':
		mallaIEJ();
		break;
	
}


function mallaICI(){
		$consulta = new conexionBD;
		$consulta2 = new conexionBD;
		$s1 = $consulta->consultar("SELECT id, malla_idMalla, numero, nombre from asignatura where malla_idMalla='INC' and numero between '100' and '104'");
		$s2 = $consulta->consultar("SELECT id, malla_idMalla, numero, nombre from asignatura where malla_idMalla='INC' and numero between '110' and '114'");
		$s3 = $consulta->consultar("SELECT id, malla_idMalla, numero, nombre from asignatura where malla_idMalla='INC' and numero between '200' and '205'");
		$s4 = $consulta->consultar("SELECT id, malla_idMalla, numero, nombre from asignatura where malla_idMalla='INC' and numero between '210' and '215'");
		$s5 = $consulta->consultar("SELECT id, malla_idMalla, numero, nombre from asignatura where malla_idMalla='INC' and numero between '300' and '305'");
		$s6 = $consulta->consultar("SELECT id, malla_idMalla, numero, nombre from asignatura where malla_idMalla='INC' and numero between '310' and '315'");
		$s7 = $consulta->consultar("SELECT id, malla_idMalla, numero, nombre from asignatura where malla_idMalla='INC' and numero between '400' and '405'");
		$s8 = $consulta->consultar("SELECT id, malla_idMalla, numero, nombre from asignatura where malla_idMalla='INC' and numero between '410' and '415'");
		$s9 = $consulta->consultar("SELECT id, malla_idMalla, numero, nombre from asignatura where malla_idMalla='INC' and numero between '500' and '505'");
		$s10 = $consulta->consultar("SELECT id, malla_idMalla, numero, nombre from asignatura where malla_idMalla='INC' and numero between '510' and '515'");
		$s11 = $consulta->consultar("SELECT id, malla_idMalla, numero, nombre from asignatura where malla_idMalla='INC' and numero between '600' and '602'");
		$s12 = $consulta->consultar("SELECT id, malla_idMalla, numero, nombre from asignatura where malla_idMalla='INC' and numero between '610' and '611'");
		//echo "<tr>";
			//echo "<td>".$sem1['malla_idMalla'].$sem1['numero']." ".$sem1['nombre']."</td>";
			//echo "<td>R: </td>\n";
			//echo "<td>".$sem2['malla_idMalla'].$sem2['numero']." ".$sem2['nombre']."</td>";
			$resultado = " <table style='width:80%' class='tabla_malla'>
				  	<tr>
				    <th colspan='3'><a id='year_1' class='btn btn-primary btn-block btn-warning boton_year'>Primer Año</a></th>
				    <th colspan='4'><a id='year_2' class='btn btn-primary btn-block btn-warning boton_year'>Segundo Año</a></th>		
				    <th colspan='4'><a id='year_3' class='btn btn-primary btn-block btn-warning boton_year'>Tercer Año</a></th>
				    <th colspan='4'><a id='year_4' class='btn btn-primary btn-block btn-warning boton_year'>Cuarto Año</a></th>
				    <th colspan='4'><a id='year_5' class='btn btn-primary btn-block btn-warning boton_year'>Quinto Año</a></th>
				    <th colspan='4'><a id='year_6' class='btn btn-primary btn-block btn-warning boton_year'>Sexto Año</a></th>
				  </tr>
				  <tr>
				    <td><a id='sem_1' class='btn btn-primary btn-block btn-danger boton_semestre'>1º Semestre</a></td>
				    <td colspan='2'><a id='sem_2' class='btn btn-primary btn-block btn-danger boton_semestre'>2º Semestre</a></td>		
				    <td colspan='2'><a id='sem_3' class='btn btn-primary btn-block btn-danger boton_semestre'>3º Semestre</a></td>
				    <td colspan='2'><a id='sem_4' class='btn btn-primary btn-block btn-danger boton_semestre'>4º Semestre</a></td>	    
				    <td colspan='2'><a id='sem_5' class='btn btn-primary btn-block btn-danger boton_semestre'>5º Semestre</a></td>
				    <td colspan='2'><a id='sem_6' class='btn btn-primary btn-block btn-danger boton_semestre'>6º Semestre</a></td>	    
				    <td colspan='2'><a id='sem_7' class='btn btn-primary btn-block btn-danger boton_semestre'>7º Semestre</a></td>
				    <td colspan='2'><a id='sem_8' class='btn btn-primary btn-block btn-danger boton_semestre'>8º Semestre</a></td>	    
				    <td colspan='2'><a id='sem_9' class='btn btn-primary btn-block btn-danger boton_semestre'>9º Semestre</a></td>
				    <td colspan='2'><a id='sem_10' class='btn btn-primary btn-block btn-danger boton_semestre'>10º Semestre</a></td>	    
				    <td colspan='2'><a id='sem_11' class='btn btn-primary btn-block btn-danger boton_semestre'>11º Semestre</a></td>
				    <td colspan='2'><a id='sem_12' class='btn btn-primary btn-block btn-danger boton_semestre'>12º Semestre</a></td>	
				  </tr>";
			while($sem3 = $s3->fetch(PDO::FETCH_ASSOC)) {
				$sem4 = $s4->fetch(PDO::FETCH_ASSOC);
				$sem5 = $s5->fetch(PDO::FETCH_ASSOC);
				$sem6 = $s6->fetch(PDO::FETCH_ASSOC);
				$sem7 = $s7->fetch(PDO::FETCH_ASSOC);
				$sem8 = $s8->fetch(PDO::FETCH_ASSOC);
				$sem9 = $s9->fetch(PDO::FETCH_ASSOC);
				$sem10 = $s10->fetch(PDO::FETCH_ASSOC);
				$sem1 = $s1->fetch(PDO::FETCH_ASSOC);
				$sem2 = $s2->fetch(PDO::FETCH_ASSOC);
				$sem11 = $s11->fetch(PDO::FETCH_ASSOC);
				$sem12 = $s12->fetch(PDO::FETCH_ASSOC);
				$resultado = $resultado."<tr>";
				if($sem1){
					$resultado = $resultado."<td><div class='caja_celda caja_no_pintada year_1 sem_1' id='celda_".$sem1['malla_idMalla'].$sem1['numero']."'>".$sem1['malla_idMalla'].$sem1['numero']."<br>".$sem1['nombre']."</div></td>";
					$r2 = $consulta2->consultar("select r.numero from requisito as r join asignatura as asig join asignatura_has_requisito as a where a.requisito_cod_malla=r.cod_malla and asig.id=a.asignatura_id and asig.id='$sem2[id]'"); 
					$resultado = $resultado."<td>R:";
					while($rr2 = $r2->fetch(PDO::FETCH_ASSOC)){
						$resultado = $resultado."\n".$rr2['numero']."\n";
					}$resultado = $resultado."</td>\n";
					$resultado = $resultado."<td><div class='caja_celda caja_no_pintada year_1 sem_2' id='celda_".$sem2['malla_idMalla'].$sem2['numero']."'>".$sem2['malla_idMalla'].$sem2['numero']."<br>".$sem2['nombre']."</div></td>";
				}else {
					$resultado = $resultado."<td style='border:none;'></td>\n";
					$resultado = $resultado."<td style='border:none;'></td>\n";
					$resultado = $resultado."<td style='border:none;'></td>\n";
				}
				$r3 = $consulta2->consultar("select r.numero from requisito as r join asignatura as asig join asignatura_has_requisito as a where a.requisito_cod_malla=r.cod_malla and asig.id=a.asignatura_id and asig.id='$sem3[id]'"); 
				$resultado = $resultado."<td>R:";
				while($rr3 = $r3->fetch(PDO::FETCH_ASSOC)){
					$resultado = $resultado."\n".$rr3['numero']."\n";
				}$resultado = $resultado."</td>\n";
				$resultado = $resultado."<td><div class='caja_celda caja_no_pintada year_2 sem_3' id='celda_".$sem3['malla_idMalla'].$sem3['numero']."'>".$sem3['malla_idMalla'].$sem3['numero']."<br>".$sem3['nombre']."</div></td>";
				$r4 = $consulta2->consultar("select r.numero from requisito as r join asignatura as asig join asignatura_has_requisito as a where a.requisito_cod_malla=r.cod_malla and asig.id=a.asignatura_id and asig.id='$sem4[id]'"); 
				$resultado = $resultado."<td>R:";
				while($rr4 = $r4->fetch(PDO::FETCH_ASSOC)){
					$resultado = $resultado."\n".$rr4['numero']."\n";
				}$resultado = $resultado."</td>\n";
				$resultado = $resultado."<td><div class='caja_celda caja_no_pintada year_2 sem_4' id='celda_".$sem4['malla_idMalla'].$sem4['numero']."'>".$sem4['malla_idMalla'].$sem4['numero']."<br>".$sem4['nombre']."</div></td>";
				$r5 = $consulta2->consultar("select r.numero from requisito as r join asignatura as asig join asignatura_has_requisito as a where a.requisito_cod_malla=r.cod_malla and asig.id=a.asignatura_id and asig.id='$sem5[id]'"); 
					$resultado = $resultado."<td>R:";
					while($rr5 = $r5->fetch(PDO::FETCH_ASSOC)){
						$resultado = $resultado."\n".$rr5['numero']."\n";
					}$resultado = $resultado."</td>\n";
				$resultado = $resultado."<td><div class='caja_celda caja_no_pintada year_3 sem_5' id='celda_".$sem5['malla_idMalla'].$sem5['numero']."'>".$sem5['malla_idMalla'].$sem5['numero']."<br>".$sem5['nombre']."</div></td>";
				$r6 = $consulta2->consultar("select r.numero from requisito as r join asignatura as asig join asignatura_has_requisito as a where a.requisito_cod_malla=r.cod_malla and asig.id=a.asignatura_id and asig.id='$sem6[id]'"); 
					$resultado = $resultado."<td>R:";
					while($rr6 = $r6->fetch(PDO::FETCH_ASSOC)){
						$resultado = $resultado."\n".$rr6['numero']."\n";
					}$resultado = $resultado."</td>\n";
				$resultado = $resultado."<td><div class='caja_celda caja_no_pintada year_3 sem_6' id='celda_".$sem6['malla_idMalla'].$sem6['numero']."'>".$sem6['malla_idMalla'].$sem6['numero']."<br>".$sem6['nombre']."</div></td>";
				$r7 = $consulta2->consultar("select r.numero from requisito as r join asignatura as asig join asignatura_has_requisito as a where a.requisito_cod_malla=r.cod_malla and asig.id=a.asignatura_id and asig.id='$sem7[id]'"); 
					$resultado = $resultado."<td>R:";
					while($rr7 = $r7->fetch(PDO::FETCH_ASSOC)){
						$resultado = $resultado."\n".$rr7['numero']."\n";
					}$resultado = $resultado."</td>\n";
				$resultado = $resultado."<td><div class='caja_celda caja_no_pintada year_4 sem_7' id='celda_".$sem7['malla_idMalla'].$sem7['numero']."'>".$sem7['malla_idMalla'].$sem7['numero']."<br>".$sem7['nombre']."</div></td>";
				$r8 = $consulta2->consultar("select r.numero from requisito as r join asignatura as asig join asignatura_has_requisito as a where a.requisito_cod_malla=r.cod_malla and asig.id=a.asignatura_id and asig.id='$sem8[id]'"); 
					$resultado = $resultado."<td>R:";
					while($rr8 = $r8->fetch(PDO::FETCH_ASSOC)){
						$resultado = $resultado."\n".$rr8['numero']."\n";
					}$resultado = $resultado."</td>\n";
				$resultado = $resultado."<td><div class='caja_celda caja_no_pintada year_4 sem_8' id='celda_".$sem8['malla_idMalla'].$sem8['numero']."'>".$sem8['malla_idMalla'].$sem8['numero']."<br>".$sem8['nombre']."</div></td>";
				$r9 = $consulta2->consultar("select r.numero from requisito as r join asignatura as asig join asignatura_has_requisito as a where a.requisito_cod_malla=r.cod_malla and asig.id=a.asignatura_id and asig.id='$sem9[id]'"); 
				$resultado = $resultado."<td>R:";
				$count = $r9->rowCount();
				if($count > 2){
					$resultado = $resultado."\nAD\nHOC\n";
				}else {
					while($rr9 = $r9->fetch(PDO::FETCH_ASSOC)){
						$resultado = $resultado."\n".$rr9['numero']."\n";
					}
					
				}
				$resultado = $resultado."</td>\n";
				$resultado = $resultado."<td><div class='caja_celda caja_no_pintada year_5 sem_9' id='celda_".$sem9['malla_idMalla'].$sem9['numero']."'>".$sem9['malla_idMalla'].$sem9['numero']."<br>".$sem9['nombre']."</div></td>";
				$r10 = $consulta2->consultar("select r.numero from requisito as r join asignatura as asig join asignatura_has_requisito as a where a.requisito_cod_malla=r.cod_malla and asig.id=a.asignatura_id and asig.id='$sem10[id]'"); 
				$resultado = $resultado."<td>R:";
				$count = $r10->rowCount();
				if($count > 3){
					$resultado = $resultado."\nAD\nHOC\n";
				}else {
					while($rr10 = $r10->fetch(PDO::FETCH_ASSOC)){
						$resultado = $resultado."\n".$rr10['numero']."\n";
					}
					
				}
				$resultado = $resultado."</td>\n";
				$resultado = $resultado."<td><div class='caja_celda caja_no_pintada year_5 sem_10' id='celda_".$sem10['malla_idMalla'].$sem10['numero']."'>".$sem10['malla_idMalla'].$sem10['numero']."<br>".$sem10['nombre']."</div></td>";
				if($sem11){
					$r11 = $consulta2->consultar("select r.numero from requisito as r join asignatura as asig join asignatura_has_requisito as a where a.requisito_cod_malla=r.cod_malla and asig.id=a.asignatura_id and asig.id='$sem11[id]'"); 
					$resultado = $resultado."<td>R:";
					$count = $r11->rowCount();
					if($count > 2){
						if($sem11['numero'] == 601) $resultado = $resultado."\n5°\nAÑO\nAPR\n";
						else $resultado = $resultado."\nAD\nHOC\n";
					}else {
						while($rr11 = $r11->fetch(PDO::FETCH_ASSOC)){
							$resultado = $resultado."\n".$rr11['numero']."\n";
						}
					
					}
				$resultado = $resultado."</td>\n";
				$resultado = $resultado."<td><div class='caja_celda caja_no_pintada year_6 sem_11' id='celda_".$sem11['malla_idMalla'].$sem11['numero']."'>".$sem11['malla_idMalla'].$sem11['numero']."<br>".$sem11['nombre']."</div></td>";
				}else {
					//$resultado = $resultado."<td> </td>\n";
					//$resultado = $resultado."<td> </td>\n";
				}
				if($sem12){
					$r12 = $consulta2->consultar("select r.numero from requisito as r join asignatura as asig join asignatura_has_requisito as a where a.requisito_cod_malla=r.cod_malla and asig.id=a.asignatura_id and asig.id='$sem12[id]'"); 
					$resultado = $resultado."<td>R:";
					while($rr12 = $r12->fetch(PDO::FETCH_ASSOC)){
						$resultado = $resultado."\n".$rr12['numero']."\n";
					}$resultado = $resultado."</td>\n";
					$resultado = $resultado."<td><div class='caja_celda caja_no_pintada year_6 sem_12' id='celda_".$sem12['malla_idMalla'].$sem12['numero']."'>".$sem12['malla_idMalla'].$sem12['numero']."<br>".$sem12['nombre']."</div></td>";
				}else {
					//$resultado = $resultado."<td> </td>\n";
					//$resultado = $resultado."<td> </td>\n";
				}
				$resultado = $resultado."</tr>";
			}

		echo $resultado."</table>";
}

function mallaIIN(){
	$consulta = new conexionBD;
		$consulta2 = new conexionBD;
		$s1 = $consulta->consultar("SELECT id, malla_idMalla, numero, nombre from asignatura where malla_idMalla='INC' and numero between '100' and '104'");
		$s2 = $consulta->consultar("SELECT id, malla_idMalla, numero, nombre from asignatura where malla_idMalla='INC' and numero between '110' and '114'");
		$s3 = $consulta->consultar("SELECT id, malla_idMalla, numero, nombre from asignatura where malla_idMalla='INC' and numero between '200' and '205'");
		$s4 = $consulta->consultar("SELECT id, malla_idMalla, numero, nombre from asignatura where malla_idMalla='INC' and numero between '210' and '215'");
		$s5 = $consulta->consultar("SELECT id, malla_idMalla, numero, nombre from asignatura where malla_idMalla='IIN' and numero between '300' and '305'");
		$s6 = $consulta->consultar("SELECT id, malla_idMalla, numero, nombre from asignatura where malla_idMalla='IIN' and numero between '310' and '314'");
		$s7 = $consulta->consultar("SELECT id, malla_idMalla, numero, nombre from asignatura where malla_idMalla='IIN' and numero between '400' and '404'");
		$s8 = $consulta->consultar("SELECT id, malla_idMalla, numero, nombre from asignatura where malla_idMalla='IIN' and numero between '410' and '414'");
		$s9 = $consulta->consultar("SELECT id, malla_idMalla, numero, nombre from asignatura where malla_idMalla='IIN' and numero between '500' and '503'");
		$s10 = $consulta->consultar("SELECT id, malla_idMalla, numero, nombre from asignatura where malla_idMalla='IIN' and numero between '510' and '511'");
		//echo "<tr>";
			//echo "<td>".$sem1['malla_idMalla'].$sem1['numero']." ".$sem1['nombre']."</td>";
			//echo "<td>R: </td>\n";
			//echo "<td>".$sem2['malla_idMalla'].$sem2['numero']." ".$sem2['nombre']."</td>";
			$resultado = "<table style='width:80%' class='tabla_malla'>
						  <tr>
						    <td colspan='3' >Primer año</td>
						    <td colspan='4' >Segundo año</td>		
						    <td colspan='4' >Tercer año</td>
						    <td colspan='4' >Cuarto año</td>
						    <td colspan='4' >Quinto año</td>
						    </tr>
						  <tr>
						    <td>1° Sem.</td>
						    <td colspan='2'>2° Sem.</td>		
						    <td colspan='2'>3° Sem.</td>
						    <td colspan='2'>4° Sem.</td>	    
						    <td colspan='2'>5° Sem.</td>
						    <td colspan='2'>6° Sem.</td>	    
						    <td colspan='2'>7° Sem.</td>
						    <td colspan='2'>8° Sem.</td>	    
						    <td colspan='2'>9° Sem.</td>
						    <td colspan='2'>10° Sem.</td>	    
						   </tr>";

			while($sem3 = $s3->fetch(PDO::FETCH_ASSOC)) {
				$sem4 = $s4->fetch(PDO::FETCH_ASSOC);
				$sem5 = $s5->fetch(PDO::FETCH_ASSOC);
				$sem6 = $s6->fetch(PDO::FETCH_ASSOC);
				$sem7 = $s7->fetch(PDO::FETCH_ASSOC);
				$sem8 = $s8->fetch(PDO::FETCH_ASSOC);
				$sem9 = $s9->fetch(PDO::FETCH_ASSOC);
				$sem10 = $s10->fetch(PDO::FETCH_ASSOC);
				$sem1 = $s1->fetch(PDO::FETCH_ASSOC);
				$sem2 = $s2->fetch(PDO::FETCH_ASSOC);
				$resultado = $resultado."<tr>";
				if($sem1){
					$resultado = $resultado."<td>".$sem1['malla_idMalla'].$sem1['numero']." ".$sem1['nombre']."</td>";
					$r2 = $consulta2->consultar("select r.numero from requisito as r join asignatura as asig join asignatura_has_requisito as a where a.requisito_cod_malla=r.cod_malla and asig.id=a.asignatura_id and asig.id='$sem2[id]'"); 
					$resultado = $resultado."<td>R:";
					while($rr2 = $r2->fetch(PDO::FETCH_ASSOC)){
						$resultado = $resultado."\n".$rr2['numero']."\n";
					}$resultado = $resultado."</td>\n";
					$resultado = $resultado."<td>".$sem2['malla_idMalla'].$sem2['numero']." ".$sem2['nombre']."</td>";
				}else {
					$resultado = $resultado."<td> </td>\n";
					$resultado = $resultado."<td> </td>\n";
					$resultado = $resultado."<td> </td>\n";
				}
				$r3 = $consulta2->consultar("select r.numero from requisito as r join asignatura as asig join asignatura_has_requisito as a where a.requisito_cod_malla=r.cod_malla and asig.id=a.asignatura_id and asig.id='$sem3[id]'"); 
				$resultado = $resultado."<td>R:";
				while($rr3 = $r3->fetch(PDO::FETCH_ASSOC)){
					$resultado = $resultado."\n".$rr3['numero']."\n";
				}$resultado = $resultado."</td>\n";
				$resultado = $resultado."<td>".$sem3['malla_idMalla'].$sem3['numero']." ".$sem3['nombre']."</td>";
				$r4 = $consulta2->consultar("select r.numero from requisito as r join asignatura as asig join asignatura_has_requisito as a where a.requisito_cod_malla=r.cod_malla and asig.id=a.asignatura_id and asig.id='$sem4[id]'"); 
				$resultado = $resultado."<td>R:";
				while($rr4 = $r4->fetch(PDO::FETCH_ASSOC)){
					$resultado = $resultado."\n".$rr4['numero']."\n";
				}$resultado = $resultado."</td>\n";
				$resultado = $resultado."<td>".$sem4['malla_idMalla'].$sem4['numero']." ".$sem4['nombre']."</td>";
				$r5 = $consulta2->consultar("select r.numero from requisito as r join asignatura as asig join asignatura_has_requisito as a where a.requisito_cod_malla=r.cod_malla and asig.id=a.asignatura_id and asig.id='$sem5[id]'"); 
					$resultado = $resultado."<td>R:";
					while($rr5 = $r5->fetch(PDO::FETCH_ASSOC)){
						$resultado = $resultado."\n".$rr5['numero']."\n";
					}$resultado = $resultado."</td>\n";
				$resultado = $resultado."<td>".$sem5['malla_idMalla'].$sem5['numero']." ".$sem5['nombre']."</td>";
				
				if($sem6){
					$r6 = $consulta2->consultar("select r.numero from requisito as r join asignatura as asig join asignatura_has_requisito as a where a.requisito_cod_malla=r.cod_malla and asig.id=a.asignatura_id and asig.id='$sem6[id]'"); 
					$resultado = $resultado."<td>R:";
					while($rr6 = $r6->fetch(PDO::FETCH_ASSOC)){
						$resultado = $resultado."\n".$rr6['numero']."\n";
					}$resultado = $resultado."</td>\n";
					$resultado = $resultado."<td>".$sem6['malla_idMalla'].$sem6['numero']." ".$sem6['nombre']."</td>";
					$r7 = $consulta2->consultar("select r.numero from requisito as r join asignatura as asig join asignatura_has_requisito as a where a.requisito_cod_malla=r.cod_malla and asig.id=a.asignatura_id and asig.id='$sem7[id]'"); 
					$resultado = $resultado."<td>R:";
					while($rr7 = $r7->fetch(PDO::FETCH_ASSOC)){
						$resultado = $resultado."\n".$rr7['numero']."\n";
					}$resultado = $resultado."</td>\n";
					$resultado = $resultado."<td>".$sem7['malla_idMalla'].$sem7['numero']." ".$sem7['nombre']."</td>";
					$r8 = $consulta2->consultar("select r.numero from requisito as r join asignatura as asig join asignatura_has_requisito as a where a.requisito_cod_malla=r.cod_malla and asig.id=a.asignatura_id and asig.id='$sem8[id]'"); 
					$resultado = $resultado."<td>R:";
					while($rr8 = $r8->fetch(PDO::FETCH_ASSOC)){
						$resultado = $resultado."\n".$rr8['numero']."\n";
					}$resultado = $resultado."</td>\n";
					$resultado = $resultado."<td>".$sem8['malla_idMalla'].$sem8['numero']." ".$sem8['nombre']."</td>";
				}else {
					
				}
				if($sem9){
					$r9 = $consulta2->consultar("select r.numero from requisito as r join asignatura as asig join asignatura_has_requisito as a where a.requisito_cod_malla=r.cod_malla and asig.id=a.asignatura_id and asig.id='$sem9[id]'"); 
					$resultado = $resultado."<td>R:";
					$count = $r9->rowCount();
					if($count > 1){
						$resultado = $resultado."\n4°\nAÑO\nAPR\n";
					}else {
						while($rr9 = $r9->fetch(PDO::FETCH_ASSOC)){
							$resultado = $resultado."\n".$rr9['numero']."\n";
						}
					}
					$resultado = $resultado."</td>\n";
					$resultado = $resultado."<td>".$sem9['malla_idMalla'].$sem9['numero']." ".$sem9['nombre']."</td>";
				}else {
					
				}
				if($sem10){
					$r10 = $consulta2->consultar("select r.numero from requisito as r join asignatura as asig join asignatura_has_requisito as a where a.requisito_cod_malla=r.cod_malla and asig.id=a.asignatura_id and asig.id='$sem10[id]'"); 
					$resultado = $resultado."<td>R:";
					$count = $r10->rowCount();
					while($rr10 = $r10->fetch(PDO::FETCH_ASSOC)){
						$resultado = $resultado."\n".$rr10['numero']."\n";
					}
					$resultado = $resultado."</td>\n";
					$resultado = $resultado."<td>".$sem10['malla_idMalla'].$sem10['numero']." ".$sem10['nombre']."</td>";
				}else {}
					
				$resultado = $resultado."</tr>";
			}
			echo $resultado."</table>";
}

function mallaIEJ(){

}

?>