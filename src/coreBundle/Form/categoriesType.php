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
            ->add('nom')
             
            ->add(
                'status',
                'Symfony\Component\Form\Extension\Core\Type\ChoiceType',
                [
                    'choices'=>
                        [
                            '0'=>'desactiver',
                            '1'=>'activer'
                        ],
                    'expanded' => true
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
