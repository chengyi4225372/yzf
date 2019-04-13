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
      //找灵感

     //企业新闻
      $new =Db::name('new')->select();

      $this->assign('designer',$designer);
      $this->assign('zhuangxiu',$zhuangxiu);
      $this->assign('gongdi',$gongdi);
      $this->assign('new',$new);
      return $this->view->fetch();
    }


}
