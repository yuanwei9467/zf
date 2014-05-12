<?php
/**
 * Created by yuanw.
 * User: yuanw
 * Date: 14-5-12
 * Time: 下午5:21
 */

namespace Admin\Controller;
use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;

class IndexController extends AbstractActionController{
    public function indexAction(){

        return new ViewModel();
    }
}