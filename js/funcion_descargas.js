$( document ).ready(function() {

	$(".enlace_descarga").click(function() {
		var variables = $(this).attr("id").split("_");
		$.ajax({
		url: '../logica/getAsignaturaGral.php',
		type: 'POST',
		async: true,
		data: 'malla='+variables[0]+'&number='+variables[1],
		success: function(datos_recibidos) {
			var tmp = datos_recibidos.split("||");
			var periodos_download = tmp[2].split("++");
			$(".modal-title").html("Semestre "+tmp[3]+" - "+tmp[0]);
			$(".modal-body").html("<div class='row'><div class='col-sm-12'>"+tmp[1]+"</div></div><div class='row'><div class='col-sm-4'><h3>Selecciona el Periodo</h3><select id='periodo_descarga' name='periodo_descarga' class='form-control'></select></div></div><div class='row'><div class='col-sm-12' id='contenido_descargable'></div></div>");
			
			var descargas = tmp[4].split("|+|");

			$("#contenido_descargable").html("<h3>Documentos - <span id='year_doc'></span></h3><table id='tablaDownload' class='display' cellspacing='0' width='100%'><tbody id='tabla_descargas'><thead><tr><th>Nombre</th><th>Comentario</th><th>Autor</th><th></th></tr></thead></tbody></table>");

			for(var i=0;i<descargas.length-1;i++){
				var datos_descargas = descargas[i].split("++");
				$("#tabla_descargas").append("<tr class='template-upload fade in'><td class='nombre_archivo'>"+datos_descargas[0]+"</td><td class='comentario_archivo'>"+datos_descargas[2]+"</td><td class='class='autor_archivo>"+datos_descargas[3]+"</td><td class='boton_descarga_archivo'><a class='btn btn-md btn-success' href='"+datos_descargas[1]+"'><span class='glyphicon glyphicon-download'></span> Descargar</a></td></tr>");
			}

			$('#tablaDownload').dataTable({
                "scrollY":        "auto",
                "scrollCollapse": true,
                "paging":         false
            });

			var fecha = new Date();
			var anio = fecha.getFullYear();
			for (var i = 0; i < periodos_download.length-1 ; i++) {
				if(periodos_download[i] == anio){
					$("#periodo_descarga").append("<option value='"+periodos_download[i]+"_"+variables[0].toLowerCase()+variables[1]+"' selected>"+periodos_download[i]+"</option>");
					$("#year_doc").append(periodos_download[i]);
				}else{
					$("#periodo_descarga").append("<option value='"+periodos_download[i]+"_"+variables[0].toLowerCase()+variables[1]+"'>"+periodos_download[i]+"</option>");
				}
			};

			$("#periodo_descarga").change(function(){
				var atributos_seleccion = $(this).val().split("_"); 
				$("#year_doc").html(atributos_seleccion[0]);
				$.ajax({
					url: '../logica/getDescargas.php',
					type: 'POST',
					async: true,
					data: 'codigoRamo='+atributos_seleccion[1]+'&year='+atributos_seleccion[0],
					success: function(datos_recibidos) {
						$("#tabla_descargas").html("");
						var atributos_descargas = datos_recibidos.split("||");
						for (var i = 0; i < atributos_descargas.length-1 ; i++) {
							var datas = atributos_descargas[i].split("++");
							$("#tabla_descargas").append("<tr class='template-upload fade in'><td class='nombre_archivo'>"+datas[0]+"</td><td class='comentario_archivo'>"+datas[3]+"</td><td class='class='autor_archivo>"+datas[2]+"</td><td class='boton_descarga_archivo'><a class='btn btn-md btn-success' href='"+datas[1]+"'><span class='glyphicon glyphicon-download'></span> Descargar</a></td></tr>");
						}

					}
				});
			});


			$('#myModal').modal({show:true});


			}
		});
	});	

	$("#subir_documento").click(function() {
		$('input[type=file]').bootstrapFileInput();
		$(".modal-title").html("Subir Nuevos Documentos");
		$(".modal-body").html("<div class='row'><div class='col-sm-12' id='contenido_cuerpo'>Para subir un/unos documentos, debes seleccionar los archivos que deseas subir, tambien debes elegir a la asignatura que deseas que se suban. Los documentos estarn disponibles para descargarlos posterior a una aprobacion del encargado de la asignatura.</div></div>");
		$("#contenido_cuerpo").append("<form class='form-horizontal form_upload_doc'><fieldset><div class='form-group'><label class='col-md-4 control-label' for='file_upload'>Archivo</label><div class='col-md-6'><a class='file-input-wrapper btn btn-default btn-warning'><span class='glyphicon glyphicon-floppy-open'></span> Cargar Archivo</span><input id='file_upload' name='file_upload' multiple class='btn-primary' type='file'></a><p class='help-block'>Para multiples cargas, selecciona varios archivos.</p></div></div><div class='form-group'><label class='col-md-4 control-label' for='asignatura_upload'>Asignatura</label><div class='col-md-6'><select id='asignatura_upload' name='asignatura_upload' class='form-control'></select><p class='help-block'>Selecciona la asignatura para subir un documento</p></div></div><div class='form-group'><label class='col-md-4 control-label' for='boton_upload'></label><div class='col-md-4'><a id='boton_upload' name='boton_upload' class='btn btn-success'><span class='glyphicon glyphicon-upload'></span> Subir Documento</a><br></div></fieldset><div class='alert alert-dismissible' role='alert' id='validar_descarga'><button type='button' class='close' data-dismiss='alert'><span aria-hidden='true'>&times;</span><span class='sr-only'>Close</span></button></div><br><br><div class='alert alert-dismissible' role='alert' id='validar_descarga2'><button type='button' class='close' data-dismiss='alert'><span aria-hidden='true'>&times;</span><span class='sr-only'>Close</span></button><div id='contenido_div_error'></div></div></form>");
		$("#asignatura_upload").load('../includes/asignaturas_select.php');
		$("#validar_descarga").hide();
		$("#validar_descarga2").hide();
		$('#myModal').modal({show:true});

		$("#boton_upload").click(function() {
			var select_ramo = $("#asignatura_upload");
			var comprobar_files = $("#file_upload");
			
			if(comprobar_files.val() == ''){
				$("#validar_descarga2").addClass("alert-danger");
				$("#contenido_div_error").html("<strong>ERROR! </strong>- Debes subir al menos un archivo.");
				$("#validar_descarga2").show("slide");
				setTimeout(function() {
                	$('#validar_descarga2').hide('slide');
                	$("#contenido_div_error").html("");
            	}, 5000);
            	return false;
			}

			if(select_ramo.val() == 0){
				$("#validar_descarga2").addClass("alert-danger");
				$("#contenido_div_error").html("<strong>ERROR! </strong>- Debes seleccionar la asignatura donde cargaras tus archivos.");
				$("#validar_descarga2").show("slide");
				setTimeout(function() {
                	$('#validar_descarga2').hide('slide');
                	$("#contenido_div_error").html("");
            	}, 5000);
            	return false;
			}

			var archivos = document.getElementById('file_upload');
			var datos_periodo = select_ramo.val().split("_");
			var documento = archivos.files;
			var datta = new FormData();
			
			for(var i=0;i<documento.length;i++){
				datta.append('archivo'+i,documento[i]);
			}

			$.ajax({
			url: '../logica/uploadDocumentos.php',
			type: 'POST',
			async: true,
			contentType: false,
			processData: false,
			cache: false,
			data: datta,
			success: function(datos_recibidos) {

					var data_from = datos_recibidos.split("||");
					var comprobar_malos = false;
					var comprobar_buenos = false;
					var nombres = "";

					for(var i=0;i<data_from.length-1;i++){
						var estado_archivo = data_from[i].split("++");
						if(estado_archivo[0] == 'ok'){
							if(comprobar_buenos == false){
								$("#validar_descarga").append("<strong>Los siguientes archivos se cargaron con exito:</strong><br><br>");
								comprobar_buenos = true;
							}
							$("#validar_descarga").append("Archivo "+(i+1)+": "+estado_archivo[1]+"<br>");
							nombres = nombres+estado_archivo[1]+"||";
						}
						if(estado_archivo[0] == 'no'){
							if(comprobar_malos == false){
								$("#validar_descarga2").append("<strong>Los siguientes archivos no se cargaron:</strong><br><br>");
								comprobar_malos = true;
							}
							$("#validar_descarga2").append("Archivo "+(i+1)+": "+estado_archivo[1]+"<br>");
						}
					}

					$.ajax({
					url: '../logica/setUrldownloadBD.php',
					type: 'POST',
					async: true,
					data: 'sem='+datos_periodo[0]+'&ramo='+datos_periodo[1]+'&name='+nombres,
					success: function(datos_recibidos) {
						}
					});
						
					if(comprobar_buenos == true){
						$("#validar_descarga").addClass("alert-success");	
						$("#validar_descarga").show("slide");
					}
					if(comprobar_malos == true){
						$("#validar_descarga2").addClass("alert-danger");
						$("#validar_descarga2").show("slide");
					}
				}
			});

		});

	});



});	

