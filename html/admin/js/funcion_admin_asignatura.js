$( document ).ready(function() {
	var profesor =  "";
    var ayudante1 = "";
    var ayudante2 = "";
    var comentario = "";
    var numero_asignatura = "";
    $("#boton_modifica_profesor").attr("disabled","disabled");
    $("#boton_modifica_ayudante1").attr("disabled","disabled");
    $("#boton_modifica_ayudante2").attr("disabled","disabled");
    $("#boton_modifica_comentario").attr("disabled","disabled");
    $("#boton_modifica_foto").attr("disabled","disabled");

    $("#validar_descarga").hide();

    $.ajax({
        url: '../../logica/getAsignaturaInfo.php',
        type: 'POST',
        async: true,
        data: 'asignatura='+$("#datos_ocultos").val(),
        success: function(datos_recibidos) {
                var data = datos_recibidos.split("||");
                $("#profesor_asignatura").val(data[1]);
                profesor = data[1];
                $("#ayudante1_asignatura").val(data[2]);
                ayudante1 =data[2]
                $("#ayudante2_asignatura").val(data[3]);
                ayudante2 = data[3]
                numero_asignatura = data[4];
                $("#foto_ramo").attr("src",data[5]);
                $("#comentario_asignatura").val(data[6]);
                comentario = data[6];
            }
    });

    $("#profesor_asignatura").keyup(function(){
        if($(this).val() != profesor){
            $("#boton_modifica_profesor").removeAttr("disabled");
        }else{
            $("#boton_modifica_profesor").attr("disabled","disabled");
        }
    });

    $("#ayudante1_asignatura").keyup(function(){
        if($(this).val() != ayudante1){
            $("#boton_modifica_ayudante1").removeAttr("disabled");
        }else{
            $("#boton_modifica_ayudante1").attr("disabled","disabled");
        }
    });

    $("#ayudante2_asignatura").keyup(function(){
        if($(this).val() != ayudante2){
            $("#boton_modifica_ayudante2").removeAttr("disabled");
        }else{
            $("#boton_modifica_ayudante2").attr("disabled","disabled");
        }
    });

    $("#comentario_asignatura").keyup(function(){
        if($(this).val() != comentario){
            $("#boton_modifica_comentario").removeAttr("disabled");
        }else{
            $("#boton_modifica_comentario").attr("disabled","disabled");
        }
    });

    $("#foto_asignatura").change(function(){
        if($(this).val() != ''){
            $("#boton_modifica_foto").removeAttr("disabled");
        }else{
            $("#boton_modifica_foto").attr("disabled","disabled");
        }
    });

   //BOTON MODIFICA NOMBRE PROFESOR

    $("#boton_modifica_profesor").click(function(){
        $.ajax({
        url: '../../logica/setDatosAsignatura.php',
        type: 'POST',
        async: true,
        data: 'data='+$("#profesor_asignatura").val()+'&ramo='+numero_asignatura+'&tipo=profesor',
        success: function(datos_recibidos) {
                if(datos_recibidos == 1){
                    profesor = $("#profesor_asignatura").val();
                    $("#boton_modifica_profesor").attr("disabled","disabled");
                    $("#contenido_alert").html("<strong>EXITO! - </strong>El nombre del profesor ha sido modificado con exito");
                    $("#validar_descarga").removeClass("alert-danger");
                    $("#validar_descarga").addClass("alert-success");
                    $("#validar_descarga").show("slow");
                    setTimeout(function() {
                        $('#validar_descarga').hide('slow');
                    }, 5000);
                }else{
                    $("#profesor_asignatura").val(profesor);
                    $("#boton_modifica_profesor").attr("disabled","disabled");
                    $("#contenido_alert").html("<strong>ERROR! - </strong>El nombre del profesor no se pudo cambiar. Intente nuevamente");
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

    //BOTON MODIFICA NOMBRE AYUDANTE 1

   $("#boton_modifica_ayudante1").click(function(){
        $.ajax({
        url: '../../logica/setDatosAsignatura.php',
        type: 'POST',
        async: true,
        data: 'data='+$("#ayudante1_asignatura").val()+'&ramo='+numero_asignatura+'&tipo=ayudante1',
        success: function(datos_recibidos) {
                if(datos_recibidos == 1){
                    ayudante1 = $("#ayudante1_asignatura").val();
                    $("#boton_modifica_ayudante1").attr("disabled","disabled");
                    $("#contenido_alert").html("<strong>EXITO! - </strong>El nombre del ayudante nº1 ha sido cambiado con exito");
                    $("#validar_descarga").removeClass("alert-danger");
                    $("#validar_descarga").addClass("alert-success");
                    $("#validar_descarga").show("slow");
                    setTimeout(function() {
                        $('#validar_descarga').hide('slow');
                    }, 5000);
                }else{
                    $("#ayudante1_asignatura").val(ayudante1);
                    $("#boton_modifica_ayudante1").attr("disabled","disabled");
                    $("#contenido_alert").html("<strong>ERROR! - </strong>El nombre del ayudante nº1 no se pudo cambiar. Intente nuevamente");
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

   //BOTON MODIFICA NOMBRE AYUDANTE 2

   $("#boton_modifica_ayudante2").click(function(){
        $.ajax({
        url: '../../logica/setDatosAsignatura.php',
        type: 'POST',
        async: true,
        data: 'data='+$("#ayudante2_asignatura").val()+'&ramo='+numero_asignatura+'&tipo=ayudante2',
        success: function(datos_recibidos) {
                if(datos_recibidos == 1){
                    ayudante2 = $("#ayudante2_asignatura").val();
                    $("#boton_modifica_ayudante2").attr("disabled","disabled");
                    $("#contenido_alert").html("<strong>EXITO! - </strong>El nombre del ayudante nº2 ha sido modificado con exito");
                    $("#validar_descarga").removeClass("alert-danger");
                    $("#validar_descarga").addClass("alert-success");
                    $("#validar_descarga").show("slow");
                    setTimeout(function() {
                        $('#validar_descarga').hide('slow');
                    }, 5000);
                }else{
                    $("#ayudante2_asignatura").val(ayudante2);
                    $("#boton_modifica_ayudante2").attr("disabled","disabled");
                    $("#contenido_alert").html("<strong>ERROR! - </strong>El nombre del ayudante nº2 no se pudo cambiar. Intente nuevamente");
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

    //BOTON MODIFICA COMENTARIOS ASIGNATURA

   $("#boton_modifica_comentario").click(function(){
        $.ajax({
        url: '../../logica/setDatosAsignatura.php',
        type: 'POST',
        async: true,
        data: 'data='+$("#comentario_asignatura").val()+'&ramo='+numero_asignatura+'&tipo=comentario',
        success: function(datos_recibidos) {
                if(datos_recibidos == 1){
                    comentario = $("#comentario_asignatura").val();
                    $("#boton_modifica_comentario").attr("disabled","disabled");
                    $("#contenido_alert").html("<strong>EXITO! - </strong>El comentario de la asignatura ha sido modificado con exito");
                    $("#validar_descarga").removeClass("alert-danger");
                    $("#validar_descarga").addClass("alert-success");
                    $("#validar_descarga").show("slow");
                    setTimeout(function() {
                        $('#validar_descarga').hide('slow');
                    }, 5000);
                }else{
                    $("#comentario_asignatura").val(comentario);
                    $("#boton_modifica_comentario").attr("disabled","disabled");
                    $("#contenido_alert").html("<strong>ERROR! - </strong>El comentario de la asignatura no se pudo cambiar. Intente nuevamente");
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