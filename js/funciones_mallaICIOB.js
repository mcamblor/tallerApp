$( document ).ready(function() {
	$.ajax({
	    url: '../logica/getMalla.php',
	    type: 'POST',
	    async: true,
	    data: 'malla=ICI',
	    success: function(datos_recibidos) {
	    		//RECIBIR MALLA CURRICULAR
				$("#mallaICI").html(datos_recibidos);

	        }
	});

	

});