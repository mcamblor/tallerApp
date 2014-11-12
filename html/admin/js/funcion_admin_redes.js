$( document ).ready(function() {
	
    $.ajax({
        url: '../../logica/getMencionInfo.php',
        type: 'POST',
        async: true,
        data: 'mencion=RED',
        success: function(datos_recibidos) {
            $("#descripcion_mencion").val(datos_recibidos);
        }
    });

    $("#validar_add_ramo").hide();

    $("#boton_agregar_ramo").click(function(){
        var name = $("#nombre_nuevo");
        var profe = $("#profesor_new");
        var corta = $("#descrip_corta_nueva");
        var larga = $("#descrip_larga_new");
        var foto = $("#foto_new");

        if(name.val()==""){
            $("#validar_add_ramo").removeClass("alert-success");
            $("#validar_add_ramo").addClass("alert-danger");
            $("#validar_add_ramo").html("<strong>ERROR!</strong> - El nombre de la asignatura esta vacio.");
            $("#validar_add_ramo").show("slow");
            setTimeout(function() {
                $('#validar_add_ramo').hide('slow');
            }, 3000);
            return false;            
        }
        if(corta.val()==0){
            $("#validar_add_ramo").removeClass("alert-success");
            $("#validar_add_ramo").addClass("alert-danger");
            $("#validar_add_ramo").html("<strong>ERROR!</strong> - Debe escoger una descripción corta.");
            $("#validar_add_ramo").show("slow");
            setTimeout(function() {
                $('#validar_add_ramo').hide('slow');
            }, 3000);
            return false;            
        }
        if(larga.val()==""){
            $("#validar_add_ramo").removeClass("alert-success");
            $("#validar_add_ramo").addClass("alert-danger");
            $("#validar_add_ramo").html("<strong>ERROR!</strong> - La descripcion larga de la asignatura esta vacia.");
            $("#validar_add_ramo").show("slow");
            setTimeout(function() {
                $('#validar_add_ramo').hide('slow');
            }, 3000);
            return false;            
        }
        if(profe.val()==""){
            $("#validar_add_ramo").removeClass("alert-success");
            $("#validar_add_ramo").addClass("alert-danger");
            $("#validar_add_ramo").html("<strong>ERROR!</strong> - El nombre del profesor esta vacio.");
            $("#validar_add_ramo").show("slow");
            setTimeout(function() {
                $('#validar_add_ramo').hide('slow');
            }, 3000);
            return false;            
        }
        if(foto.val()==""){
            $("#validar_add_ramo").removeClass("alert-success");
            $("#validar_add_ramo").addClass("alert-danger");
            $("#validar_add_ramo").html("<strong>ERROR!</strong> - No ha ingresado una fotografia para la asignatura.");
            $("#validar_add_ramo").show("slow");
            setTimeout(function() {
                $('#validar_add_ramo').hide('slow');
            }, 3000);
            return false;            
        }

        $.ajax({
            url: '../../logica/setNuevaAsignaturaMencion.php',
            type: 'POST',
            async: true,
            data: 'name='+name.val()+'&corta='+$("#descrip_corta_nueva option:selected").text()+'&larga='+larga.val()+'&profe='+profe.val()+'&mencion=RED&code='+corta.val(),
            success: function(datos_recibidos) {
                if(datos_recibidos=="ok"){
                    $("#validar_add_ramo").removeClass("alert-danger");
                    $("#validar_add_ramo").addClass("alert-success");
                    $("#validar_add_ramo").html("<strong>EXITO!</strong> - Se ha ingresado la asignatura llamada <strong>"+name.val()+"</strong>. En breve sera redireccionado a la gestion de mencion.");
                    $("#validar_add_ramo").show("slow");
                    setTimeout(function() {
                                    location.reload();
                                }, 3000); 
                }else{
                    $("#validar_add_ramo").removeClass("alert-success");
                    $("#validar_add_ramo").addClass("alert-danger");
                    $("#validar_add_ramo").html("<strong>ERROR!</strong> - No se ha podido ingresar la asignatura. Por favor intente nuevamente.");
                    $("#validar_add_ramo").show("slow");
                    setTimeout(function() {
                        $('#validar_add_ramo').hide('slow');
                    }, 3000);
                }
            }
        });
    });

    $.ajax({
        url: '../../logica/getAsignaturaAdminMencion.php',
        type: 'POST',
        async: true,
        data: 'mencion=RED',
        success: function(datos_recibidos) {
            var datos_obtenidos = datos_recibidos.split("|+|");
            for (var i = 0; i < datos_obtenidos.length-1; i++) {
                var rescate = datos_obtenidos[i].split("||");
                $("#datos_tabla").append("<tr id='fila_"+i+"_"+rescate[4]+"_RED'><td id='nombre_"+i+"'>"+rescate[0]+"</td><td>"+rescate[1]+"</td><td>"+rescate[2]+"</td><td>"+rescate[3]+"</td><td id='estado_"+i+"'>"+rescate[5]+"</td><td id='boton_des_blo_"+i+"'></td><td><a href='#' class='btn btn-sm btn-primary'><span class='glyphicon glyphicon-pencil'></span> Modificar</a></td><td><a href='#' class='btn btn-sm btn-danger'><span class='glyphicon glyphicon-remove'></span> Borrar</a></td></tr>");   
            }
            for (var i = 0; i < datos_obtenidos.length-1; i++) {
                var rescate = datos_obtenidos[i].split("||");
                if(rescate[5]=="Visible"){
                    $("#boton_des_blo_"+i).html("<button class='btn btn-sm btn-success boton_mostrar' id='botonMostrarID_"+i+"_"+rescate[4]+"_DES'><span class='glyphicon glyphicon-eye-close'></span> No Mostrar</button>");    
                }else{
                    $("#boton_des_blo_"+i).html("<button class='btn btn-sm btn-warning boton_mostrar' id='botonMostrarID_"+i+"_"+rescate[4]+"_HAB'><span class='glyphicon glyphicon-eye-open'></span> Mostrar</button>");
                }
            }

            $(".boton_mostrar").click(function(){
                var data = $(this).attr("id").split("_");
                if($("#estado_"+data[1]).text() == "Visible"){
                    $(".modal-title").html("Deshabilitar Asignatura"); 
                    $(".modal-body").html("Desea deshabilitar la asignatura de <strong>"+$('#nombre_'+data[1]).text()+"</strong>");   
                }else{
                    $(".modal-title").html("Habilitar Asignatura");
                    $(".modal-body").html("Desea habilitar la asignatura de <strong>"+$('#nombre_'+data[1]).text()+"</strong>");  
                }
                $('#myModal_mostrar').modal({show:true});
                $("#boton_aprobar_mostrar").click(function(){
                    $.ajax({
                        url: '../../logica/setAsignaturaAdminMencionInfo.php',
                        type: 'POST',
                        async: true,
                        data: 'mencion=RED&code='+data[2]+'&tipo='+data[3]+'&nombre_ramo='+$("#nombre_"+data[1]).text(),
                        success: function(datos_recibidos) {
                            if(datos_recibidos == "ok"){
                                if($("#estado_"+data[1]).text() == "Visible"){
                                    $(".modal-body").html("<div class='alert alert-dismissible alert-success' role='alert' id='validar_aprobacion'><strong>EXITO</strong> - La asignatura <strong>"+$('#nombre_'+data[1]).text()+"</strong> ha sido deshabilitada con exito. En breve sera redirigido a la gestion de mencion.</div>");
                                }else{
                                    $(".modal-body").html("<div class='alert alert-dismissible alert-success' role='alert' id='validar_aprobacion'><strong>EXITO</strong> - La asignatura <strong>"+$('#nombre_'+data[1]).text()+"</strong> ha sido habilitada con exito. En breve sera redirigido a la gestion de mencion.</div>");                                  
                                }
                                $("#validar_aprobacion").show("slow");
                                setTimeout(function() {
                                    location.reload();
                                }, 3000);
                            }else{
                                if($("#estado_"+data[1]).text() == "Visible"){
                                    $(".modal-body").html("<div class='alert alert-dismissible alert-danger' role='alert' id='validar_aprobacion'><strong>ERROR!</strong> - La asignatura <strong>"+$('#nombre_'+data[1]).text()+"</strong> no ha sido deshabilitada. Intente nuevamente.</div>");
                                }else{
                                    $(".modal-body").html("<div class='alert alert-dismissible alert-danger' role='alert' id='validar_aprobacion'><strong>ERROR!</strong> - La asignatura <strong>"+$('#nombre_'+data[1]).text()+"</strong> no ha sido habilitada. Intente nuevamente.</div>");                                  
                                }                                
                                $("#validar_aprobacion").show("slow");
                                setTimeout(function() {
                                    $('#validar_aprobacion').hide('slow');
                                    $("#cerrar_modal_mostrar").click();
                                }, 3000);
                            }
                        }
                    });
                });                
            });

            $('#tablaMencion').dataTable({
                "scrollCollapse": true,
                "searching": false,
                "info": false,
                "paging": false
            });



            }
    });
});