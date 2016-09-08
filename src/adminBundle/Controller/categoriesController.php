<?php

namespace adminBundle\Controller;

use coreBundle\Entity\categories;
use coreBundle\Form\categoriesType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Intl\Tests\Data\Provider\Json;


class categoriesController extends Controller
{
    public function indexAction(){
        $obj = new categories();

        return $this->render(
            '@admin/adminArea/catManagement.html.twig',
            ['data' => $this->getCategories(),'form'=>$this->createCatForm($obj)->createView()]
        );
    }

    public function createCatAction(Request $request){
        //$object  = new categories();
        $em = $this->getDoctrine()->getManager();
        $form = $this->createForm(new categoriesType());
        if($request->isMethod('POST')){
            $form->handleRequest($request);
            $object = $form->getData();
            $em->persist($object);
            $em->flush();
            $this->addFlash('addAction','success');
        }
        return $this->indexAction();
    }

    private function createCatForm(categories $type){
        $form = $this->createForm(new categoriesType(),$type,['action'=> $this->generateUrl('cat_create'),'method'=>'POST']);
        $form->add(
            'submit',
            'submit',
            [
                'label' => "Valider l'ajout",
                'attr'=>
                    [
                        'class'=>'btn btn-flat bg-maroon ',
                        'style'=>''
                    ]
            ]
        );
        return $form;
    }
    
    public function changeStatusAction($id){ 
        $em  = $this->getDoctrine()->getManager();
        $obj = $em->getRepository('coreBundle:categories')->findOneBy(['id'=>$id]);
        ($obj->getStatus()== 0 )?$obj->setStatus('1'):$obj->setStatus('0');
        $em->flush();
        return $this->indexAction();
    }
    
    public function createEditForm($id ,$em ,$action = '',$method = 'GET' ){
        $obj = $em->getRepository('coreBundle:categories')->findOneBy(['id'=>$id]);
        $form = $this->createForm(new categoriesType(),$obj,['action'=>$action,'method'=>$method]);
        return ['form'=>$form  ,'obj'=>$obj];
    }

    public function editCatAction($id){
        return ($this->createEditForm($id,$this->getDoctrine()->getManager()) );
    }

    public function editAction(Request $request ,$id){
        if($request->isMethod('POST')){
            $res = $request->request;
            $em  = $this->getDoctrine()->getManager();
            $newObject = $em->getRepository('coreBundle:categories')->findOneBy(['id'=>$id]);
            $newObject->setStatus($res->get('newStatus'));
            $newObject->setNom($res->get('newName'));
            $em->flush();
            return new JsonResponse(['update'=>'success']);
        }else{
            return new JsonResponse(['update'=>'error']);
        }

    }

    private function getCategories(){
        $em = $this->getDoctrine()->getManager();
        $data = $em->getRepository('coreBundle:categories')->findAll();
        (count( $data )>0 )?$dataList = $data: $dataList = null;
        return $dataList;
    }
}
