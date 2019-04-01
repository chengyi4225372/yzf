<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/3/30
 * Time: 17:42
 */
/* todo 服务保障控制器  */

namespace app\index\controller;

use think\Db;
use app\index\controller\Common;

class Sale extends Common {


    //服务保障首页
    public function index(){
        return $this->view->fetch();
    }

}