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
    /*
    public function loginAction(Request $request){
        $adminUser = new adminUsers();
        $form = $this->get('form.factory')->create( new adminUsersType(),$adminUser );
        if($request->isMethod('POST') ){

            $form ->handleRequest($request);
            $adminUser = $form->getData();
            //var_dump($data);die;
            $em = $this->getDoctrine()->getManager();
            $loggedUser = $em->getRepository('adminBundle:adminUsers')->findOneBy(['username'=>$adminUser->getUsername(),'password'=>$adminUser->getPassword()]);
            if(!empty($loggedUser) ){
                return $this->redirectToRoute("admin_area");
            }


        }

    }
*/
    /**
     * CreateLoginForm function
     * @return \Symfony\Component\Form\Form|\Symfony\Component\Form\FormInterface
     */
    public function createLoginForm(){
        $form = $this->createForm('adminBundle\Form\adminUsersType');
        return $form;
    }
}
