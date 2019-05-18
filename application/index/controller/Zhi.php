<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/18
 * Time: 14:49
 */

//指尖装修控制器
namespace  app\index\controller;

use think\Db;
use app\index\controller\Common;

class Zhi extends Common{
    public $table = 'zhi_jian';


    public  function index(){
        $zhi = Db::name($this->table)->paginate(6);
        $re = $this->remen();
        $this->assign('zhi',$zhi);
        $this->assign('re',$re);
        return $this->fetch();
    }

    //todo 详情页 url 视频地址未完成
    public function detail(){
        $id = input('get.id');
        $detail = Db::name($this->table)->where('id',$id)->find();
        $re = $this->remen();
        $know = $this->know();
        $this->assign('know',$know);
        $this->assign('re',$re);
        $this->assign('detail',$detail);
        return $this->fetch();
    }




}