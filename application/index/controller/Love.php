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

    public $table ='love_list';

    public function index(){

        $count = Db::name($this->table)->count();
        $list = Db::name($this->table)->field('id,title,img,desc,time')->order('id desc')->paginate(10);
        $re = $this->remen();
        $know =$this->know();
        $this->assign('list',$list);
        $this->assign('count',$count);
        $this->assign('re',$re);
        $this->assign('know',$know);
        return $this->fetch();
    }

    public function detail(){
        $id= input('get.id');
        $res= Db::name($this->table)->where('id',$id)->find();
        $re = $this->remen();
        $know =$this->know();
        $this->assign('res',$res);
        $this->assign('re',$re);
        $this->assign('know',$know);
        return $this->fetch();
    }
}