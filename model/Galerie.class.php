<?php

// Classe représentant une Galerie
class Galerie {

	protected $id;
	protected $nom;
	protected $date;
	protected $type;

	public function __construct(array $valeurs) {
		$this->hydrate($valeurs);
	}

	// Fonction d'hydratation de la classe
	// Permet de remplir l'objet avec les données fournies
	public function hydrate(array $donnees) {
		foreach ($donnees as $attribut => $valeur) {
			$attributFormate = '';
			foreach (explode('_', $attribut) as $mot) {
				$attributFormate .= ucfirst($mot);
			}
			$setter = 'set'.ucfirst($attributFormate);
			if (method_exists($this, $setter)) {
				$this->$setter($valeur);
			}
		}
	}

	public function getId() {
		return $this->id;
	}
	
	public function setId($id) {
		$this->id = $id;
	}

	public function getNom() {
		return $this->nom;
	}
	public function setNom($nom) {
		$this->nom = $nom;
	}

	public function getDate() {
		return $this->date;
	}
	public function setDate($date) {
		$this->date = $date;
	}

	public function getType() {
		return $this->type;
	}
	public function setType($type) {
		$this->type = $type;
	}
}