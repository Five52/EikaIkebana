<?php
require_once 'handler/twig.php';
require_once 'handler/routes.php';
require_once 'handler/saisons.php';
require_once 'config/DB.class.php';
require_once 'handler/ManagerHandler.class.php';

$request = isset($_GET['request']) ? $_GET['request'] : '/';

if (array_key_exists($request, $routes)) {
	$routes[$request]();
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

function partager_lart() {
	echo Twig::create()->render('partager_lart.html.twig');
}

function erreur404() {
	echo Twig::create()->render('404.html.twig');
}