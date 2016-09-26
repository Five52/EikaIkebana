<?php

namespace Eika\Domain;

use Eika\Domain\Domain;

class Picture extends Domain
{

    /**
     * @var int
     */
    protected $id;

    /**
     * @var string
     */
    protected $source;

    /**
     * @var string
     */
    protected $sourceMiniature;

    /**
     * @var string
     */
    protected $alt;

    /**
     * @var string
     */
    protected $title;

    /**
     * @var integer
     */
    protected $order;
    
    public function getId()
    {
        return $this->id;
    }
    public function setId($id)
    {
        $this->id = $id;
    }
    
    public function getSource()
    {
        return $this->source;
    }
    public function setSource($source)
    {
        $this->source = $source;
    }

    public function getSourceMiniature()
    {
        return $this->sourceMiniature;
    }
    public function setSourceMiniature($sourceMiniature)
    {
        $this->sourceMiniature = $sourceMiniature;
    }

    public function getAlt()
    {
        return $this->alt;
    }
    public function setAlt($alt)
    {
        $this->alt = $alt;
    }

    public function getTitle()
    {
        return $this->title;
    }
    public function setTitle($title)
    {
        $this->title = $title;
    }

    public function getOrdre() {
        return $this->ordre;
    }
    public function setOrdre($ordre) {
        $this->ordre = $ordre;
    }
}
