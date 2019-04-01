<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/4/1
 * Time: 9:42
 */

/* 投诉建议 控制器*/

namespace app\index\controller;

use think\Db;
use app\index\controller\Common;
class Decoration extends Common {

    //投诉建议
    public function index() {
        return $this->view->fetch();
    }


}