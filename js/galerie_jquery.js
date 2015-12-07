$(function(){
	$('#mini-galerie').on('click', 'a', function(e){
		e.preventDefault();
		var cible = $(this).attr('href') ;
		if ($('#grande_photo img').attr('src') == cible) return ;
		$('#grande_photo img').fadeOut(300, function(){
			$('#grande_photo img')
				.attr('src', cible)
				.load(function(){
					$('#grande_photo img').fadeIn(300) ;
				})
			})
		;
	});
}); 