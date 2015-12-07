<?php

$dateCourante = new DateTime();
$annee = date('Y');
$datePrintemps = new DateTime($annee.'-02-15');
$dateEte = new DateTime($annee.'-06-01');
$dateHiver = new DateTime($annee.'-11-15');

if ($dateCourante >= $datePrintemps && $dateCourante < $dateEte)
	$saison = 'printemps' ;
elseif ($dateCourante >= $dateEte && $dateCourante < $dateHiver)
	$saison = 'ete';
else
	$saison = 'hiver';
