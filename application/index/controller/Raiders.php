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

    //装修头条列表
    public function zlist(){
        $id = input('get.id');
        $page = input('get.PageIndex');
        $order = input('get.order');
        $size = 10;
        $count = Db::name('z_news')->where('nid',$id)->count();
        $pages = $count/$size;
        if($order ='time'){
            $infos = Db::name('z_news')->where('nid',$id)->order('time desc')->page($page,$size)->select();
        }else{
            $infos = Db::name('z_news')->where('nid',$id)->order('liulan desc')->page($page,$size)->select();
        }
        //热门文章
        $re= $this->remen();
        $this->assign('re',$re);
        $this->assign('infos',$infos);
        $this->assign('pages',$pages);
        return $this->fetch();
    }

    //装修头条详情
    public function z_detail(){
        $id = input('id');
        $info = Db::name('z_news')->where('id',$id)->find();
        //热门文章
        $re= $this->remen();
        $this->assign('re',$re);
        $this->assign('info',$info);
        return $this->fetch();
    }

    //装修自媒体
    public function media(){
        $mid = input('get.mid');
        $list  = Db::name('media_list')->where('mid',$mid)->select();
        $this->assign('list',$list);
        return  $this->fetch();
    }

    public function media_detail(){
        return $this->fetch();
    }


}