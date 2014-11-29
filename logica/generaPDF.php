<?php

$var = $_POST['tipoMalla'];
$datos = $_POST['llevar_malla'];

$estilo = "<html><head>
	<meta http-equiv='Content-type' content='text/html; charset=utf-8' />
	<style>
	body {
	  padding-top: 80px;
	  <!--color: #34495e;>
	  background: #f5f5f5;
	  font-family: 'Roboto', sans-serif;
	  font-weight: 300;
	}
	#header{text-align: center;}
	.caja_celda{
		font-size: 10px;
		padding: 6px;
		border-radius: 10px;
		width: 115px;
		height: 90px;
		text-align: center;
	}

	.requisito_celda{
		font-size: 12px;
	}

	.btn-block {
		width: 100%;
		padding-right: 0;
		padding-left: 0;
	}

	.btn-warning {
		color: #fff;
		background-color: #f0ad4e;
		border-color: #eea236;
	}

	.btn-danger {
		color: #fff;
		background-color: #d9534f;
		border-color: #d43f3a;
	}

	.btn {
		display: inline-block;
		padding: 6px 12px;
		margin-bottom: 0;
		font-size: 14px;
		font-weight: normal;
		line-height: 1.428571429;
		text-align: center;
		white-space: nowrap;
		vertical-align: middle;
		cursor: pointer;
		border: 1px solid transparent;
		border-radius: 4px;
		-webkit-user-select: none;
		-moz-user-select: none;
		-ms-user-select: none;
		-o-user-select: none;
		user-select: none;
	}

	.boton_ver_info_asignatura{
		display:none;
	}

	.caja_no_pintada{
	  border: 1px solid #75889B;
	}	

	.caja_pintada {
		background-color: #2ecc71;
		color: #f5f5f5;
	}

	.caja_click {
		color: #fff;
		background-color: #f0ad4e;
	}

	.caja_avance {
		background-color: #81DAF5;
	}

	.boton_year{
		background: #f5f5f5;
		color:#fff;background-color:#f0ad4e;border-color:#eea236;
	}
	.boton_semestre{
		color:#fff;background-color:#d9534f;border-color:#d43f3a;
	}
	</style>
	</head>";
	
	require_once("dompdf/dompdf_config.inc.php");
	$dompdf = new DOMPDF();
	$dompdf->set_paper("c2","landscape");
	$dompdf->load_html($estilo."<body>".utf8_encode("<h1 align='center'>Avance Académico: Ingeniería Civil en Informática</h1>".utf8_decode($datos))."</body></html>");
	$dompdf->render();
	$pdf = $dompdf->output();
	$filename = 'malla'.$var.'-'.date("Y-m-d").'-'.date("H-i-s").'.pdf';
	//file_put_contents("../static/simulacion/".$filename, $pdf);
	$dompdf->stream($filename, array("Attachment" => 0));


?>