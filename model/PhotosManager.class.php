<?php
require_once 'model/AbstractManager.class.php';
require_once 'model/Photo.class.php';

/**
 * Classe gérant les photos en base de données
 */
class PhotosManager extends AbstractManager {

	/**
	 * Récupère tous les photos d'une galerie
	 * @param  int $id          id de la galerie
	 * @return array[Photo]     liste des photos
	 */
	public function getAllFromGalerie($id) {
		$req = 'select * from Photo where idGalerie = :id order by ordre';
		$stmt = $this->pdo->prepare($req);
		$data = [
			'id' => $id
		];
		$stmt->execute($data);
		$res = $stmt->fetchAll();
		$stmt->closeCursor();

		$photos = [];

		foreach ($res as $donneesPhoto) {
			$photos[] = new Photo($donneesPhoto);
		}

		return (!empty($photos)) ? $photos : null;
	}
}