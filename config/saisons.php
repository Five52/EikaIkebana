<?php

$dateCourante = new DateTime();
$annee = date('Y');
$dateEte = new DateTime($annee.'-02-01');
$dateHiver = new DateTime($annee.'-11-15');

if ($dateCourante >= $dateEte && $dateCourante < $dateHiver)
	$saison = 'ete';
else
	$saison = 'hiver';
