<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/3/30
 * Time: 17:31
 */
  /** 设计师控制器 */

namespace  app\index\controller;

use think\Db;
use app\index\controller\Common;

class Designer extends Common {

    //设计师 列表页
    public function index(){
        return  $this->fetch();
    }

    //设计师详情页
    public function detail(){
        return $this->fetch();
    }


}