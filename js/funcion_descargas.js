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
			$(".modal-body").html("<div class='row'><div class='col-sm-12'>"+tmp[1]+"</div></div><div class='row'><div class='col-sm-4'><h3>Selecciona el Periodo</h3><select id='periodo_descarga' name='periodo_descarga' class='form-control'></select></div><div class='col-sm-8' id='archivos_bajar'><h3>Documentos - <span id='year_doc'></span></h3></div></div>");
			
			var control = false;
			for (var i = 0; i < periodos_download.length-1 ; i++) {
				$("#periodo_descarga").append("<option value='"+periodos_download[i]+"'>"+periodos_download[i]+"</option>");
				$("#archivos_bajar").append("<div class='cajas_periodos inactive_periodo' id='caja_anio_"+periodos_download[i]+"'></div>");
				if(control == false){
					$("#caja_anio_"+periodos_download[i]).addClass("active_periodo");
					$("#caja_anio_"+periodos_download[i]).removeClass("inactive_periodo");
					$("#caja_anio_"+periodos_download[i]).html("ola ke ase");
					$("#year_doc").append(periodos_download[i]);
					control = true;
				}
			};

			$("#periodo_descarga").change(function(){
				$("#year_doc").html($(this).val());
				$(".cajas_periodos").each(function(i){
					var oculto = $("#caja_anio_"+periodos_download[i]).css("display");
					if(oculto == ""){
						$("#caja_anio_"+periodos_download[i]).addClass("inactive_periodo");
						$("#caja_anio_"+periodos_download[i]).removeClass("active_periodo");
					}else if(oculto == "none"){
						$("#caja_anio_"+periodos_download[i]).addClass("active_periodo");
						$("#caja_anio_"+periodos_download[i]).removeClass("inactive_periodo");
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
		$(".modal-body").html("<div class='row'><div class='col-sm-12' id='contenido_cuerpo'>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.</div></div>");
		$("#contenido_cuerpo").append("<form class='form-horizontal form_upload_doc'><fieldset><div class='form-group'><label class='col-md-4 control-label' for='file_upload'>Archivo</label><div class='col-md-6'><a class='file-input-wrapper btn btn-default btn-warning'><span class='glyphicon glyphicon-floppy-open'></span> Cargar Archivo</span><input id='file_upload' name='file_upload' multiple class='btn-primary' type='file'></a><p class='help-block'>Para multiples cargas, selecciona varios archivos.</p></div></div><div class='form-group'><label class='col-md-4 control-label' for='asignatura_upload'>Asignatura</label><div class='col-md-6'><select id='asignatura_upload' name='asignatura_upload' class='form-control'></select><p class='help-block'>Selecciona la asignatura para subir un documento</p></div></div><div class='form-group'><label class='col-md-4 control-label' for='boton_upload'></label><div class='col-md-4'><a id='boton_upload' name='boton_upload' class='btn btn-success'><span class='glyphicon glyphicon-upload'></span> Subir Documento</a><br></div></fieldset><div class='alert' role='alert' id='validar_descarga'></div><br><br><div class='alert' role='alert' id='validar_descarga2'></div></form>");
		$("#asignatura_upload").load('../includes/asignaturas_select.php');
		$("#validar_descarga").hide();
		$("#validar_descarga2").hide();
		$('#myModal').modal({show:true});

		$("#boton_upload").click(function() {
			var datos_periodo = $("#asignatura_upload").val().split("_");
			var archivos = document.getElementById("file_upload");
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

