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

				//PINTAR RAMO EN ESPECIFICO
				$(".caja_celda").click(function() {
					var tmp = $(this).hasClass("caja_no_pintada");
					var aidi = $(this).attr("id");
					if(tmp == true){
						$("#"+aidi).removeClass("caja_no_pintada");
						$("#"+aidi).addClass("caja_pintada");
					}else{
						$("#"+aidi).removeClass("caja_pintada");
						$("#"+aidi).addClass("caja_no_pintada");
					}
				});

				//PINTAR SEMESTRE EN ESPECIFICO
				$(".boton_semestre").click(function(){
					var aidi = $(this).attr("id");
					$(".caja_celda").each(function(){
						var tmp = $(this).hasClass("caja_no_pintada");
						var tiene_id = $(this).hasClass(aidi);
						var idInterno = $(this).attr("id");
						if(tiene_id == true && tmp == true){
							$("#"+idInterno).removeClass("caja_no_pintada");
							$("#"+idInterno).addClass("caja_pintada");
						}
						if(tiene_id == true && tmp == false){
							$("#"+idInterno).removeClass("caja_pintada");
							$("#"+idInterno).addClass("caja_no_pintada");
						}
					});
				});

				//PINTAR AÑO EN ESPECIFICO
				$(".boton_year").click(function(){
					var aidi = $(this).attr("id");
					$(".caja_celda").each(function(){
						var tmp = $(this).hasClass("caja_no_pintada");
						var tiene_id = $(this).hasClass(aidi);
						var idInterno = $(this).attr("id");
						if(tiene_id == true && tmp == true){
							$("#"+idInterno).removeClass("caja_no_pintada");
							$("#"+idInterno).addClass("caja_pintada");
						}
						if(tiene_id == true && tmp == false){
							$("#"+idInterno).removeClass("caja_pintada");
							$("#"+idInterno).addClass("caja_no_pintada");
						}
					});
				});

	        }
	});

	

});