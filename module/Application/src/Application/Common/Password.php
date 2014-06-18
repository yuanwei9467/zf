<?php
/**
 * Created by yuanw.
 * User: yuanw
 * Date: 14-6-18
 * Time: 下午4:02
 */

namespace Application\Common;

class Password{
    const SLAT = '%%%&&!!!';
    private $password = null;

    public function __construct($password){
       $this->password = md5($password.self::SLAT);
    }

    public function __toString(){
        return $this->password;
    }

}