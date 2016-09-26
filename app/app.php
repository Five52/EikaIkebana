<?php

use Symfony\Component\Debug\ErrorHandler;
use Symfony\Component\Debug\ExceptionHandler;

ErrorHandler::register();
ExceptionHandler::register();

// Database setup
$app->register(new Silex\Provider\DoctrineServiceProvider());
$app['dao.gallery'] = function ($app) {
    return new Eika\DAO\GalleryDAO($app['db']);
};
$app['dao.picture'] = function ($app) {
    return new Eika\DAO\PictureDAO($app['db']);
};

// Twig setup
$app->register(new Silex\Provider\TwigServiceProvider(), [
    'twig.path' => __DIR__.'/../views'
]);
$app['twig']->addGlobal('root', str_replace('index.php', '', $_SERVER['SCRIPT_NAME']));
$app['twig']->addGlobal('now', date('Y-m-d H:i:s'));
$app['twig']->addGlobal('saison', 'ete');
