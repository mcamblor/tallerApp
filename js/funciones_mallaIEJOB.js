$( document ).ready(function() {
	$.ajax({
	    url: '../logica/getMalla.php',
	    type: 'POST',
	    async: true,
	    data: 'malla=IEJ',
	    success: function(datos_recibidos) {
				$("#mallaIEJ").html(datos_recibidos);
	        
			
			
			}
	});
});