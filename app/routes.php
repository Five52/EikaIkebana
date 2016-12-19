<?php

use Symfony\Component\HttpFoundation\Request;

// Home page
$app->get('/', function() use ($app) {
    return $app->render('index.html.twig');
})
->bind('home');

// Activites page
$app->get('activites', function() use ($app) {
    return $app->render('activites.html.twig');
})
->bind('activites');

// Galeries page
$app->get('galeries', function() use ($app) {
    $galleries = $app['dao.gallery']->findAll();
    return $app->render('galeries.html.twig', [
        'galleries' => $galleries
    ]);
})
->bind('galleries');

// Gallery page with pictures
$app->get('galeries/{gallery_slug}', function($gallery_slug) use ($app) {
    $gallery = $app['dao.gallery']->find($gallery_slug);
    if ($gallery === null) {
        $app->abort(404, "Cette galerie n'existe pas.");
    }

    $pictures = $app['dao.picture']->findAllByGallery($gallery->getId());
    if ($pictures === null) {
        $app->abort(404, "Il n'y a pas de photos pour cette galerie.");
    }

    return $app->render('galerie.html.twig', [
        'gallery' => $gallery,
        'pictures' => $pictures
    ]);
})
->bind('gallery');

// Partager l'art page
$app->get('partager-lart', function() use ($app) {
    return $app->render('partager_lart.html.twig');
})
->bind('partager-lart');

// Contact page
$app->get('contact', function() use ($app) {
    return $app->render('contact.html.twig');
})
->bind('contact');

// Archives page
$app->get('archives', function() use ($app) {
    return $app->render('archives.html.twig');
})
->bind('archives');

// Error handler
$app->error(function (\Exception $e, Request $request, $code) use ($app) {
    switch($code) {
        case 404:
            return $app->render('404.html.twig');
    }
});
