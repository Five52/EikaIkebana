<?php
require_once 'handler/twig.php';
require_once 'routes.php';
require_once 'saisons.php';

echo $twig->render('partager_lart.html.twig', [
	'saison' => 'ete',
	'rqt' => $_GET['request']
]);