<?php
/**
 * Created by yuanw.
 * User: yuanw
 * Date: 14-5-13
 * Time: 下午1:09
 */

namespace Admin\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\Db\TableGateway\TableGateway;
use Zend\Db\Adapter\Adapter;



class UserController extends AbstractActionController{
    /**
     *
     */

    public function indexAction(){
        $sm = $this->getServiceLocator();
        $adapter = $sm->get('Zend\Db\Adapter\Adapter');
        $userTable = new \Admin\Model\User('users',$adapter);
        $rowSet = $userTable->select(array('id'=>1));
        //print_r($rowSet);
    }
}