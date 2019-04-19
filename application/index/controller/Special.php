<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/3/30
 * Time: 16:45
 */

  /**
   * 服务模式 控制器
   */

namespace app\index\controller;

use think\Db;
use app\index\controller\Common;
class Special extends Common {

    //别墅
    public function index() {
        return $this->view->fetch();
    }

    //私人定制
    public function privates(){
        return $this->view->fetch();
    }

    //整装优势
    public function heart(){
        return $this->fetch();
    }


    //蓝钻工程
    public function blue(){
        return $this->fetch();
    }

    //三重保护
    public function ep(){
        return $this->fetch();
    }

    //武灵靠谱承诺
    public function fivezero(){
        return $this->fetch();
    }
}
