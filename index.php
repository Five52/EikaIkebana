<?php
require_once 'handler/twig.php';

echo $twig->render('index.html.twig', [
	'nom' => 'Evrard'
]);