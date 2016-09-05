<?php

namespace adminBundle\Controller;

use coreBundle\Entity\categories;
use coreBundle\Form\categoriesType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class categoriesController extends Controller
{
    public function indexAction(){
        return $this->render('@admin/adminArea/catManagement.html.twig',['data' => $this->getCategories() ]);
    }
    public function addAction(){
        $cat = new categories();
        $form = $this->createCatForm($cat);
        return $this->render('@admin/adminArea/addCat.html.twig',['form'=>$form->createView()]);
    }
    public function createCatAction(Request $request){
        $object  = new categories();
        $em = $this->getDoctrine()->getManager();
        $form = $this->createForm(new categoriesType());
        if($request->isMethod('POST')){
            $form->handleRequest($request);
            if( $form->isValid() ){
                $em->persist($form);
                $em->flush();
                $this->addFlash('addAction','success');
            }
        }
        return $this->redirectToRoute('cat_add');
    }
    private function createCatForm(categories $type){
        $form = $this->createForm(new categoriesType(),$type,['action'=> $this->generateUrl('cat_create'),'method'=>'POST']);
        $form->add(
            'submit',
            'submit',
            [
                'label' => 'Valider',
                'attr'=>
                    [
                        'class'=>'btn btn-primary btn-sm  pull-right ',
                        'style'=>''
                    ]
            ]
        );
        return $form;
    }
    private function editCategorie(){
        return $this->render('@admin/adminArea/addCat.html.twig');
    }
    private function deleteCategorie(){
        return $this->render('@admin/adminArea/addCat.html.twig');
    }

    /**
     * @return array|\coreBundle\Entity\categories[]|null
     */
    private function getCategories(){
        $em = $this->getDoctrine()->getManager();
        $data = $em->getRepository('coreBundle:categories')->findAll();
        (count( $data )>0 )?$dataList = $data: $dataList = null;
        return $dataList;
    }
}
