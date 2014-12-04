$( document ).ready(function() {
	$.ajax({
	    url: '../logica/getMalla.php',
	    type: 'POST',
	    async: true,
	    data: 'malla=IEJOB',
	    success: function(datos_recibidos) {
				$("#mallaIEJ").html(datos_recibidos);
				$("#llevar_malla").val(datos_recibidos);

				$("#boton_ayuda_malla_ob").click(function(){
					$(".modal-title").html("");
					$(".modal-body").html("<iframe width='890' height='452' class='js-player' src='http://www.powtoon.com/embed/dy5ORVEtu5G/?player=powtoon' frameborder='0'></iframe>");
					$(".modal-footer").html("<button type='button' class='btn btn-primary' id='closeTuto' data-dismiss='modal'>Cerrar</button>");
					$('#myModal_mencion').modal({show:true,backdrop: 'static'});
					
					$("#closeTuto").click(function(){
						$(".modal-body").html("");
					});
				});

				$("#boton_reiniciar_simulacion").click(function(){
					$(".caja_celda").each(function(){
						$(this).removeClass("caja_pintada");
						$(this).removeClass("caja_avance");
						$(this).removeClass("caja_click");
						$(this).addClass("caja_no_pintada");
					});
					$("#llevar_malla").val($("#mallaIEJ").html());
				});

				$(".caja_celda").click(function() {
					$(".caja_celda").each(function(){
						$(this).removeClass("caja_pintada");
						$(this).removeClass("caja_avance");
						$(this).removeClass("caja_click");
						$(this).addClass("caja_no_pintada");
					});
					var contenido = $(this).attr("id").split("||");
					var tmp2 = contenido[0].split("_");
					var number = tmp2[1].substring(3);
					$(this).removeClass("caja_no_pintada");
					$(this).addClass("caja_click");
					$(".caja_celda").each(function(){
						
						var tmp1 = $(this).attr("id").split("||");
						var tmp2 = tmp1[0].split("_");
						var tmp3 = tmp2[1].substring(3);

						if(tmp3 != number){
							if(contenido[1].indexOf(tmp3) != -1){
								if(tmp3 < number){
									$(this).removeClass("caja_no_pintada");
									$(this).addClass("caja_pintada");
								}
								if(tmp3 > number){
									$(this).removeClass("caja_no_pintada");
									$(this).addClass("caja_avance");
								}
							}
						}
					});
					$("#llevar_malla").val($("#mallaIEJ").html());		
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
					    		}
					    		$(".modal-footer").html("<a id='button1id' name='button1id' class='btn btn-success' href='descargas.php'>Ir a Descargas</a><button type='button' class='btn btn-primary' data-dismiss='modal'>Cerrar</button>");
					    		$('#myModal_mencion').modal({show:true});
					    	}
					});
			});	
		}
	});
});