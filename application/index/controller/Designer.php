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
        //todo 搜索没有制作 案例总数
        $h_id = input('get.hid');
        if(!empty($h_id)){
            $list = Db::name('designer')
                ->field('id,img,job_year,rongyu,names,h_id,s_id,j_id')
                ->where('h_id',$h_id)
                ->select();
        }else{
            $list = Db::name('designer')
                ->field('id,img,job_year,rongyu,names,h_id,s_id,j_id')
                ->select();
        }




        $this->assign('list',$list);
        return  $this->fetch();
    }

    //设计师详情页
    public function detail(){
        //todo 案例总数
        $id = input('get.id');
        $list = Db::name('designer')->field('id,img,job_year,rongyu,names')->limit(4)->select();
        $res= Db::name('designer')->where('id',$id)->find();
        $this->assign('res',$res);
        $this->assign('list',$list);
        return $this->fetch();
    }



}