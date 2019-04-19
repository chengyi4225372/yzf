<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/4/18
 * Time: 13:45
 */
namespace  app\mobile\controller;

use think\Db;
use app\index\controller\Common;

class Index extends Common{
    //手机端 首页
    public function index(){
       return  $this->fetch();
    }

}