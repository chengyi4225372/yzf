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

}
