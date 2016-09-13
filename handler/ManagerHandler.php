<?php
require_once 'config/DB.php';

class ManagerHandler
{
    /**
     * Retourne le manager correspondant
     * @param String $manager nom du manager
     */
    public static function get($manager)
    {
        $class = ucfirst($manager) . 'Manager';
        $path = 'model/' . $class . '.php';
        if (is_file($path)) {
            require_once($path);
            return new $class(DB::getInstance()->getPDO());
        } else {
            return false;
        }
    }
}
