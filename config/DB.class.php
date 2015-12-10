<?php
require_once 'config/mysql_config.php';

/**
 * Singleton gérant PDO
 */
class DB {

	static private $instance = null;
	protected $pdo;

	private function __construct() {
		$this->pdo = new PDO(
			'mysql:host='.HOST.';port='.PORT.';dbname='.DATABASE.';charset=utf8',
			USER,
			PASSWORD
		);
		$this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$this->pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
	}

	/**
	 * On évite le clonage possible
	 */
	private function __clone() {}

	/**
	 * Renvoie l'unique instance de notre base de données
	 * @return DB la base de données
	 */
	static public function getInstance() {
		if (self::$instance === null)
			self::$instance = new DB();
		return self::$instance;
	}

	/**
	 * Renvoie le pdo
	 * @return PDO pdo
	 */
	public function getPDO() {
		return $this->pdo;
	}
}

?>