<?php

namespace coreBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {

        return $this->render(
            'coreBundle:welcomePage:index.html.twig',
            [
                'data'  => $this->getCategories()
            ]
        );

    }

    function getCategories()
    {
        $categorie = $this->getDoctrine()->getRepository('coreBundle:categories');

        $categories = $categorie->findBy(['status'=>'1']);
        return $categories;
        //$em = $this->getDoctrine()->getManager();

    }
}
