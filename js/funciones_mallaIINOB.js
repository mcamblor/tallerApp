$( document ).ready(function() {
	$.ajax({
	    url: '../logica/getMalla.php',
	    type: 'POST',
	    async: true,
	    data: 'malla=IIN',
	    success: function(datos_recibidos) {
				$("#mallaIIN").html(datos_recibidos);

				$("#boton_reiniciar_simulacion").click(function(){
					$(".caja_celda").each(function(){
						$(this).removeClass("caja_pintada");
						$(this).removeClass("caja_avance");
						$(this).removeClass("caja_click");
						$(this).addClass("caja_no_pintada");
					});
				});

				$(".boton_ver_info_asignatura").click(function(){
					var datos = $(this).attr("id").split("_");
					$.ajax({
					    url: '../logica/getAsignaturaInfoMalla.php',
					    type: 'POST',
					    async: true,
					    data: 'malla='+datos[0]+'&asignatura='+datos[1],
					    success: function(datos_recibidos) {
					    		var from = datos_recibidos.split("||");
					    		var ano = (new Date).getFullYear();
					    		$(".modal-title").html("Semestre "+from[3]+"º - "+from[0]);
					    		$(".modal-body").html("<div class='row'><div class='col-sm-6'><h2></h2><p><strong>Descripcion: </strong>"+from[4]+"</p><p><strong>Profesor (Periodo: "+ano+"): </strong>"+from[1]+"</p><p><strong>Codigo: </strong>"+datos[0]+datos[1]+"</p><p><strong>Objetivos:</strong></p><ul class='lista_objetivos'></ul></div><div class='col-sm-6'><h2></h2><img src='"+from[2]+"' style='width:423px; height:310px;'></div></div>");
					    		var objet_receb = from[5].split("++");
					    		for (var i = 0; i<objet_receb.length - 1;i++) {
					    			$(".lista_objetivos").append("<li>"+objet_receb[i]+"</li>");
					    		};
					    		$('#myModal_mencion').modal({show:true});
					    	}
					});
				});

								
	        }
	});
});