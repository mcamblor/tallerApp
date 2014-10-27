$( document ).ready(function() {
	$.ajax({
	    url: '../logica/getMalla.php',
	    type: 'POST',
	    async: true,
	    data: 'malla=IIN',
	    success: function(datos_recibidos) {
				$("#mallaIIN").html(datos_recibidos);

								
	        }
	});
});