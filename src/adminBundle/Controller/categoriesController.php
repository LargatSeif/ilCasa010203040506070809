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

        return $this->render('@admin/adminArea/catManagement.html.twig',['data' => $this->getCategories()]);
    }
    public function addAction(){
        $cat = new categories();
        $form = $this->createCatForm($cat);
        return $this->render('@admin/adminArea/addCat.html.twig',['form'=>$form->createView()]);
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

    /*private function deleteCategorie(){
        return $this->render('@admin/adminArea/addCat.html.twig');
    }*/

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
