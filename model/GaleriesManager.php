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
     * Récupère la galerie ayant pour id l'id fournie
     * @param  int $id     id de la galerie
     * @return Galerie     la galerie
     */
    public function get($id)
    {
        $req = 'select * from Galerie where id = :id';
        $stmt = $this->pdo->prepare($req);
        $data = [
            'id' => $id
        ];
        $stmt->execute($data);
        $res = $stmt->fetch();
        $stmt->closeCursor();

        return (!empty($res)) ? new Galerie($res) : null;
    }
}