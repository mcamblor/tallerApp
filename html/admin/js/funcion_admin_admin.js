$( document ).ready(function() {
	
    $("#validar_descarga").hide();

       $("#boton_salir_admin").click(function(){
        $(".modal-title").html("Cierre de Sesion");
        $(".modal-body").html("Esta seguro de que desea cerrar la sesion");
        $('#myModal').modal({show:true});
        $("#boton_aprobar_cierre").click(function(){
            $(location).attr('href','../../logica/cierra_sesion.php');
        });
    });

    
    $("#nombre_usuario").keyup(function(){
        if($(this).val() != nombre){
            $("#link_modifica_nombre_usuario").removeAttr("disabled");
        }else{
            $("#link_modifica_nombre_usuario").attr("disabled","disabled");
        }
    });

    
   $("#boton_agregar_usuario_reset").click(function(){
        document.getElementById('formulario_add_user').reset();
   });

   $("#boton_agregar_usuario").click(function(){
        if($("#nombre_usuario").val() == ""){
            $("#validar_descarga").html("<strong>ERROR!</strong> - El nombre del nuevo usuario esta vacio.");
            $("#validar_descarga").removeClass("alert-success");
            $("#validar_descarga").addClass("alert-danger");
            $("#validar_descarga").show("slow");
            setTimeout(function() {
                $('#validar_descarga').hide('slow');
            }, 5000);
            return false;
        }
        if($("#apellido_usuario").val() == ""){
            $("#validar_descarga").html("<strong>ERROR!</strong> - El apellido del nuevo usuario esta vacio.");
            $("#validar_descarga").removeClass("alert-success");
            $("#validar_descarga").addClass("alert-danger");
            $("#validar_descarga").show("slow");
            setTimeout(function() {
                $('#validar_descarga').hide('slow');
            }, 5000);
            return false;
        }
        if($("#rut_usuario").val() == ""){
            $("#validar_descarga").html("<strong>ERROR!</strong> - El RUT del nuevo usuario esta vacio.");
            $("#validar_descarga").removeClass("alert-success");
            $("#validar_descarga").addClass("alert-danger");
            $("#validar_descarga").show("slow");
            setTimeout(function() {
                $('#validar_descarga').hide('slow');
            }, 5000);
            return false;
        }else{
            if ($.Rut.validar($("#rut_usuario").val()) == false ){
                $("#validar_descarga").html("<strong>ERROR!</strong> - El RUT del nuevo es incorrecto. El formato debe ser: 12345678-9.");
                $("#validar_descarga").removeClass("alert-success");
                $("#validar_descarga").addClass("alert-danger");
                $("#validar_descarga").show("slow");
                setTimeout(function() {
                    $('#validar_descarga').hide('slow');
                }, 5000);
                return false;
            }
        }
        if($("#email_usuario").val() == ""){
            $("#validar_descarga").html("<strong>ERROR!</strong> - El correo del nuevo usuario esta vacio.");
            $("#validar_descarga").removeClass("alert-success");
            $("#validar_descarga").addClass("alert-danger");
            $("#validar_descarga").show("slow");
            setTimeout(function() {
                $('#validar_descarga').hide('slow');
            }, 5000);
            return false;
        }else{
            var datos_correo = $("#email_usuario").val().split("@");
            if(datos_correo.length == 1){
                $("#validar_descarga").html("<strong>ERROR!</strong> - El correo del nuevo usuario no tiene el formato correcto. Este debe ser name@domain.cl");
                $("#validar_descarga").removeClass("alert-success");
                $("#validar_descarga").addClass("alert-danger");
                $("#validar_descarga").show("slow");
                setTimeout(function() {
                    $('#validar_descarga').hide('slow');
                }, 5000);
                return false;  
            }else{
                if(datos_correo[1]!="uv.cl" && datos_correo[1]!="alumnos.uv.cl"){
                    $("#validar_descarga").html("<strong>ERROR!</strong> - El correo tiene que ser @uv.cl o @alumnos.uv.cl");
                    $("#validar_descarga").removeClass("alert-success");
                    $("#validar_descarga").addClass("alert-danger");
                    $("#validar_descarga").show("slow");
                    setTimeout(function() {
                        $('#validar_descarga').hide('slow');
                    }, 5000);
                    return false;
                }
            }
        }
        if($("#nickname_usuario").val() == ""){
            $("#validar_descarga").html("<strong>ERROR!</strong> - El apodo del nuevo usuario esta vacio.");
            $("#validar_descarga").removeClass("alert-success");
            $("#validar_descarga").addClass("alert-danger");
            $("#validar_descarga").show("slow");
            setTimeout(function() {
                $('#validar_descarga').hide('slow');
            }, 5000);
            return false;
        }

        $.ajax({
        url: '../../logica/setNewUsuario.php',
        type: 'POST',
        async: true,
        data: 'first='+$("#nombre_usuario").val()+'&last='+$("#apellido_usuario").val()+'&rut='+$("#rut_usuario").val()+'&correo='+$("#email_usuario").val()+'&apodo='+$("#nickname_usuario").val(),
        success: function(datos_recibidos) {
                if(datos_recibidos == "existe"){
                    $("#validar_descarga").html("<strong>ERROR!</strong> - El usuario de rut <strong>"+$("#rut_usuario").val()+"</strong> ya esta registrado en el sistema. Ingrese un usuario distinto.");
                    $("#validar_descarga").removeClass("alert-success");
                    $("#validar_descarga").addClass("alert-danger");
                    document.getElementById('formulario_add_user').reset();
                    $("#validar_descarga").show("slow");
                    setTimeout(function() {
                        $('#validar_descarga').hide('slow');
                    }, 5000);
                }
                if(datos_recibidos == "ok"){
                    $("#validar_descarga").html("<strong>EXITO</strong> - El usuario <strong>"+$("#nombre_usuario").val()+" "+$("#apellido_usuario").val()+"</strong> ha sido registrado con exito");
                    $("#validar_descarga").removeClass("alert-danger");
                    $("#validar_descarga").addClass("alert-success");
                    document.getElementById('formulario_add_user').reset();
                    $("#validar_descarga").show("slow");
                    setTimeout(function() {
                        $('#validar_descarga').hide('slow');
                    }, 5000);
                }
                if(datos_recibidos == "error"){
                    $("#validar_descarga").html("<strong>ERROR!</strong> - El nuevo usuario no se pudo registrar. Intente nuevamente.");
                    $("#validar_descarga").removeClass("alert-success");
                    $("#validar_descarga").addClass("alert-danger");
                    $("#validar_descarga").show("slow");
                    setTimeout(function() {
                        $('#validar_descarga').hide('slow');
                    }, 5000);
                }
            }
        });
   });

});