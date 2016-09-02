<?php

namespace adminBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class adminAreaController extends Controller
{
    public  function indexAction(){
        return $this->render('@admin/adminArea/index.html.twig');
    }
}
