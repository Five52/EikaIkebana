<?php
require_once 'vendor/autoload.php';

/**
 * Classe de création du moteur de template Twig
 */
class Twig {
	static public function create() {
		$loader = new Twig_Loader_Filesystem('view/');
		$twig = new Twig_Environment($loader, [
			'cache' => false
		]);
		$twig->addGlobal('root', str_replace('index.php', '', $_SERVER['SCRIPT_NAME']));
		
		//Gestion de la saison - désactivé pour la présentation
		// require_once('config/saisons.php');
		// $twig->addGlobal('saison', $saison);
		$twig->addGlobal('saison', 'ete');
		return $twig;
	}
}
