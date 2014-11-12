$( document ).ready(function() {

	$.ajax({
		url: '../logica/getMencionInfo.php',
		type: 'POST',
		async: true,
		data: 'mencion=SOF',
		success: function(datos_recibidos) {
			$("#campo_descripcion").html(datos_recibidos);
		}
	});

	$.ajax({
		url: '../logica/getAsignaturaMencion.php',
		type: 'POST',
		async: true,
		data: 'mencion=software',
		success: function(datos_recibidos) {

			var tmp = datos_recibidos.split("||");

			for(var i=0;i<tmp.length-1;i++){
				var data = tmp[i].split("++");
				$("#meet-the-team").append("<div class='col-md-3 col-xs-6'><div class='center'><p><img class='img-responsive img-thumbnail img-circle' src='../images/mencion/libro.jpg' alt='' ></p><h5>"+data[2]+"<small class='designation muted'>"+data[0]+"</small></h5><p>"+data[1]+"</p><button id='"+data[3]+"' class='btn btn-primary btn-default asignatura'>Ver Asignatura</button></div></div>");
			}
			$( ".asignatura" ).click(function() {
				$.ajax({
				url: '../logica/getAsignaturaMencion.php',
				type: 'POST',
				async: true,
				data: 'mencion=informacion&codigo='+$(this).attr("id")+'&linea=SOF',
				success: function(datos_recibidos) {
						var dato = datos_recibidos.split("++");
						$(".modal-title").html(dato[0]+": "+dato[1]);
						$(".modal-body").html("<div class='row'><div class='col-sm-6'><h2></h2><p>"+dato[2]+"</p></div><div class='col-sm-6'><h2></h2><img src='"+dato[4]+"'></div></div><p><strong>Profesor: </strong>"+dato[3]+"<p><br><br><fieldset><div class='form-group'><label class='col-md-4 control-label' for='button1id'></label><div class='col-md-8'><a id='button1id' name='button1id' class='btn btn-success' style='margin-right:10%;' href='descargas.php'>Ir a Descargas</a><a id='button2id' name='button2id' class='btn btn-danger' href='mallaici.php'>Ver en Malla</a></div></div></fieldset>");
						$('#myModal_mencion').modal({show:true});
					}
				});
			});

		}
	});

	

});	