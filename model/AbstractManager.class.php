<?php

abstract class AbstractManager {

	protected $pdo;

	public function __construct(PDO $pdo) {
		$this->pdo = $pdo;
	}
}