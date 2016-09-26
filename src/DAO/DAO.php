<?php

namespace Eika\DAO;

use Doctrine\DBAL\Connection;

/**
 * Abstract class for data access objects
 */
abstract class DAO
{
    protected $db;

    public function __construct(Connection $db)
    {
        $this->db = $db;
    }

    protected function getDb()
    {
        return $this->db;
    }
}
