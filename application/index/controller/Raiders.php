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

     public $table= 'kvideo';

    //装修攻略 首页
    public function index(){
        $zhi = Db::name('zhi_jian')->field('id,img,title')->order('id desc')->limit(10)->select();
        $cai =db('cai_cate')->select();
        //装修材料
        $ci_one = db('cai_list')->field('id,title,img,time')->where('cid',1)->order('id desc')->limit(8)->select();
        $ci_two = db('cai_list')->field('id,title,img,time')->where('cid',2)->order('id desc')->limit(8)->select();
        $ci_thr = db('cai_list')->field('id,title,img,time')->where('cid',3)->order('id desc')->limit(8)->select();
        $ci_four = db('cai_list')->field('id,title,img,time')->where('cid',4)->order('id desc')->limit(3)->select();
        $feng=db('feng_cate')->select();

        //常见问题分类
        $gong = db('que_list')->field('id,title')->where('qid',1)->order('id desc')->limit(8)->select();
        $gong_two = db('que_list')->field('id,title')->where('qid',2)->order('id desc')->limit(8)->select();
        $gong_thr = db('que_list')->field('id,title')->where('qid',3)->order('id desc')->limit(8)->select();
        $gong_four = db('que_list')->field('id,title')->where('qid',4)->order('id desc')->limit(8)->select();

        //风水分类
        $feng_hu =db('feng_list')->field('id,title,img,time')->where('fid',1)->order('id desc')->limit(8)->select();
        $feng_kong = db('feng_list')->field('id,title,img,time')->where('fid',2)->order('id desc')->limit(8)->select();
        $feng_style =  db('feng_list')->field('id,title,img,time')->where('fid',4)->order('id desc')->limit(8)->select();
        $feng_other = db('feng_list')->field('id,title,img,time')->where('fid',3)->order('id desc')->limit(3)->select();

        //装修哪些事
        $thing = Db::name('thing_list')->field('id,title,img,time')->order('id desc')->limit(5)->select();
        //爱家
        $love = Db::name('love_list')->field('id,title,time')->order('id desc')->limit(8)->select();
        $this->assign('thing',$thing);
        $this->assign('love',$love);
         //材料
        $this->assign('ci_one',$ci_one);
        $this->assign('ci_two',$ci_two);
        $this->assign('ci_thr',$ci_thr);
        $this->assign('ci_four',$ci_four);

        $this->assign('feng_hu',$feng_hu);
        $this->assign('feng_kong',$feng_kong);
        $this->assign('feng_style',$feng_style);
        $this->assign('feng_other',$feng_other);

        $this->assign('gong',$gong);
        $this->assign('gong_two',$gong_two);
        $this->assign('gong_thr',$gong_thr);
        $this->assign('gong_four',$gong_four);

        $this->assign('cai',$cai);
        $this->assign('feng',$feng);
        $this->assign('zhi',$zhi);
        return  $this->fetch();
    }

    //空间榜样视屏
    public function lists(){
        $re =$this->remen();
        $list  = Db::name($this->table)->field('id,title,img,infos,time')->select();
        $this->assign('list',$list);
        $this->assign('re',$re);
        return $this->fetch();
    }

    //空间榜样视屏详情
    public function detail(){
        $re =$this->remen();
        $know = $this->know();
        $id = input('get.id');
        $res = Db::name($this->table)->where('id',$id)->find();
        $this->assign('res',$res);
        $this->assign('know',$know);
        $this->assign('re',$re);
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
        $know=$this->know();
        $this->assign('know',$know);
        $this->assign('info',$info);
        return $this->fetch();
    }


}