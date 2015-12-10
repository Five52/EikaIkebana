<?php

/**
 * Classe abstraite pour les gestionnaires de base de données
 */
abstract class AbstractManager {

	protected $pdo;

	public function __construct(PDO $pdo) {
		$this->pdo = $pdo;
	}
}