$(function() {
	var breakpoint = 768;
	var $navs = $('nav');
	var $cliquables = $('nav > :first-child');
	var $menus = $('nav ul');

	function navigation() {
		var $visuels = $('#menu_general_button, #menu_contextuel_button');
		//Si l'écran est trop petit
		if (window.innerWidth < breakpoint) {
			// Si les visuels n'ont pas été créés
			if ($visuels.length == 0) {
				// On réduit les menus
				$menus.toggle(false);
				$navs.each(function(i, nav) {
					var $liens = $('li', $menus.eq(i));
					if ($liens.length != 0) {
						// On transforme les curseurs en pointeurs sur le cliquable
						$cliquables.eq(i).css('cursor', 'pointer');
						// On crée un élément visuel "button" qui sera ajouté au menu
						var visuel = document.createElement('div');
						visuel.id = nav.id + '_button';
						$(nav).append(visuel);
						// Quand on clique sur un cliquable, on change le menu correspond et on change le visuel
						$cliquables.eq(i).on('click', function() {
							$menus.eq(i).slideToggle();
							visuel.classList.toggle('developpe');
						});
					}
				});
			}
		// Sinon
		} else {
			// Si les zones cliquables ont déjà été créées
			if ($visuels.length != 0) {
				// On remet les curseurs en automatique sur les cliquables
				$cliquables.css('cursor', 'auto');
				// On agrandit les menus
				$menus.toggle(true);
				// On supprime les visuels et on désactive les changements au clic
				$visuels.each(function(i, visuel) {
					$(visuel).remove();
					$cliquables.eq(i).off();
				});
			}
		}
	}
	navigation();
	$(window).on('resize', navigation);

	$('header h1').css('cursor', 'pointer').on('click', function(event) {
		window.location = $('#menu_general a:first-of-type').attr('href');
	});
});
