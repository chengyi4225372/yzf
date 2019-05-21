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
     public $zhi = 'zhijian';

    //装修攻略 首页
    public function index(){
        $zhi = Db::name('zhi_jian')->field('id,img,title')->select();
        $cai =db('cai_cate')->select();
        //瓷砖
        $ci_one = db('cai_list')->where('cid',1)->select();
        $ci_two = db('cai_list')->where('cid',2)->select();
        $ci_thr = db('cai_list')->where('cid',3)->select();
        $ci_four = db('cai_list')->where('cid',4)->select();

        $feng=db('feng_cate')->select();
        $this->assign('cai',$cai);
        $this->assign('feng',$feng);
        $this->assign('zhi',$zhi);
        return  $this->fetch();
    }

    //空间榜样视屏 todo
    public function lists(){
        return $this->fetch();
    }

    //空间榜样视屏详情 todo
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


}