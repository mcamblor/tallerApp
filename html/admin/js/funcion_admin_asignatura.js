$( document ).ready(function() {
	var profesor =  "";
    var ayudante1 = "";
    var ayudante2 = "";
    var comentario = "";
    var numero_asignatura = "";


    $.ajax({
        url: '../../logica/getAsignaturaDescargas.php',
        type: 'POST',
        async: true,
        data: 'malla=comun',
        success: function(datos_recibidos) {
            $("#planComun_select").html(datos_recibidos);
            }
    });
    $.ajax({
        url: '../../logica/getAsignaturaDescargas.php',
        type: 'POST',
        async: true,
        data: 'malla=ICI',
        success: function(datos_recibidos) {
            $("#planICI_select").html(datos_recibidos);
            }
    });
    $.ajax({
        url: '../../logica/getAsignaturaDescargas.php',
        type: 'POST',
        async: true,
        data: 'malla=IIN',
        success: function(datos_recibidos) {
            $("#planIIN_select").html(datos_recibidos);
            }
    });
    $.ajax({
        url: '../../logica/getAsignaturaDescargas.php',
        type: 'POST',
        async: true,
        data: 'malla=IEJ',
        success: function(datos_recibidos) {
            $("#planIEJ_select").html(datos_recibidos);
            }
    });


    $("#boton_modifica_profesor").attr("disabled","disabled");
    $("#boton_modifica_comentario").attr("disabled","disabled");
    $("#boton_modifica_foto").attr("disabled","disabled");

    $("#validar_descarga").hide();

    $("#boton_salir_admin").click(function(){
        $(".modal-title").html("Cierre de Sesion");
        $(".modal-body").html("Esta seguro de que desea cerrar la sesion");
        $('#myModal').modal({show:true});
        $("#boton_aprobar_cierre").click(function(){
            $(location).attr('href','../../logica/cierra_sesion.php');
        });
    });

    $(".enlace_asig_modificar").change(function(){
        var datos_envio = $(this).val().split("_");
        var valor = $(this).val();
        var select_id = $(this).attr("id");
        $.ajax({
        url: '../../logica/getAsignaturaInfo.php',
        type: 'POST',
        async: true,
        data: 'asignatura='+datos_envio[1]+'&malla='+datos_envio[0],
        success: function(datos_recibidos) {
                $("#profesor_asignatura").prop("disabled",false);
                $("#foto_asignatura").prop("disabled",false);
                $("#comentario_asignatura").prop("disabled",false);

                switch(select_id) {
                    case "planComun_select":
                        $("#planICI_select option[value='0']").attr("selected",true);
                        $("#planIIN_select option[value='0']").attr("selected",true);
                        $("#planIEJ_select option[value='0']").attr("selected",true);
                        break;
                    case "planICI_select":
                        $("#planComun_select option[value='0']").attr("selected",true);
                        $("#planIIN_select option[value='0']").attr("selected",true);
                        $("#planIEJ_select option[value='0']").attr("selected",true);
                        break;
                    case "planIIN_select":
                        $("#planComun_select option[value='0']").attr("selected",true);
                        $("#planICI_select option[value='0']").attr("selected",true);
                        $("#planIEJ_select option[value='0']").attr("selected",true);
                        break;
                    case "planIEJ_select":
                        $("#planComun_select option[value='0']").attr("selected",true);
                        $("#planIIN_select option[value='0']").attr("selected",true);
                        $("#planICI_select option[value='0']").attr("selected",true);
                        break;
                }

                var data = datos_recibidos.split("||");
                $("#profesor_asignatura").val(data[1]);
                profesor = data[1];
                numero_asignatura = valor;
                $("#foto_ramo").attr("src",data[2]);
                $("#comentario_asignatura").val(data[3]);
                comentario = data[3];
            }
        });
    });

    $("#profesor_asignatura").keyup(function(){
        if($(this).val() != profesor){
            $("#boton_modifica_profesor").removeAttr("disabled");
        }else{
            $("#boton_modifica_profesor").attr("disabled","disabled");
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

    //BOTON MODIFICA FOTO ASIGNATURA

    $("#boton_modifica_foto").click(function(){

        var archivos = document.getElementById('foto_asignatura');
        var documento = archivos.files;
        var datta = new FormData();

        for(var i=0;i<documento.length;i++){
            datta.append('archivo'+i,documento[i]);
        }

        $.ajax({
            url: '../../logica/uploadFotosRamos.php',
            type: 'POST',
            async: true,
            contentType: false,
            processData: false,
            cache: false,
            data: datta,
            success: function(datos_recibidos) {
                }
        });

        var urlSend = $("#foto_asignatura").val().split("\\");

        $.ajax({
        url: '../../logica/setDatosAsignatura.php',
        type: 'POST',
        async: true,
        data: 'data='+urlSend[urlSend.length-1]+'&ramo='+numero_asignatura+'&tipo=foto',
        success: function(datos_recibidos) {
                var recibido = datos_recibidos.split("||");
                if(recibido[0] == "ok"){
                    profesor = $("#profesor_asignatura").val();
                    $("#boton_modifica_foto").attr("disabled","disabled");
                    $("#contenido_alert").html("<strong>EXITO! - </strong>La foto de la asignatura ha sido cambiada con exito");
                    $("#validar_descarga").removeClass("alert-danger");
                    $("#validar_descarga").addClass("alert-success");
                    $("#foto_ramo").attr("src",recibido[1]);
                    $("#validar_descarga").show("slow");
                    setTimeout(function() {
                        $('#validar_descarga').hide('slow');
                    }, 5000);
                }else{
                    $("#profesor_asignatura").val(profesor);
                    $("#boton_modifica_foto").attr("disabled","disabled");
                    $("#contenido_alert").html("<strong>ERROR! - </strong>La foto de la asignatura no se pudo cambiar. Intente nuevamente");
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