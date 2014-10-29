$( document ).ready(function() {
	$.ajax({
	    url: '../logica/getMalla.php',
	    type: 'POST',
	    async: true,
	    data: 'malla=ICI',
	    success: function(datos_recibidos) {
	    		//RECIBIR MALLA CURRICULAR
				$("#mallaICI").html(datos_recibidos);

				$("#boton_descargar_simulacion").click(function(){

				});

				$(".boton_ver_info_asignatura").click(function(){
					var datos = $(this).attr("id").split("_");
					$.ajax({
					    url: '../logica/getAsignaturaInfo.php',
					    type: 'POST',
					    async: true,
					    data: 'malla='+datos[0]+'&asignatura='+datos[1],
					    success: function(datos_recibidos) {
					    		var from = datos_recibidos.split("||");
					    		$(".modal-title").html(from[0]);
					    		$('#myModal_malla').modal({show:true});
					    	}
					});
				});

				//PINTAR RAMO EN ESPECIFICO
				$(".caja_celda").click(function() {
					var tmp = $(this).hasClass("caja_no_pintada");
					var idCaja = $(this).attr("id");
					if(tmp == true){
						$(".caja_celda").each(function(){
							var tmp2 = $(this).hasClass("caja_pintada");
							var tmp3 = $(this).hasClass("caja_click");
							if(tmp2 == true){
								$(this).removeClass("caja_pintada");
								$(this).addClass("caja_no_pintada");
							}
							if(tmp3 == true){
								$(this).removeClass("caja_click");
								$(this).addClass("caja_no_pintada");
							}
						});
							pintarRamo(idCaja);
							$(this).removeClass("caja_no_pintada");
							$(this).addClass("caja_click");
					}else{
						var isClick = $(this).hasClass("caja_click");
						if(isClick == true){
							$(".caja_celda").each(function(){
								var tmp2 = $(this).hasClass("caja_pintada");
								var tmp3 = $(this).hasClass("caja_click");
								if(tmp2 == true){
									$(this).removeClass("caja_pintada");
									$(this).addClass("caja_no_pintada");
								}
								if(tmp3 == true){
									$(this).removeClass("caja_click");
									$(this).addClass("caja_no_pintada");
								}
							});
						}else{
							$(".caja_celda").each(function(){
							var tmp2 = $(this).hasClass("caja_pintada");
							var tmp3 = $(this).hasClass("caja_click");
							if(tmp2 == true){
								$(this).removeClass("caja_pintada");
								$(this).addClass("caja_no_pintada");
							}
							if(tmp3 == true){
								$(this).removeClass("caja_click");
								$(this).addClass("caja_no_pintada");
							}
							});
							pintarRamo(idCaja);
							$(this).removeClass("caja_no_pintada");
							$(this).addClass("caja_click");
						}
					}
				});

				function pintarRamo(idCaja){
					var tmp = $(this).hasClass("caja_no_pintada");
					var id = idCaja.split("||");
					var idReq = id[1].split("++");
					var idRamo = id[0].split("celda_INC"); 
					var requisitos = new Array();
					for (var i = 0; i < idReq.length-1; i++) {
					 	requisitos.push(idReq[i]);					 		
					};
					
					if (requisitos.indexOf(idRamo[1]) != -1) {	
						return 0;
					}else{
						$(this).removeClass("caja_no_pintada");
						$(this).addClass("caja_pintada");
						$(".caja_celda").each(function(){
					 		var tmpIdCaja = $(this).attr("id");
					 		var tmpId = tmpIdCaja.split("||");
					 		var tmpIdRamo = tmpId[0].split("celda_INC"); 
						 	if(requisitos.indexOf(tmpIdRamo[1]) != -1){
						 		$(this).removeClass("caja_no_pintada");
								$(this).addClass("caja_pintada");
						 		return pintarRamo(tmpIdCaja);
						 	}					 	
						});
					}

				}

				//PINTAR SEMESTRE EN ESPECIFICO
				$(".boton_semestre").click(function(){
					var aidi = $(this).attr("id");
					$(".caja_celda").each(function(){
						var tmp = $(this).hasClass("caja_no_pintada");
						var tiene_id = $(this).hasClass(aidi);
						if(tiene_id == true && tmp == true){
							$(this).removeClass("caja_no_pintada");
							$(this).addClass("caja_pintada");
						}
						if(tiene_id == true && tmp == false){
							$(this).removeClass("caja_pintada");
							$(this).addClass("caja_no_pintada");
						}
					});
				});

				//PINTAR AÑO EN ESPECIFICO
				$(".boton_year").click(function(){
					var aidi = $(this).attr("id");
					$(".caja_celda").each(function(){
						var tmp = $(this).hasClass("caja_no_pintada");
						var tiene_id = $(this).hasClass(aidi);
						if(tiene_id == true && tmp == true){
							$(this).removeClass("caja_no_pintada");
							$(this).addClass("caja_pintada");
						}
						if(tiene_id == true && tmp == false){
							$(this).removeClass("caja_pintada");
							$(this).addClass("caja_no_pintada");
						}
					});
				});

	        }
	});

	

});