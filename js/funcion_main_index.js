$( document ).ready(function() {

	$("#myModal_index").hide();

	$("#boton_login").click(function(){
		if($("#user").val() == ''){
			alert("INICIO DE SESION\n\nDebe ingresar su usuario");
			return false;
		}
		if($("#clave").val() == ''){
			alert("INICIO DE SESION\n\nDebe ingresar su contraseña");
			return false;
		}

		$.ajax({
			url: 'logica/validarLogin.php',
			type: 'POST',
			async: true,
			data: 'usuario='+$("#user").val()+'&clave='+$("#clave").val(),
			success: function(datos_recibidos){
				$(".modal-title").html("Inicio de Sesión");
				if(datos_recibidos == 0){
					window.location.href="html/admin/index.php";
					//$(".modal-body").html("Usuario logueado");
				}
				if(datos_recibidos == 1){
					$(".modal-body").html("La contraseña ingresada no pertenece al usuario ingresado");
					$('#myModal_index').modal({show:true});
				}
				if(datos_recibidos == 2){
					$(".modal-body").html("El usuario ingresado no existe en el sistema");
					$('#myModal_index').modal({show:true});
				}
				
			}
		});
	});
});