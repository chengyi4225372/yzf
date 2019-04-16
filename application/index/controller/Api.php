<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/4/16
 * Time: 16:07
 */
namespace  app\index\controller;

use think\Db;
use app\index\controller\Common;

class Api extends  Common
{
    //api 表单控制器
    public function sendmail(){
       $data = input('post.');
       dump($data);
       exit();
    }
}