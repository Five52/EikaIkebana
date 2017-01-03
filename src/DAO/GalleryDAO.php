<?php

namespace Eika\DAO;

use Eika\Domain\Gallery;

/**
 * DAO handling galleries
 */
class GalleryDAO extends DAO
{
    /**
     * Get all galleries
     * @return array[Gallery] list of galleries
     */
    public function findAll()
    {
        $req = 'select * from Gallery order by ordre';
        $stmt = $this->db->prepare($req);
        $stmt->execute();
        $res = $stmt->fetchAll();
        $stmt->closeCursor();

        $galleries = [];

        foreach ($res as $dataGallery) {
            $galleries[] = new Gallery($dataGallery);
        }

        return (!empty($galleries)) ? $galleries : null;
    }

    /**
     * Get the gallery with the slug provided
     * @param  string  $slug    gallery slug
     * @return Gallery          the gallery
     */
    public function find($slug)
    {
        $req = 'select * from Gallery where slug = :slug';
        $stmt = $this->db->prepare($req);
        $data = [
            'slug' => $slug
        ];
        $stmt->execute($data);
        $res = $stmt->fetch();
        $stmt->closeCursor();

        return (!empty($res)) ? new Gallery($res) : null;
    }
}
