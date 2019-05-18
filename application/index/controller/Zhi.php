<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/18
 * Time: 14:49
 */

//指尖装修控制器
namespace  app\index\controller;

use think\Db;
use app\index\controller\Common;

class Zhi extends Common{

    public  function index(){
        return $this->view->fetch();
    }

}