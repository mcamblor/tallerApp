$( document ).ready(function() {

	$.ajax({
		url: '../logica/getPersonal.php',
		type: 'POST',
		async: false,
		data: 'tipo=academico',
		success: function(datos_recibidos) {
			
			var tmp = datos_recibidos.split("||");

			for (var i = 0; i<tmp.length-1;i++) {
				var datos = tmp[i].split("++");
				$(".portfolio-items").append("<li class='portfolio-item academico'><div class='item-inner'><img src='"+datos[5]+"' ><h5 align='center'>"+datos[0]+"</h5><div class='overlay'><a class='preview btn btn-danger' href='"+datos[5]+"' rel='prettyPhoto'><i class='icon-eye-open'></i></a></div></div></li>");		
			}	
		}
	});

	$.ajax({
		url: '../logica/getPersonal.php',
		type: 'POST',
		async: false,
		data: 'tipo=ayudante',
		success: function(datos_recibidos) {
			
			var tmp = datos_recibidos.split("||");

			for (var i = 0; i<tmp.length-1;i++) {
				var datos = tmp[i].split("++");
				$(".portfolio-items").append("<li class='portfolio-item ayudante'><div class='item-inner'><img src='"+datos[2]+"' ><h5 align='center'>"+datos[0]+"</h5><div class='overlay'><a class='preview btn btn-danger' href='"+datos[2]+"' rel='prettyPhoto' title='"+datos[0]+"<br>"+datos[1]+"'><i class='icon-eye-open'></i></a></div></div></li>");		
			}	
		}
	});

	$.ajax({
		url: '../logica/getPersonal.php',
		type: 'POST',
		async: false,
		data: 'tipo=administrativo',
		success: function(datos_recibidos) {
			
			var tmp = datos_recibidos.split("||");

			for (var i = 0; i<tmp.length-1;i++) {
				var datos = tmp[i].split("++");
				$(".portfolio-items").append("<li class='portfolio-item adm'><div class='item-inner'><img src='"+datos[3]+"' ><h5 align='center'>"+datos[0]+"</h5><div class='overlay'><a class='preview btn btn-danger' href='"+datos[3]+"' rel='prettyPhoto' title='"+datos[0]+"<br>"+datos[1]+"<br>"+datos[2]+"'><i class='icon-eye-open'></i></a></div></div></li>");		
			}	
		}
	});

	$("#botonACA").click(function(){
		$("#cont1").html("Equipo Académico");
	});

	$("#botonAYU").click(function(){
		$("#cont1").html("Ayudantes de Laboratorio");
	});

	$("#botonADM").click(function(){
		$("#cont1").html("Equipo Administrativo");
	});

	$("#botonTODOS").click(function(){
		$("#cont1").html("Personal Escuela Ingeniería Civil en Informática");
	});

});	

