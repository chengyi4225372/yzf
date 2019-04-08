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
        //todo 搜索完成 排序完成
        $h_id = input('get.hid');
        $s_id = input('get.sid');
        $j_id = input('get.jid');
        if(!empty($h_id)) {
            $list = Db::query("select id,img,job_year,rongyu,names,h_id,s_id,j_id from designer where find_in_set('$h_id',h_id); ");
        }else if(!empty($h_id)&& !empty($s_id)){
            $list = Db::query("select id,img,job_year,rongyu,names,h_id,s_id,j_id from designer where find_in_set('$h_id',h_id)  and find_in_set('$s_id',s_id)");
        }else if(!empty($h_id)&& !empty($s_id)&& !empty($j_id)){
            $list = Db::query("select id,img,job_year,rongyu,names,h_id,s_id,j_id from designer where find_in_set('$h_id',h_id) and find_in_set('$s_id',s_id) and j_id = '$j_id'");
        }else if(empty($h_id)&& empty($s_id)){
            $list = Db::query("select id,img,job_year,rongyu,names,h_id,s_id,j_id from designer where  j_id = '$j_id'");
        }else if(empty($h_id)&& empty($j_id)){
            $list = Db::query("select id,img,job_year,rongyu,names,h_id,s_id,j_id from designer where  find_in_set('$s_id',s_id)");
        }else {
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