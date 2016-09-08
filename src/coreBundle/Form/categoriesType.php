<?php

namespace coreBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class categoriesType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('nom','Symfony\Component\Form\Extension\Core\Type\TextType',['attr'=>['class'=>'form-control']])
             
            ->add(
                'status',
                'Symfony\Component\Form\Extension\Core\Type\ChoiceType',
                [
                    'choices'=>
                        [
                            '0'=>'Désactiver',
                            '1'=>'Activer'
                        ],
                    'attr'=>['class'=>'form-control']
                ]
            )
        ;
    }
    
    /**
     * @param OptionsResolver $resolver
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'coreBundle\Entity\categories'
        ));
    }
}
