$( document ).ready(function() {

	$(".enlace_descarga").click(function() {
		$('#myModal').modal({show:true});
	});	

	$("#subir_documento").click(function() {
		$(".modal-title").html("Subir Nuevos Documentos");
		$(".modal-body").html("<div class='row'><div class='col-sm-12'>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.<div class='center'><span class='btn btn-warning btn-file'>Browse <input type='file></span></div></div></div>");
		$('#myModal').modal({show:true});
	});

});	