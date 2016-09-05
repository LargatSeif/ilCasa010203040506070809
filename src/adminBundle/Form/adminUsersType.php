<?php

namespace adminBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class adminUsersType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add(
                'username',
                'Symfony\Component\Form\Extension\Core\Type\ChoiceType',
                [
                    'choices' =>
                        [
                            'Choisissez votre login'    =>'',
                            'Super-Admin'               => 'Super-Admin',
                            'Modérateur'                => 'Modérateur',
                            'Anonymous'                 => 'Anonymous',
                        ],
                    
                    'attr'=>
                        [
                            'class'=>'form-control'
                        ],
                    'label'=> false,
                    'required'=>true,
                    'choices_as_values'=>true
                ]
            )
            ->add(
                'password',
                'Symfony\Component\Form\Extension\Core\Type\PasswordType',
                [
                    'attr'=>
                        [
                            'class'=>'form-control',
                            'placeholder'=>'Mot de passe svp '
                        ],
                    'label'=> false
                ]
            )
            ->add(
                'submit',
                'Symfony\Component\Form\Extension\Core\Type\SubmitType',
                [
                    'attr'=>
                        [
                            'class'=>'btn btn-primary btn-block btn-flat'
                        ],
                    'label'=> 'Se connecter'
                ]
            )
            //->add('email')

        ;
    }
    
    /**
     * @param OptionsResolver $resolver
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'adminBundle\Entity\adminUsers'
        ));
    }
}
