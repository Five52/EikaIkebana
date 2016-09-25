<?php

namespace Eika\DAO;

use Eika\Domain\Picture;

/**
 * Classe gérant les photos en base de données
 */
class PictureDAO extends DAO
{
    /**
     * Get all pictures of a given gallery
     * @param  int $id          gallery id
     * @return array[Photo]     list of pictures
     */
    public function findAllByGallery($id)
    {
        $req = 'select * from Picture where idGallery = :id order by ordre';
        $stmt = $this->db->prepare($req);
        $data = [
            'id' => $id
        ];
        $stmt->execute($data);
        $res = $stmt->fetchAll();
        $stmt->closeCursor();

        $photos = [];

        foreach ($res as $donneesPhoto) {
            $photos[] = new Picture($donneesPhoto);
        }

        return (!empty($photos)) ? $photos : null;
    }
}