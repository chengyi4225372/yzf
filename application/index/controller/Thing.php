<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/21 0021
 * Time: 23:17
 */
//装修那些事 没事懂师傅
namespace app\index\controller;
use think\Db;
use app\index\controller\Common;

class Thing extends Common
{
    public function index(){
        return $this->fetch();
    }
}