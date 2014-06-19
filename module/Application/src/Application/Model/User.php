<?php
/**
 * Created by yuanw.
 * User: yuanw
 * Date: 14-6-18
 * Time: 下午2:09
 */

namespace Application\Model;
use Zend\InputFilter\InputFilter;
use Zend\InputFilter\Factory;
use Zend\InputFilter\Input;

class User extends \Zend\Db\TableGateway\TableGateway{
    protected $errorMessage = null;



    public function validations($data){
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
                        new \Zend\Validator\EmailAddress(),
                        //new \Zend\Validator\Db\NoRecordExists()
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
            $this->errorMessage = $inputFileter->getMessages();
            return false;

        }else{
            return true;
        }
    }

    public function getErrorMsg(){
        return $this->errorMessage;
    }
}