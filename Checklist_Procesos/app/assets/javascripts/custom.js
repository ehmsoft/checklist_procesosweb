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
});
