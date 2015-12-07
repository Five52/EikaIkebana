<?php
require_once 'handler/twig.php';
require_once 'handler/routes.php';
require_once 'handler/saisons.php';
require_once 'config/DB.class.php';
require_once 'handler/ManagerHandler.class.php';

$request = isset($_GET['request']) ? $_GET['request'] : '/';
$requestExploded = explode('/', ltrim($request, '/'));

$action = '/' ;
$param = '';

switch(count($requestExploded)) {
	case 1:
		$action .= $requestExploded[0];
		break;
	case 2:
		$action .= $requestExploded[0];
		$param = $requestExploded[1];
		break;
	default:
		erreur404();
}

if (!empty($param)) {
	$action .= '/{id}';
}

if (array_key_exists($action, $routes)) {
	$routes[$action]($param);
} else {
	erreur404();
}

function index() {
	echo Twig::create()->render('index.html.twig', [
		'saison' => 'ete'
	]);
}

function activites() {
	echo Twig::create()->render('activites.html.twig');
}

function galeries() {
	$galeries = ManagerHandler::get('galeries')->getGaleries();
	echo Twig::create()->render('galeries.html.twig', [
		'galeries' => $galeries
	]);
}

function galerie($id) {
	$id = (int) $id;
	$galerie = ManagerHandler::get('galeries')->get($id);

	if($galerie === null) {
		erreur404();
		return;
	}

	$photos = ManagerHandler::get('photos')->getAllFromGalerie($galerie->getId());

	if($photos === null) {
		erreur404();
		return;
	}

	echo Twig::create()->render('galerie.html.twig', [
		'galerie' => $galerie,
		'photos' => $photos,
		'photo1' => $photos[0]
	]);
}

function partager_lart() {
	echo Twig::create()->render('partager_lart.html.twig');
}

function erreur404() {
	echo Twig::create()->render('404.html.twig');
}