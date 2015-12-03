<?php
require_once 'handler/twig.php';

echo $twig->render('test.html.twig', [
	'nom' => 'Evrard'
]);