<?php

/**
 * Gestionnaire des managers
 */
class ManagerHandler {

	/**
	 * Crée et renvoie le manager demandé
	 * @param  String  $name nom du manager de la forme 'Manager'
	 * @return Manager       le manager demandé
	 */
	static public function get($name) {
		$manager = ucfirst($name).'Manager';
		require_once 'model/'.$manager.'.class.php';
		return new $manager(DB::getInstance()->getPDO());
	}
}