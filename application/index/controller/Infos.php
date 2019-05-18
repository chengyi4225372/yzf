<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/18
 * Time: 17:47
 */
//装修所有详情 列表控制器
namespace app\index\controller;
use think\Db;
use app\index\controller\Common;

class Infos extends Common
{
    //自媒体
    public function media(){
        return $this->fetch();
    }

    public function media_detail(){
        return $this->fetch();
    }

}