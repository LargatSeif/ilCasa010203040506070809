<?php

namespace coreBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;

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

    public function categorieAction($categorie){
        $em = $this->getDoctrine()->getManager()->getRepository('coreBundle:categories');
        $data = $em->findOneBy(['nom'=>$categorie ,'status'=>1]);
        $em = $this->getDoctrine()->getManager()->getRepository('coreBundle:sousCat');
        $sc = $em->findBy(['categorie'=>$data,'status'=>1]);
        if( !is_null($data) && $data->getStatus() == 1 ){

            return $this->render('coreBundle:categories:index.html.twig',
                [
                    'data'=>$this->getCategories(),
                    'categorie'=> $data,
                    'sc'=> $sc
                ]);
        }
        else{
            $this->addFlash('','No result found');
            return $this->redirectToRoute('core_homepage');

        }

        //return new Response($e);
    }
    
    public function sousCategoriesAction($categorie , $sousCategorie){

        $em = $this->getDoctrine()->getManager()->getRepository('coreBundle:categories');
        $objC = $em->findOneBy(['nom'=>$categorie ,'status'=>1]);
        $em = $this->getDoctrine()->getManager()->getRepository('coreBundle:sousCat');
        $objSC = $em->findOneBy(['nom'=>$sousCategorie ,'categorie'=>$objC ,'status'=>1]);

        if( is_null($objC)){
            return new Response('la categorie :<b>'.$categorie.'</b> n`existe pas !' );
        }elseif(is_null($objSC)){
            return new Response('la sous catégorie : <b>'.$sousCategorie.'</b> n`existe pas sous la catégorie : <b>'.$objC->getNom().'</b>!');
        }else{
            return $this->render('@core/subCategories/index.html.twig',['data'=>$this->getCategories()]);
        }
    }

    
    function getCategories()
    {
        $categorie = $this->getDoctrine()->getRepository('coreBundle:categories');

        $categories = $categorie->findBy(['status'=>'1']);
        return $categories;
        //$em = $this->getDoctrine()->getManager();

    }
}
