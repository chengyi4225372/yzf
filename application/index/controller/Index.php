<?php

 /*
  * 首页 控制器
  */
namespace app\index\controller;

use think\Db;
use app\index\controller\Common;
class Index extends Common {

    //首页
    public function index() {
        //首页轮播图
        $banner =Db::name('banner')->where('status',1)->order('id asc')->select();
        //本周人气设计师
        $designer =Db::name('designer')->where('huo',1)->select();
        //装修案例 推荐列表
        $zhuangxiu = Db::name('lou_anli')
                         ->alias('a')
                         ->field('a.*,b.title as btitle,h.title as htitle,s.title as stitle,d.img as dimg')
                         ->rightJoin('remen_lou b','b.id =a.re_id')
                         ->rightJoin('huxing h','h.id =a.h_id')
                         ->rightJoin('style s','s.id =a.s_id')
                         ->rightJoin('designer d','d.id =a.she_id')
                         ->where('a.tuijian',1)
                         ->select();
       //看工地
      $gongdi =DB::name('lou_gongdi')
                       ->alias('a')
                       ->field('a.*,r.title as rtitle,h.title as htitle')
                       ->rightJoin('remen_lou r','r.id = a.re_id')
                       ->rightJoin('huxing h','h.id = a.h_id')
                       ->where('a.tuijian',1)
                       ->select();
      foreach ($gongdi as $k =>$val ){
          $gongdi[$k]['q_img'] = $gongdi[$k]['q_img']?explode('|', $gongdi[$k]['q_img']):'';
          $gongdi[$k]['z_img'] = $gongdi[$k]['z_img']?explode('|', $gongdi[$k]['z_img']):'';
          $gongdi[$k]['h_img'] = $gongdi[$k]['h_img']?explode('|', $gongdi[$k]['h_img']):'';
      }
      //找灵感 案例图
      $lingan = Db::name('lou_anli')->alias('a')
                    ->field('a.*,b.title')
                    ->rightJoin('style b','b.id=a.s_id')
                    ->where('a.tuijian',1)
                    ->limit(5)->select();
     //企业新闻
      $new =Db::name('new')->select();
      //业主感言
      $thank = Db::name('thank')->field('id,img,title,jian')->where('tuijian',1)->order('id desc')->limit(3)->select();
     //装修攻略
     $media = Db::name('media_cate')->field('id,title')->select();
     $know = Db::name('know_cate')->field('id,title')->select();
     $cai = Db::name('cai_cate')->field('id,title')->select();
     $feng = Db::name('feng_cate')->field('id,title')->select();
     $que = Db::name('que_cate')->field('id,title')->select();
     //装修攻略分类 列表
     $cailist = Db::name('cai_list')->field('id,cid,title')->select();
     $knowlist = Db::name('know_list')->field('id,kid,title')->select();
     $fenglist = Db::name('feng_list')->field('id,fid,title')->select();

     //指尖
     $zhi  = Db::name('zhi_jian')->field('id,title,time')->select();
     $this->assign('zhi',$zhi);

     $this->assign('cailist',$cailist);
     $this->assign('knowlist',$knowlist);
     $this->assign('fenglist',$fenglist);

      $this->assign('media',$media);
      $this->assign('know',$know);
      $this->assign('cai',$cai);
      $this->assign('feng',$feng);
      $this->assign('que',$que);

      $this->assign('lingan',$lingan);
      $this->assign('thank',$thank);
      $this->assign('designer',$designer);
      $this->assign('zhuangxiu',$zhuangxiu);
      $this->assign('gongdi',$gongdi);
      $this->assign('new',$new);
      $this->assign('banner',$banner);
      return $this->view->fetch();
    }


}
