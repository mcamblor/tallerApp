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
					var extract1 = idCaja.split("||");
					var extract2 = extract1[0].split("_");
					var extract3 = extract2[1].substring(3);
					if(extract3 == "502"){
						if($(this).hasClass("caja_no_pintada") == false){
							$(".caja_celda").each(function(){
								$(this).removeClass("caja_pintada");
								$(this).removeClass("caja_avance");
								$(this).removeClass("caja_click");
								$(this).addClass("caja_no_pintada");
							});
						}else{
							$(this).removeClass("caja_no_pintada");
							$(this).addClass("caja_click");
							$(".caja_celda").each(function(){
								var tmp = $(this).attr("id").split("||");
								var tmp4 = tmp[0].split("_");
								var tmp6 = tmp4[1].split("IIN");
								var tmp5 = tmp4[0].split("celdaSem");
								if(parseInt(tmp5[1])<9){
									$(this).removeClass("caja_no_pintada");
									$(this).addClass("caja_pintada");
								}
								if(parseInt(tmp5[1])>=9){
									if(parseInt(tmp6[1])!=502){
										$(this).removeClass("caja_no_pintada");
										$(this).addClass("caja_avance");
									}
								}
							});
						}
					}else if(extract3 == "511"){
						if($(this).hasClass("caja_no_pintada") == false){
							$(".caja_celda").each(function(){
								$(this).removeClass("caja_pintada");
								$(this).removeClass("caja_avance");
								$(this).removeClass("caja_click");
								$(this).addClass("caja_no_pintada");
							});
						}else{
							$(this).removeClass("caja_no_pintada");
							$(this).addClass("caja_click");
							$(".caja_celda").each(function(){
								var tmp = $(this).attr("id").split("||");
								var tmp4 = tmp[0].split("_");
								var tmp6 = tmp4[1].split("IIN");
								var tmp5 = tmp4[0].split("celdaSem");
								if(parseInt(tmp5[1])<10){
									$(this).removeClass("caja_no_pintada");
									$(this).addClass("caja_pintada");
								}
								if(parseInt(tmp5[1])==10){
									if(parseInt(tmp6[1])!=511){
										$(this).removeClass("caja_no_pintada");
										$(this).addClass("caja_avance");
									}
								}
							});
						}
					}else if(tmp == true){
							pintarAvance(extract3);
							pintarRamo(idCaja);
							$(this).removeClass("caja_no_pintada");
							$(this).addClass("caja_click");
						}else{
							var isClick = $(this).hasClass("caja_click");
							if(isClick == true){
								noPintarAvance(extract3);
								noPintarRamo(idCaja);
								$(this).removeClass("caja_click");
								$(this).addClass("caja_no_pintada");
							}else{
								$(".caja_celda").each(function(){
									var tmp2 = $(this).hasClass("caja_pintada");
									var tmp3 = $(this).hasClass("caja_click");
									var tmp4 = $(this).hasClass("caja_avance");
									if(tmp2 == true){
										$(this).removeClass("caja_pintada");
										$(this).addClass("caja_no_pintada");
									}
									if(tmp3 == true){
										$(this).removeClass("caja_click");
										$(this).addClass("caja_no_pintada");
									}
									if(tmp4 == true){
										$(this).removeClass("caja_avance");
										$(this).addClass("caja_no_pintada");
									}
								});
								pintarAvance(extract3);
								pintarRamo(idCaja);
								$(this).removeClass("caja_no_pintada");
								$(this).addClass("caja_click");
							}
						}
						
				});

				function pintarAvance(numRamo){
					$(".caja_celda").each(function(){
						var tmp = $(this).attr("id").split("||");
						var tmp2 = tmp[1].split("++");
						for (var i = 0; i < tmp2.length - 1; i++) {
							if(tmp2[i] == numRamo){
								if($(this).hasClass("caja_no_pintada") == true){
									$(this).removeClass("caja_no_pintada");
									$(this).addClass("caja_avance");
								}
							}
						}
					});
				}

				function noPintarAvance(numRamo){
					$(".caja_celda").each(function(){
						var tmp = $(this).attr("id").split("||");
						var tmp2 = tmp[1].split("++");
						for (var i = 0; i < tmp2.length - 1; i++) {
							if(tmp2[i] == numRamo){
								if($(this).hasClass("caja_avance") == true){
									$(this).removeClass("caja_avance");
									$(this).addClass("caja_no_pintada");
								}
							}
						}
					});
				}

				function pintarRamo(idCaja){
					var id = idCaja.split("||");
					var idtmp = id[0].split("_");
					var idReq = id[1].split("++");
					var tmpidRamo = id[0].split(idtmp[0]);
					var idRamo = tmpidRamo[1].substring(4);
					var requisitos = new Array();
					for (var i = 0; i < idReq.length-1; i++) {
					 	requisitos.push(idReq[i]);					 		
					}					
					if (requisitos.indexOf(idRamo) != -1) {	
						return 0;
					}else{
						$(".caja_celda").each(function(){
					 		var tmpIdCaja = $(this).attr("id");
					 		var tmpId = tmpIdCaja.split("||");
					 		var tmpIDtmp = tmpId[0].split("_");
					 		var tmpIdRamo = tmpId[0].split(tmpIDtmp[0]);
					 		var tmpEnviar = tmpIdRamo[1].substring(4); 
						 	if(requisitos.indexOf(tmpEnviar) != -1){
						 		if($(this).hasClass("caja_no_pintada")==true){
						 			$(this).removeClass("caja_no_pintada");
									$(this).addClass("caja_pintada");
						 		}else if($(this).hasClass("caja_avance")==true){
						 			$(this).removeClass("caja_avance");
									$(this).addClass("caja_pintada");
						 		}else if($(this).hasClass("caja_click")==true){
						 			$(this).removeClass("caja_click");
									$(this).addClass("caja_pintada");
						 		}
						 		return pintarRamo(tmpIdCaja);
						 	}					 	
						});
					}

				}

				function noPintarRamo(idCaja){
					var tmp = $(this).hasClass("caja_no_pintada");
					var id = idCaja.split("||");
					var idtmp = id[0].split("_");
					var idReq = id[1].split("++");
					var tmpidRamo = id[0].split(idtmp[0]);
					var idRamo = tmpidRamo[1].substring(4);
					var requisitos = new Array();
					for (var i = 0; i < idReq.length-1; i++) {
					 	requisitos.push(idReq[i]);					 		
					}					
					if (requisitos.indexOf(idRamo) != -1) {	
						return 0;
					}else{
						$(".caja_celda").each(function(){
					 		var tmpIdCaja = $(this).attr("id");
					 		var tmpId = tmpIdCaja.split("||");
					 		var tmpIDtmp = tmpId[0].split("_");
					 		var tmpIdRamo = tmpId[0].split(tmpIDtmp[0]);
					 		var tmpEnviar = tmpIdRamo[1].substring(4);
						 	if(requisitos.indexOf(tmpIdRamoEnviar) != -1){
						 		$(this).removeClass("caja_pintada");
								$(this).addClass("caja_no_pintada");
						 		return noPintarRamo(tmpIdCaja);
						 	}					 	
						});
					}

				}

				//PINTAR SEMESTRE EN ESPECIFICO
				$(".boton_semestre").click(function(){
					var aidi = $(this).attr("id");
					var tmp2 = aidi.split("sem_");
					var semestre_found = tmp2[1];
					$(".caja_celda").each(function(){
						$(this).removeClass("caja_pintada");
						$(this).removeClass("caja_click");
						$(this).removeClass("caja_avance");
						$(this).addClass("caja_no_pintada");
					});
					var requisitos = new Array();
					$(".caja_celda").each(function(){
						var tmp = $(this).hasClass("caja_no_pintada");
						var tiene_id = $(this).hasClass(aidi);
						var tmp3 = $(this).attr("id").split("||");
						var tmp4 = tmp3[0].split("_");
						var tmp5 = tmp4[0].split("celdaSem");
						if(tmp == true){
							if(parseInt(tmp5[1]) < parseInt(tmp2[1])){
								$(this).removeClass("caja_no_pintada");
								$(this).addClass("caja_pintada");
							}
							if(tiene_id == true){
								$(this).removeClass("caja_no_pintada");
								$(this).addClass("caja_click");
							}
						}
						if(tmp == false){
							if(parseInt(tmp5[1]) < parseInt(tmp2[1])){
								$(this).removeClass("caja_pintada");
								$(this).addClass("caja_no_pintada");
							}
							if(tiene_id == true){
								$(this).removeClass("caja_click");
								$(this).addClass("caja_no_pintada");
							}
						}
					});
					$(".caja_celda").each(function(){
						var tmp3 = $(this).attr("id").split("||");
						var tmp4 = tmp3[0].split("_");
						var tmp6 = tmp4[1].substring(3);
						var tmp5 = tmp4[0].split("celdaSem");
						if($(this).hasClass("caja_pintada") == true || $(this).hasClass("caja_click") == true){
							requisitos.push(tmp6);
						}
					});

					var excludido = ["503","502","511","510"];
					var excludido2 = ["511"];
					$(".caja_celda").each(function(){
						var tmp = $(this).attr("id").split("||");
						var tmp2 = tmp[1].split("++");
						var tmp4 = tmp[0].split("_");
						var tmp6 = tmp4[1].substring(3);
						var control = 0;
						for (var i = 0; i < requisitos.length; i++) {
							if(tmp2.indexOf(requisitos[i]) != -1){
								control = control + 1;
							}
						}
						if($(this).hasClass("caja_no_pintada") == true){
							if(control == tmp2.length-1){
								if(semestre_found < 6){
									if(excludido.indexOf(tmp6)==-1){
										$(this).removeClass("caja_no_pintada");
										$(this).addClass("caja_avance");
									}	
								}
								if(semestre_found >= 6){
									if(excludido2.indexOf(tmp6)==-1){
										$(this).removeClass("caja_no_pintada");
										$(this).addClass("caja_avance");
									}
								}
							}
						}
					});
				});

				//PINTAR AÑO EN ESPECIFICO
				/*$(".boton_year").click(function(){
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
				});*/

	        }
	        
	});

	

});