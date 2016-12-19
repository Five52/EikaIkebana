<?php

use Symfony\Component\Debug\{ErrorHandler, ExceptionHandler};

use Silex\Provider\{
    DoctrineServiceProvider,
    FormServiceProvider,
    ValidatorServiceProvider,
    CsrfServiceProvider,
    TranslationServiceProvider,
    SessionServiceProvider,
    TwigServiceProvider
};

ErrorHandler::register();
ExceptionHandler::register();

// Database setup
$app->register(new DoctrineServiceProvider());
$app['dao.gallery'] = function ($app) {
    return new Eika\DAO\GalleryDAO($app['db']);
};
$app['dao.picture'] = function ($app) {
    return new Eika\DAO\PictureDAO($app['db']);
};

// Form setup
$app->register(new FormServiceProvider());
$app->register(new ValidatorServiceProvider());
$app->register(new CsrfServiceProvider());
$app->register(new TranslationServiceProvider(),  [
    'locale' => 'fr'
]);

$app->register(new SessionServiceProvider());

// Twig setup
$app->register(new TwigServiceProvider(), [
    'twig.path' => __DIR__.'/../views'
]);
$app['twig']->addGlobal('root', str_replace('index.php', '', $_SERVER['SCRIPT_NAME']));
$app['twig']->addGlobal('now', date('Y-m-d H:i:s'));
$app['twig']->addGlobal('saison', 'ete');
