<?php
require_once 'config/routes.php';
require_once 'config/DB.class.php';
require_once 'handler/twig.php';

// Nettoyage de la requête

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

// Récupération de la fonction liée à la route à lancer

if (array_key_exists($action, $routes)) {
    $routes[$action]($param);
} else {
    erreur404();
}

// Fonctions liées aux routes

function index() {
    echo Twig::get()->render('index.html.twig');
}

function activites() {
    echo Twig::get()->render('activites.html.twig');
}

function galeries() {
    $galeries = ManagerHandler::get('galeries')->getGaleries();
    echo Twig::get()->render('galeries.html.twig', [
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

    echo Twig::get()->render('galerie.html.twig', [
        'galerie' => $galerie,
        'photos' => $photos,
        'photo1' => $photos[0]
    ]);
}

function partager_lart() {
    echo Twig::get()->render('partager_lart.html.twig');
}

function contact() {
    echo Twig::get()->render('contact.html.twig');
}

function archives() {
    echo Twig::get()->render('archives.html.twig');
}

function erreur404() {
    echo Twig::get()->render('404.html.twig');
}