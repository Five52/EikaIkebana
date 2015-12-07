$(function(){
	$('#mini-galerie').on('click', 'a', function(e){
		e.preventDefault();
		var cible = $(this).attr('href') ;
		if ($('#grande_photo').attr('src') == cible) return ;
		$('#grande_photo').fadeOut(300, function(){
			$('#grande_photo')
				.attr('src', cible)
				.load(function(){
					$('#grande_photo').fadeIn(300) ;
				})
			})
		;
	});
}); 