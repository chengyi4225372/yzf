<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/4/1
 * Time: 14:36
 */

/* 工地 控制器   */
namespace  app\index\controller;
use think\Db;
use app\index\controller\Common;

class Site extends Common
{
   //工地首页
   public function index(){
       return $this->fetch();
   }
}