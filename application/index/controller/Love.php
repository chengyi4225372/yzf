<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/21
 * Time: 17:26
 */

//爱家控制器
namespace app\index\controller;
use think\Db;
use app\index\controller\Common;

class Love extends Common
{
   public function index(){
       return $this->fetch();
   }
}