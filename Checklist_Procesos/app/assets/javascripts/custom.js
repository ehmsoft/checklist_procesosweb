$(document).bind("mobileinit", function(){
  $.mobile.ajaxEnabled = false;
});


$(document).bind("pageshow", function(){
	$('#visita_diaria_n_estados').click(function(){
		this.select();
	});
	$('#visita_diaria_n_edictos').click(function(){
		this.select();
	});
	$('#visita_diaria_n_traslados').click(function(){
		this.select();
	});
	
	$('#dup_rango_estados').click(function(){
			var max = $('#visita_diaria_n_estados').attr('max');
			$('#visita_diaria_n_estados').attr('max', max * 2);
			$('#visita_diaria_n_estados').slider('refresh');

	});
	
	$('#dup_rango_edictos').click(function(){
			var max = $('#visita_diaria_n_edictos').attr('max');
			$('#visita_diaria_n_edictos').attr('max', max * 2);
			$('#visita_diaria_n_edictos').slider('refresh');

	});
	
	$('#dup_rango_traslados').click(function(){
			var max = $('#visita_diaria_n_traslados').attr('max');
			$('#visita_diaria_n_traslados').attr('max', max * 2);
			$('#visita_diaria_n_traslados').slider('refresh');

	});
});
