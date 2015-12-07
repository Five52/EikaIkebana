<?php
define('ROOT', str_replace('index.php', '', $_SERVER['SCRIPT_NAME']));

$routes = [
	'/' => 'index',
	'/activites' => 'activites',
	'/galeries' => 'galeries',
	'/galeries/value' => 'galerie'
	'/partager-lart' => 'partager_lart',
];
