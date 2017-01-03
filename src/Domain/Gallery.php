<?php

namespace Eika\Domain;

use Eika\Domain\Domain;

class Gallery extends Domain
{
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

    /**
     * @var int
     */
    protected $ordre;

    /**
     * @var string
     */
    protected $previous;

    /**
     * @var string
     */
    protected $next;

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

    public function getOrdre()
    {
        return $this->ordre;
    }
    public function setOrdre($ordre)
    {
        $this->ordre = $ordre;
    }

    public function getPrevious()
    {
        return $this->previous;
    }
    public function setPrevious($previous)
    {
        $this->previous = $previous;
    }

    public function getNext()
    {
        return $this->next;
    }
    public function setNext($next)
    {
        $this->next = $next;
    }
}
