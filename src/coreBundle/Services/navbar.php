<?php
namespace coreBundle\Services;

use coreBundle\Services;
use Doctrine\ORM\EntityManager;



class navbar
{
    protected $em;

    public function __construct(EntityManager $em)
    {
        $this->em = $em;
    }

    public function getCategoriesData()
    {
        $categories = $this->em->getRepository('coreBundle:categories')->findBy(['status'=>'1']);
        foreach ($categories as $key => $item){
            $categories[$key]->setNom($this->encodeUrl($item->getNom()) );
            foreach ($categories[$key]->getSousCats() as $key1 => $item1){
                $categories[$key]->getSousCats()[$key1]->setNom($this->encodeUrl($item1->getNom()));
            }
        }
        return $categories;
    }

    function decodeUrl($var){
        return str_replace('_', ' ', $var);
    }
    function encodeUrl($var){
        return str_replace(' ', '_', $var);
    }
}