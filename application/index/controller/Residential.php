<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/3/30
 * Time: 17:18
 */

/**
 * 装修案例控制器
 */

namespace  app\index\controller;
use think\Db;
use app\index\controller\Common;

class Residential extends Common{

    //装修案例列表
    public function index(){
        return $this->view->fetch();
    }

    //案例地区
    public function areaid(){
        return $this->fetch();
    }

    //案例风格
    public  function styleid(){
        return $this->fetch();
    }

    //案例户型
    public function roomid(){
        return $this->fetch();
    }

    //案例面积
    public function squaresid(){
        return $this->fetch();
    }

    //热门小区
    public function popular(){
        return $this->fetch();
    }

}