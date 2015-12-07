<?php
require_once 'model/AbstractManager.class.php';
require_once 'model/Galerie.class.php';

class GaleriesManager extends AbstractManager {

	public function getGaleries() {
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

	public function get($id) {
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