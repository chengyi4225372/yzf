<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/3/30
 * Time: 17:55
 */

/* 关于公司 控制器  */

namespace  app\index\controller;

use think\Db;
use app\index\controller\Common;

class About extends Common{

    //关于或者了解公司首页
    public  function index(){
        return $this->view->fetch();
    }

}