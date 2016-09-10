<?php

namespace adminBundle\Controller;

use adminBundle\Entity\adminUsers;
use adminBundle\Form\adminUsersType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\HttpFoundation\Request;

class DefaultController extends Controller
{
    public function indexAction(){
        $f = $this->createLoginForm();
        return $this->render('adminBundle:Default:index.html.twig',['form'=>$f->createView()]);
    }
    /**
     * CreateLoginForm function
     * @return \Symfony\Component\Form\Form|\Symfony\Component\Form\FormInterface
     */
    public function createLoginForm(){
        $form = $this->createForm('adminBundle\Form\adminUsersType');
        return $form;
    }
}
