<?php
require_once 'vendor/autoload.php';

class Twig {
	static public function create() {
		$loader = new Twig_Loader_Filesystem('view/');
		$twig = new Twig_Environment($loader, [
			'cache' => false
		]);
		$twig->addGlobal('root', str_replace('index.php', '', $_SERVER['SCRIPT_NAME']));
		return $twig;
	}
}
