$(function() {
	var breakpoint = 768;
	var $navs = $('nav');
	var $cliquables = $('nav > :first-child');
	var $menus = $('nav ul');

	function navigation() {
		var $visuels = $('#menu_general_button, #menu_contextuel_button');
		// If the screen is too small
		if (window.innerWidth < breakpoint) {
			// If visuals aren't created yet
			if ($visuels.length == 0) {
				// Reduce the menus
				$menus.toggle(false);
				$navs.each(function(i, nav) {
					var $liens = $('li', $menus.eq(i));
					if ($liens.length != 0) {
						// Change the cursor on the clickables
						$cliquables.eq(i).css('cursor', 'pointer');
						// Create a visual element "button" which is added to the menu
						var visuel = document.createElement('div');
						visuel.id = nav.id + '_button';
						$(nav).append(visuel);
						// Quand on clique sur un cliquable, on change le menu correspond et on change le visuel
						// When a clickable is created, change the according menu and visual
						$cliquables.eq(i).on('click', function() {
							$menus.eq(i).slideToggle();
							visuel.classList.toggle('developpe');
						});
					}
				});
			}
		// Sinon
		} else {
			// If clickable zones have already been created
			if ($visuels.length != 0) {
				// Put back the cursor to auto on the clickables
				$cliquables.css('cursor', 'auto');
				// Increase the menus
				$menus.toggle(true);
				// Delete the visuals and deactivate on-click changes
				$visuels.each(function(i, visuel) {
					$(visuel).remove();
					$cliquables.eq(i).off();
				});
			}
		}
	}
	navigation();
	$(window).on('resize', navigation);

	$('header').css('cursor', 'pointer').on('click', function(event) {
		window.location = $('#menu_general a:first-of-type').attr('href');
	});
});
