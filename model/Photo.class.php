<?php

/**
 * Classe représentant une photo
 */
class Photo {

	protected $id;
	protected $source;
	protected $sourceMiniature;
	protected $alt;
	protected $titre;

	public function __construct(array $valeurs) {
		$this->hydrate($valeurs);
	}

	/**
	 * Fonction d'hydratation de la classe
	 * Permet de remplir l'objet avec les données fournies
	 * @param  array  $donnees données de l'objet présentes en base de données
	 */
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
	
	public function getSource() {
		return $this->source;
	}
	public function setSource($source) {
		$this->source = $source;
	}

	public function getSourceMiniature() {
		return $this->sourceMiniature;
	}
	public function setSourceMiniature($sourceMiniature) {
		$this->sourceMiniature = $sourceMiniature;
	}

	public function getAlt() {
		return $this->alt;
	}
	public function setAlt($alt) {
		$this->alt = $alt;
	}

	public function getTitre() {
		return $this->titre;
	}
	public function setTitre($titre) {
		$this->titre = $titre;
	}
}