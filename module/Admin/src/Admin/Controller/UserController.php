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
        $adapter = \Zend\Db\TableGateway\Feature\GlobalAdapterFeature::getStaticAdapter();
        $userTable = new \Admin\Model\User('users',$adapter);
        $rowSet = $userTable->select(where(array('id'=>1)));
        print_r($rowSet);
    }
}