<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/4/1
 * Time: 14:36
 */

/* 工地 控制器   */
namespace  app\index\controller;
use think\Db;
use app\index\controller\Common;

class Site extends Common
{
   //工地首页
   public function index(){
       $seachkey = input('get.searchKey');
       $list  =Db::name('lou_gongdi')
                        ->alias('a')
                        ->field('a.*,b.title as btitle,c.title as ctitle')
                        ->leftJoin('remen_lou b','b.id = a.re_id')
                        ->leftJoin('huxing c','c.id = a.h_id')
                        ->whereLike('b.title','%'.$seachkey.'%')
                        ->order('a.id desc')
                        ->paginate(10);
       //分页
       $page = $list->render();
      //对象转数组
       $list = $list->toArray();
       foreach ($list['data'] as $k =>$val){
           $list['data'][$k]['q_img'] = explode('|', $list['data'][$k]['q_img']);
           $list['data'][$k]['z_img'] = explode('|', $list['data'][$k]['z_img']);
           $list['data'][$k]['h_img'] = explode('|', $list['data'][$k]['h_img']);
       }
       $know =$this->know();
       $this->assign('know',$know);
       $this->assign('list',$list['data']);
       $this->assign('page',$page);
       return $this->fetch();
   }

   //工地详情
    public function detail(){
       $id= input('get.id');
       $info = Db::name('lou_gongdi')->where('id',$id)->find();
       $info['q_img'] = explode('|',$info['q_img']);
       $info['z_img'] = explode('|',$info['z_img']);
       $info['h_img'] = explode('|',$info['h_img']);
       //热门小区 id 转换标题
        $info['re_title'] = Db::name('remen_lou')->where('id',$info['re_id'])->value('title');
       //户型 id 转换 标题
        $info['hu'] = Db::name('huxing')->where('id',$info['h_id'])->value('title');
        $this->assign('info',$info);
       return $this->fetch();
    }
}