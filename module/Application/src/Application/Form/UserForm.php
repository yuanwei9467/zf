<?php
/**
 * Created by yuanw.
 * User: yuanw
 * Date: 14-6-4
 * Time: 下午4:28
 */
namespace Application\Form;

//use Zend\Form\Fieldset;
use Zend\InputFilter\InputFilter;
//use Zend\Validator;
use Zend\InputFilter\Factory;
use Zend\InputFilter\Input;
class UserForm {

    public function validate($data){
        $factory = new Factory();
        $inputFileter = $factory->createInputFilter(
            array(
                'username'=>array(
                    'name' => 'username',
                    'required' => true,
                    'validators' =>array(
                        array(
                            'name'=>'not_empty',
                        ),
                        array(
                            'name'=>'string_length',
                            'options'=>array(
                                'min'=>3
                            )
                        )
                    )
                ),
                'email' => array(
                    'name' => 'email',
                    'required' => true,
                    'validators' => array(
                        new \Zend\Validator\EmailAddress()
                    )

                ),
                'password' => array(
                    'name' => 'password',
                    'required' => true,
                    'validators' => array(
                        new \Zend\Validator\StringLength(array('min'=>6,'max'=>12))
                    )
                )
            )
        );

        $inputFileter->setData($data);
        if(!$inputFileter->isValid()){
            return $inputFileter->getMessages();
        }
    }
}