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
        $cates = db('media_cate')->select();
        $this->assign('cates',$cates);
        $mid = input('get.mid');
        if(empty($mid)){
            $list = db('media_list')->order('time desc,id desc')->paginate(10);
        }else{
            $list = db('media_list')->where('mid',$mid)->order('time desc,id desc')->paginate(10);
        }
        $re =$this->remen();
        $know =$this->know();
        $this->assign('re',$re);
        $this->assign('know',$know);
        $this->assign('list',$list);
        return $this->fetch();
    }

    public function mdetail(){
        $id = input('get.id');
        $res = db('media_list')->where('id',$id)->find();
        $re =$this->remen();
        $know =$this->know();
        $this->assign('re',$re);
        $this->assign('know',$know);
        $this->assign('res',$res);
        return $this->fetch();
    }

    //知识
    public function knows(){
        $cates = db('know_cate')->select();
        $this->assign('cates',$cates);
        $kid = input('get.kid');
        if(empty($kid)){
            $list = db('know_list')->order('time desc,id desc')->paginate(10);
        }else{
            $list = db('know_list')->where('kid',$kid)->order('time desc,id desc')->paginate(10);
        }
        $re =$this->remen();
        $know =$this->know();
        $this->assign('re',$re);
        $this->assign('know',$know);
        $this->assign('list',$list);
        return $this->fetch();
    }

    public function kdetail(){
        $id = input('get.id');
        $res = db('know_list')->where('id',$id)->find();
        $re =$this->remen();
        $know =$this->know();
        $this->assign('re',$re);
        $this->assign('know',$know);
        $this->assign('res',$res);
        return $this->fetch();
    }




    //装修 材料
    public function cai(){
        $cates = db('cai_cate')->select();
        $this->assign('cates',$cates);
        $cid = input('get.cid');
        if(empty($cid)){
            $list = db('cai_list')->order('time desc,id desc')->paginate(10);
        }else{
            $list = db('cai_list')->where('cid',$cid)->order('time desc,id desc')->paginate(10);
        }
        $re =$this->remen();
        $know =$this->know();
        $this->assign('re',$re);
        $this->assign('know',$know);
        $this->assign('list',$list);
        return $this->fetch();
    }

    public function cdetail(){
        $id = input('get.id');
        $res = db('cai_list')->where('id',$id)->find();
        $re =$this->remen();
        $know =$this->know();
        $this->assign('re',$re);
        $this->assign('know',$know);
        $this->assign('res',$res);
        return $this->fetch();
    }

    //风水
    public function feng(){
        $cates = db('feng_cate')->select();
        $this->assign('cates',$cates);
        $fid = input('get.fid');
        if(empty($fid)){
            $list = db('feng_list')->order('time desc,id desc')->paginate(10);
        }else{
            $list = db('feng_list')->where('fid',$fid)->order('time desc,id desc')->paginate(10);
        }
        $re =$this->remen();
        $know =$this->know();
        $this->assign('re',$re);
        $this->assign('know',$know);
        $this->assign('list',$list);
        return $this->fetch();
    }

    public function fdetail(){
        $id = input('get.id');
        $res = db('feng_list')->where('id',$id)->find();
        $re =$this->remen();
        $know =$this->know();
        $this->assign('re',$re);
        $this->assign('know',$know);
        $this->assign('res',$res);
        return $this->fetch();
    }



    //常见问题
    public function que(){
        $cates = db('que_cate')->select();
        $this->assign('cates',$cates);
        $qid = input('get.qid');
        if(empty($qid)){
            $list = db('que_list')->order('time desc,id desc')->paginate(10);
        }else{
            $list = db('que_list')->where('qid',$qid)->order('time desc,id desc')->paginate(10);
        }
        $re =$this->remen();
        $know =$this->know();
        $this->assign('re',$re);
        $this->assign('know',$know);
        $this->assign('list',$list);
        return $this->fetch();
    }

    public function qdetail(){
        $id = input('get.id');
        $res = db('que_list')->where('id',$id)->find();
        $re =$this->remen();
        $know =$this->know();
        $this->assign('re',$re);
        $this->assign('know',$know);
        $this->assign('res',$res);
        return $this->fetch();
    }
}