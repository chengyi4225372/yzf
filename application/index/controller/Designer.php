<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/3/30
 * Time: 17:31
 */
  /** 设计师控制器 */

namespace  app\index\controller;

use think\Db;
use app\index\controller\Common;

class Designer extends Common {

    //设计师 列表页
    public function index(){
        //搜索完成 排序完成
        $h_id = input('get.hid');
        $s_id = input('get.sid');
        $j_id = input('get.jid');
        //分页
        $page = input('get.PageIndex');
        $size = '16';
        $count = Db::name('designer')->count();
        $pages = $count/$size;
        //排序
        $order = input('get.orderby');
        if($order !=''){
            //工龄
            $list = Db::name('designer')
                    ->field('id,img,job_year,rongyu,names,h_id,s_id,j_id')
                    ->order('job_year desc')
                    ->page($page,$size)
                    ->select();
        }else{
            //人气
            if(!empty($h_id) && empty($s_id) && empty($j_id)) {
                 $list = Db::name('designer')
                    ->field('id,img,job_year,rongyu,names,h_id,s_id,j_id')
                    ->whereLike('h_id','%'.$h_id.'%')
                     ->order('id desc')
                    ->page($page,$size)
                    ->select();
            }else if(!empty($s_id) && empty($h_id) && empty($j_id)){
                $list = Db::name('designer')
                    ->field('id,img,job_year,rongyu,names,h_id,s_id,j_id')
                    ->whereLike('s_id','%'.$s_id.'%')
                    ->order('id desc')
                    ->page($page,$size)
                    ->select();
            }else if(!empty($j_id) && empty($s_id) && empty($h_id)){
                $list = Db::name('designer')
                    ->field('id,img,job_year,rongyu,names,h_id,s_id,j_id')
                    ->where('j_id',$j_id)
                    ->order('id desc')
                    ->page($page,$size)
                    ->select();
            }else if(!empty($h_id) && !empty($s_id) && empty($j_id)){
                $list = Db::name('designer')
                    ->field('id,img,job_year,rongyu,names,h_id,s_id,j_id')
                    ->where('h_id','like','%'.$h_id.'%')
                    ->where('s_id','like','%'.$s_id.'%')
                    ->order('id desc')
                    ->page($page,$size)
                    ->select();
            }else if(!empty($h_id) && !empty($s_id) && !empty($j_id)){
                $list = Db::name('designer')
                    ->field('id,img,job_year,rongyu,names,h_id,s_id,j_id')
                    ->where('h_id','like','%'.$h_id.'%')
                    ->where('s_id','like','%'.$s_id.'%')
                    ->where('j_id',$j_id)
                    ->order('id desc')
                    ->page($page,$size)
                    ->select();
            }else{
                 $list = Db::name('designer')
                          ->field('id,img,job_year,rongyu,names,h_id,s_id,j_id')
                          ->order('id desc')
                          ->page($page,$size)
                          ->select();
            }
        }

        foreach($list as $k =>$val){
            $list[$k]['count'] = Db::name('lou_anli')->where('she_id',$list[$k]['id'])->count();
            $list[$k]['jtitle'] = Db::name('jibie')->where('id',$list[$k]['j_id'])->value('title');
        }
        $this->assign('list',$list);
        $this->assign('pages',$pages);
        return  $this->fetch();

    }

    //设计师详情页
    public function detail(){
        //todo 案例总数
        $id = input('get.id');
        $page = input('get.PageIndex');
        $size ='1';
         //推荐四名 同类型
        $list = Db::name('designer')->field('id,img,job_year,rongyu,names')->limit(4)->select();
        //查询设计师信息
        $res= Db::name('designer')->where('id',$id)->find();
        //设计师关联 案例
        $count = Db::name('lou_anli')->where('she_id',$id)->count();
        $pages = $count/$size;
        $anlist = Db::name('lou_anli')
                           ->alias('a')
                           ->field('a.*,b.img as bimg,c.title as ctitle,d.title as dtitle')
                           ->rightJoin('designer b','b.id = a.she_id')
                           ->rightJoin('remen_lou c','c.id = a.re_id')
                           ->rightJoin('style d','d.id = a.s_id')
                           ->where('a.she_id',$id)
                           ->page($page,$size)
                           ->select();
//        dump($anlist);
//        exit();
        $this->assign('res',$res);
        $this->assign('list',$list);
        $this->assign('anlist',$anlist);
        $this->assign('pages',$pages);
        return $this->fetch();
    }



}