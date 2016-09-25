<?php

namespace Eika\Domain;

use Eika\Domain\Domain;

class Gallery extends Domain
{
    /**
     * @var integer
     */
    protected $id;

    /**
     * @var string
     */
    protected $name;

    /**
     * @var string
     */
    protected $slug;

    /**
     * @var DateTime
     */
    protected $date;

    /**
     * @var string
     */
    protected $type;

    public function getId()
    {
        return $this->id;
    }
    public function setId($id)
    {
        $this->id = $id;
    }

    public function getName()
    {
        return $this->name;
    }
    public function setName($name)
    {
        $this->name = $name;
    }

    public function getSlug()
    {
        return $this->slug;
    }
    public function setSlug($slug)
    {
        $this->slug = $slug;
    }

    public function getDate()
    {
        return $this->date;
    }
    public function setDate($date)
    {
        $this->date = ($date != '0000-00-00') ? new \DateTime($date) : null;
    }

    public function getType()
    {
        return $this->type;
    }
    public function setType($type)
    {
        $this->type = $type;
    }
}