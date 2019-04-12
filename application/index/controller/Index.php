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
        //本周人气设计师
        $designer =Db::name('designer')->where('huo',1)->select();

      $this->assign('designer',$designer);
      return $this->view->fetch();
    }


}
