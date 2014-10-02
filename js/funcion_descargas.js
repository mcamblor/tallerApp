$( document ).ready(function() {

	$(".enlace_descarga").click(function() {
		$.ajax({
		url: '../logica/getAsignaturaGral.php',
		type: 'POST',
		async: true,
		data: 'idCod='+$(this).attr("id"),
		success: function(datos_recibidos) {
			var tmp = datos_recibidos.split("||");
			$(".modal-title").html("Semestre "+tmp[2]+" - "+tmp[0]);
			$(".modal-body").html("<div class='row'><div class='col-sm-12'>"+tmp[1]+"</div></div><div class='row'><div class='col-sm-6'><h3>Selecciona el Periodo</h3></div><div class='col-sm-6'><h3>Documentos</h3></div></div>");
			$('#myModal').modal({show:true});	
			}
		});
	});	

	$("#subir_documento").click(function() {
		$('input[type=file]').bootstrapFileInput();
		$(".modal-title").html("Subir Nuevos Documentos");
		$(".modal-body").html("<div class='row'><div class='col-sm-12' id='contenido_cuerpo'>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.</div></div>");
		$("#contenido_cuerpo").append("<form class='form-horizontal form_upload_doc'><fieldset><div class='form-group'><label class='col-md-4 control-label' for='file_upload'>Archivo</label><div class='col-md-6'><a class='file-input-wrapper btn btn-default btn-warning'><span class='glyphicon glyphicon-floppy-open'></span> Cargar Archivo</span><input id='file_upload' name='file_upload' class='btn-primary' multiple type='file'></a><p class='help-block'>Para multiples cargas, selecciona varios archivos.</p></div></div><div class='form-group'><label class='col-md-4 control-label' for='asignatura_upload'>Asignatura</label><div class='col-md-6'><select id='asignatura_upload' name='asignatura_upload' class='form-control'></select><p class='help-block'>Selecciona la asignatura para subir un documento</p></div></div><div class='form-group'><label class='col-md-4 control-label' for='boton_upload'></label><div class='col-md-4'><button id='boton_upload' name='boton_upload' class='btn btn-success'><span class='glyphicon glyphicon-upload'></span> Subir Documento</button></div></div></fieldset></form>");
		$("#asignatura_upload").load('../includes/asignaturas_select.php');
		$('#myModal').modal({show:true});
	});



});	