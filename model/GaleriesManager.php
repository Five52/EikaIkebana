<?php
require_once 'model/AbstractManager.php';
require_once 'model/Galerie.php';

/**
 * Classe gérant les galeries en base de données
 */
class GaleriesManager extends AbstractManager
{
    /**
     * Récupère les galeries en base de données
     * @return array[Galerie] liste des galeries
     */
    public function getGaleries()
    {
        $req = 'select * from Galerie';
        $stmt = $this->pdo->prepare($req);
        $stmt->execute();
        $res = $stmt->fetchAll();
        $stmt->closeCursor();

        $galeries = [];

        foreach ($res as $donneesGalerie) {
            $galeries[] = new Galerie($donneesGalerie);
        }

        return (!empty($galeries)) ? $galeries : null;
    }

    /**
     * Récupère la galerie ayant pour slug le slug fourni
     * @param  string  $slug     slug de la galerie
     * @return Galerie     la galerie
     */
    public function get($slug)
    {
        $req = 'select * from Galerie where slug = :slug';
        $stmt = $this->pdo->prepare($req);
        $data = [
            'slug' => $slug
        ];
        $stmt->execute($data);
        $res = $stmt->fetch();
        $stmt->closeCursor();

        return (!empty($res)) ? new Galerie($res) : null;
    }
}