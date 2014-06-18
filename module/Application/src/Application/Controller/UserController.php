<?php
/**
 * Created by yuanw.
 * User: yuanw
 * Date: 14-5-15
 * Time: 上午9:27
 */

namespace Application\Controller;
use Zend\View\Model\ViewModel;


class UserController extends \Zend\Mvc\Controller\AbstractActionController{
    protected $adapter;
    public function regAction(){
        if($this->getRequest()->isPost()){
            $form = new \Application\Form\UserForm();
            $data = $this->getRequest()->getPost();
            $table = new \Application\Model\User('users',$this->getAdapter());

            $data = $data->toArray();
            $data['password'] = new \Application\Common\Password($data['password'])
            unset($data['repassword']);
            $table->insert($data);

        }else{
            return new ViewModel();
        }

    }
    public function indexAction(){

        return new ViewModel();
    }
    public function getAdapter(){
        $sm = $this->getServiceLocator();
        $this->adapter = $sm->get('Zend\Db\Adapter\Adapter');
        return $this->adapter;

    }
}