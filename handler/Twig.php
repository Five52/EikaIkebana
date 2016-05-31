<?php
require_once 'vendor/autoload.php';

/**
 * Classe de création du moteur de template Twig
 */
class Twig
{
    public static function get()
    {
        $loader = new Twig_Loader_Filesystem('view/');
        $twig = new Twig_Environment($loader, [
            'cache' => false
        ]);
        $twig->addGlobal('root', str_replace('index.php', '', $_SERVER['SCRIPT_NAME']));

        //Gestion de la saison - désactivé pour la présentation
        // require_once('config/saisons.php');
        // $twig->addGlobal('saison', $saison);
        $twig->addGlobal('saison', 'ete');
        return $twig;
    }

    protected static function getSeason()
    {
        $dateCourante = new DateTime();
        $annee = date('Y');
        $dateEte = new DateTime($annee.'-02-01');
        $dateHiver = new DateTime($annee.'-11-15');

        return ($dateCourante >= $dateEte && $dateCourante < $dateHiver)
            ? 'ete'
            : 'hiver';
        }
}
