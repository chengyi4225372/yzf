<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/4/1
 * Time: 14:05
 */

/*  装修攻略控制器  */

namespace app\index\controller;

use think\Db;
use app\index\controller\Common;

class Raiders extends Common {

    //装修攻略 首页
    public function index(){
        return  $this->fetch();
    }

    //空间榜样视屏
    public function lists(){
        return $this->fetch();
    }

    //空间榜样视屏详情
    public function detail(){
        return $this->fetch();
    }

    //装修报价
    public function sp(){
        return $this->fetch();
    }

}