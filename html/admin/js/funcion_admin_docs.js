$( document ).ready(function() {
    
    $("#validar_descarga").hide();

    $.ajax({
        url: '../../logica/getDescargasAdmin.php',
        type: 'POST',
        async: true,
        data: 'asignatura='+$("#datos_ocultos").val(),
        success: function(datos_recibidos) {
                var documentos = datos_recibidos.split("|-|");
                var aprobados = documentos[0].split("||");
                var no_aprobados = documentos[1].split("||");

                for(var i=0;i<no_aprobados.length-1;i++){
                    var datos = no_aprobados[i].split("++");
                    $("#tabla_doc_sin_aprobar").append("<tr class='template-upload fade in'><td class='nombre_archivo'>"+datos[0]+"</td><td class='comentario_archivo'>"+datos[4]+"</td><td class='autor_archivo'>"+datos[2]+"</td><td class='boton_aprobar'><a href='#' class='btn btn-success' title='Aprobar Documento'><span class='glyphicon glyphicon-ok'></span></a></td><td class='boton_eliminar'><a href='#' class='btn btn-danger' title='Eliminar Documento'><span class='glyphicon glyphicon-remove'></span></a></td></tr>");
                }

                for(var i=0;i<aprobados.length-1;i++){
                    var datos = aprobados[i].split("++");
                    $("#tabla_doc_aprobados").append("<tr class='template-upload fade in'><td class='nombre_archivo'>"+datos[0]+"</td><td class='comentario_archivo'>"+datos[4]+"</td><td class='autor_archivo'>"+datos[2]+"</td><td class='boton_eliminar'><a href='#' class='btn btn-danger' title='Eliminar Documento'><span class='glyphicon glyphicon-remove'></span></a></td></tr>");
                }
            
                $('#tablaNoAprobado').dataTable({
                    "scrollY":        "210px",
                    "scrollCollapse": true,
                    "paging":         false
                });

                $('#tablaAprobado').dataTable({
                    "scrollY":        "210px",
                    "scrollCollapse": true,
                    "paging":         false
                });

            }


    });

    
});