<?php

 /*
  * 首页 控制器
  */
namespace app\index\controller;

use think\Db;
use app\index\controller\Common;
class Index extends Common {

    //首页
    public function index() {
      return $this->view->fetch();
    }

}
