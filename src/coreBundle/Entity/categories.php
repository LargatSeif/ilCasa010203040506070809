<?php

namespace coreBundle\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\ORM\Mapping as ORM;

/**
 * categories
 */
class categories
{
    /**
     * @var int
     */
    private $id;

    /**
     * @var string
     */
    private $nom;

    /**
     * @var \DateTime
     */
    private $dateAjout;

    /**
     * @var integer
     */
    private $status;

    private $sousCats;
    
    public function __construct()
    {
        $this->dateAjout = new \DateTime();
        $this->sousCats = new ArrayCollection();
    }
    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set nom
     *
     * @param string $nom
     * @return categories
     */
    public function setNom($nom)
    {
        $this->nom = $nom;

        return $this;
    }

    /**
     * Get nom
     *
     * @return string 
     */
    public function getNom()
    {
        return $this->nom;
    }
    
    /**
     * Get dateAjout
     *
     * @return \DateTime 
     */
    public function getDateAjout()
    {
        return $this->dateAjout;
    }

    /**
     * Set status
     *
     * @param integer $status
     * @return categories
     */
    public function setStatus($status)
    {
        $this->status = $status;

        return $this;
    }

    /**
     * Get status
     *
     * @return integer 
     */
    public function getStatus()
    {
        return $this->status;
    }


    public function addSousCat(sousCat $sousCats)
    {
        $this->sousCats[] = $sousCats;

        return $this;
    }

    public function removeSousCat(sousCat $sousCats)
    {
        $this->sousCats->removeElement($sousCats);
    }


    public function getSousCats()
    {
        return $this->sousCats;
    }
}
