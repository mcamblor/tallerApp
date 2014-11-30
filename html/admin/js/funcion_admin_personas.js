$( document ).ready(function() {
	
    $.ajax({
        url: '../../logica/getPersonalAdmin.php',
        type: 'POST',
        async: true,
        data: 'obtener=tabla',
        success: function(datos_recibidos) {
                var tipos_personas = datos_recibidos.split("|+|");
                var academicos = tipos_personas[0].split("||");
                var ayudantes = tipos_personas[1].split("||");
                var administrativos = tipos_personas[2].split("||");

                for (var i = 0; i<academicos.length-1;i++) {
                    var tmp = academicos[i].split("++");
                    $("#tabla_body_academicos").append("<tr class='template-upload fade in' id='academico_"+tmp[0]+"'><td class='nombre_academico' id='nombreAcademico_"+tmp[0]+"'><a class='mostrarAcademico' id='mostrarAcademico_"+tmp[0]+"' style='cursor:pointer;'>"+tmp[1]+"</a></td><td class='boton_modificar' align='center'><a id='modificarAcademico_"+tmp[0]+"' class='btn btn-primary botonModificar' title='Modificar Académico'><span class='glyphicon glyphicon-pencil'></span></a></td><td class='boton_eliminar' align='center'><a id='eliminarAcademico_"+tmp[0]+"' class='btn btn-danger botonEliminar' title='Eliminar Académico'><span class='glyphicon glyphicon-remove'></span></a></td></tr>");
                }

                for (var i = 0; i<ayudantes.length-1;i++) {
                    var tmp = ayudantes[i].split("++");
                    $("#tabla_body_ayudantes").append("<tr class='template-upload fade in' id='ayudante_"+tmp[0]+"'><td class='nombre_ayudante' id='nombreAyudante_"+tmp[0]+"'><a class='mostrarAyudante' id='mostrarAyudante_"+tmp[0]+"' style='cursor:pointer;'>"+tmp[1]+"</a></td><td class='boton_modificar' align='center'><a id='modificarAyudante_"+tmp[0]+"' class='btn btn-primary botonModificar' title='Modificar Ayudante'><span class='glyphicon glyphicon-pencil'></span></a></td><td class='boton_eliminar' align='center'><a id='eliminarAyudante_"+tmp[0]+"' class='btn btn-danger botonEliminar' title='Eliminar Ayudante'><span class='glyphicon glyphicon-remove'></span></a></td></tr>");
                }

                for (var i = 0; i<administrativos.length-1;i++) {
                    var tmp = administrativos[i].split("++");
                    $("#tabla_body_administrativos").append("<tr class='template-upload fade in' id='administrativo_"+tmp[0]+"'><td class='nombre_administrativo' id='nombreAdministrativo_"+tmp[0]+"'><a class='mostrarAdministrativo' id='mostrarAdministrativo_"+tmp[0]+"' style='cursor:pointer;'>"+tmp[1]+"</a></td><td class='boton_modificar' align='center'><a id='modificarAdministrativo_"+tmp[0]+"' class='btn btn-primary botonModificar' title='Modificar Administrativo'><span class='glyphicon glyphicon-pencil'></span></a></td><td class='boton_eliminar' align='center'><a id='eliminarAdministrativo_"+tmp[0]+"' class='btn btn-danger botonEliminar' title='Eliminar Administrativo'><span class='glyphicon glyphicon-remove'></span></a></td></tr>");
                }

                $('#tabla_academicos').dataTable({
                        "scrollY":        "400px",
                        "searching": false,
                        "info": false,
                        "paging": false
                    });

                $('#tabla_administrativos').dataTable({
                        "scrollY":        "400px",
                        "searching": false,
                        "info": false,
                        "paging": false
                    });

                $('#tabla_ayudantes').dataTable({
                        "scrollY":        "400px",
                        "searching": false,
                        "info": false,
                        "paging": false
                    });

                $("#agregarAcademico").click(function(){
                    $("#myModalLabel").html("Agregar un Académico");
                    $(".modal-footer").html("<button type='button' class='btn btn-primary' data-dismiss='modal'>Cerrar</button>");
                    $("#cuerpoModal").html();
                    $('#myModal').modal({show:true});
                });

                $("#agregarAdministrativo").click(function(){
                    $("#myModalLabel").html("Agregar un Administrativo");
                    $(".modal-footer").html("<button type='button' class='btn btn-primary' data-dismiss='modal'>Cerrar</button>");
                    $("#cuerpoModal").html();
                    $('#myModal').modal({show:true});
                });

                $("#agregarAyudante").click(function(){
                    $("#myModalLabel").html("Agregar un Ayudante de Laboratorio");
                    $(".modal-footer").html("<button type='button' class='btn btn-primary' data-dismiss='modal'>Cerrar</button>");
                    $("#cuerpoModal").html();
                    $('#myModal').modal({show:true});
                });

                $(".mostrarAyudante").click(function(){
                    //alert($(this).attr("id"));
                    var tmp = $(this).attr("id").split("_");
                    $.ajax({
                        url: '../../logica/getPersonalAdmin.php',
                        type: 'POST',
                        async: true,
                        data: 'obtener=ayudante&idPerson='+tmp[1],
                        success: function(datos_recibidos) {
                            var data_recived = datos_recibidos.split("++");
                            $("#myModalLabel").html("Ayudante de Laboratorio: "+data_recived[0]);
                            var status = "";
                            if(data_recived[3]==1){
                                status = "Activo";
                            }else{
                                status = "No activo";
                            }
                            $(".modal-footer").html("<button type='button' class='btn btn-primary' data-dismiss='modal'>Cerrar</button>");
                            $("#cuerpoModal").html("<div class='row'><div class='col-lg-6'><p><strong>Correo: </strong>"+data_recived[1]+"</p><p><strong>Estado: </strong>"+status+"</p></div><div class='col-lg-6'><img src='"+data_recived[2]+"' width='320' heigth='320'></div></div>");
                            $('#myModal').modal({show:true});
                        }
                    });
                });

                $(".mostrarAdministrativo").click(function(){
                    //alert($(this).attr("id"));
                    var tmp = $(this).attr("id").split("_");
                    $.ajax({
                        url: '../../logica/getPersonalAdmin.php',
                        type: 'POST',
                        async: true,
                        data: 'obtener=administrativo&idPerson='+tmp[1],
                        success: function(datos_recibidos) {
                            var data_recived = datos_recibidos.split("++");
                            $("#myModalLabel").html("Administrativo: "+data_recived[0]);
                            var status = "";
                            if(data_recived[4]==1){
                                status = "Activo";
                            }else{
                                status = "No activo";
                            }
                            $(".modal-footer").html("<button type='button' class='btn btn-primary' data-dismiss='modal'>Cerrar</button>");
                            $("#cuerpoModal").html("<div class='row'><div class='col-lg-6'><p><strong>Correo: </strong>"+data_recived[2]+"</p><p><strong>Cargo: </strong>"+data_recived[1]+"</p><p><strong>Estado: </strong>"+status+"</p></div><div class='col-lg-6'><img src='"+data_recived[3]+"' width='320' heigth='320'></div></div>");
                            $('#myModal').modal({show:true});
                        }
                    });
                });

                $(".mostrarAcademico").click(function(){
                    //alert($(this).attr("id"));
                    var tmp = $(this).attr("id").split("_");
                    $.ajax({
                    url: '../../logica/getInfoPersonal.php',
                    type: 'POST',
                    async: true,
                    data: 'idsent='+tmp[1],
                    success: function(datos_recibidos) {
                            var data_from = datos_recibidos.split("||");

                            var personales = data_from[0].split("++");
                            var titulos = data_from[1].split("++");
                            var areas = data_from[2].split("++");
                            var asig = data_from[3].split("++");
                            var asigm = data_from[4].split("++");
                            $(".modal-title").html("Académico: "+personales[0]);
                             $(".modal-footer").html("<button type='button' class='btn btn-primary' data-dismiss='modal'>Cerrar</button>");
                            $(".modal-body").html("<div class='row'><div class='col-sm-7'><h4 align='center'>"+personales[1]+"</h4><a class='btn btn-block btn-xs btn-primary'><span class='glyphicon glyphicon-list-alt'></span> Títulos</a><br><ul class='listado_titulos'></ul><a class='btn btn-block btn-xs btn-primary'><span class='glyphicon glyphicon-lock'></span> Áreas de Trabajo</a><br><ul class='listado_areas'></ul><a class='btn btn-block btn-xs btn-primary'><span class='glyphicon glyphicon-book'></span> Asignaturas Dictadas</a><br><ul class='listado_asignaturas'></ul><a class='btn btn-block btn-xs btn-primary'><span class='glyphicon glyphicon-earphone'></span> Contacto</a><br><ul><li>Fono: "+personales[4]+"</li><li>Correo: "+personales[2]+"</li><li>Web: <a href='http://"+personales[3]+"' target='_blank'>"+personales[3]+"</a></li></ul></div><div class='col-sm-4'><img src='"+personales[5]+"'></div></div>");
                            
                            for (var i = 0;i<titulos.length-1;i++) {
                                $(".listado_titulos").append("<li>"+titulos[i]+"</li>");
                            }

                            for (var i = 0;i<areas.length-1;i++) {
                                $(".listado_areas").append("<li>"+areas[i]+"</li>");
                            }

                            for (var i = 0;i<asig.length-1;i++) {
                                $(".listado_asignaturas").append("<li>"+asig[i]+"</li>");
                            }

                            for (var i = 0;i<asigm.length-1;i++) {
                                $(".listado_asignaturas").append("<li>"+asigm[i]+"</li>");
                            }

                            $("#myModal").modal({show:true});



                        }
                    });
                });

           }
    });

});