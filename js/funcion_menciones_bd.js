$( document ).ready(function() {

	$.ajax({
		url: '../logica/getAsignaturaMencion.php',
		type: 'POST',
		async: true,
		data: 'mencion=database',
		success: function(datos_recibidos) {
		}
	});

});	