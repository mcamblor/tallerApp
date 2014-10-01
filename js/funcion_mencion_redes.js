$( document ).ready(function() {

	$.ajax({
		url: '../logica/getAsignaturaMencion.php',
		type: 'POST',
		async: true,
		data: 'mencion=redes',
		success: function(datos_recibidos) {
			alert(datos_recibidos);
		}
	});

});	