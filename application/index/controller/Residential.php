<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/3/30
 * Time: 17:18
 */

/**
 * 装修案例控制器
 */

namespace  app\index\controller;
use think\Db;
use app\index\controller\Common;

class Residential extends Common{

    //装修案例列表
    public function index(){
        return $this->view->fetch();
    }

    /*
     案例地区 rid
     案例风格 sid
     案例户型 hid
     案例面积 mid
   */
    public function areaid(){
       //搜索
        $key = input('get.residential');
        $r_id = input('get.rid');
        $s_id = input('get.sid');
        $h_id = input('get.hid');
        $m_id = input('get.mid');
        if(!empty($r_id) && (empty($h_id) && empty($s_id) && empty($m_id))){
            $list = Db::name('lou_anli')
                ->alias('a')
                ->field('a.*,b.img as bimg,b.names,c.title as ctitle,s.title as stitle ,h.title as htitle')
                ->join('designer b','b.id = a.she_id')
                ->join('remen_lou c','c.id = a.re_id')
                ->join('style s','s.id =a.s_id')
                ->join('huxing h ','h.id=a.h_id')
                ->wherelike('c.title','%'.$key.'%')
                ->where(array('a.r_id'=>$r_id))
                ->paginate(16);
        }else if(!empty($s_id) && (empty($r_id) && empty($h_id) && empty($m_id))){
            $list = Db::name('lou_anli')
                ->alias('a')
                ->field('a.*,b.img as bimg,b.names,c.title as ctitle,s.title as stitle ,h.title as htitle')
                ->join('designer b','b.id = a.she_id')
                ->join('remen_lou c','c.id = a.re_id')
                ->join('style s','s.id =a.s_id')
                ->join('huxing h ','h.id=a.h_id')
                ->wherelike('c.title','%'.$key.'%')
                ->where(array('a.s_id'=>$s_id))
                ->paginate(16);
        }else if(!empty($h_id)&&(empty($r_id) && empty($s_id) && empty($m_id))){
            $list = Db::name('lou_anli')
                ->alias('a')
                ->field('a.*,b.img as bimg,b.names,c.title as ctitle,s.title as stitle ,h.title as htitle')
                ->join('designer b','b.id = a.she_id')
                ->join('remen_lou c','c.id = a.re_id')
                ->join('style s','s.id =a.s_id')
                ->join('huxing h ','h.id=a.h_id')
                ->wherelike('c.title','%'.$key.'%')
                ->where(array('a.h_id'=>$h_id))
                ->paginate(16);
        }else if(!empty($m_id)&&(empty($r_id) && empty($s_id) && empty($h_id))){
            $list = Db::name('lou_anli')
                ->alias('a')
                ->field('a.*,b.img as bimg,b.names,c.title as ctitle,s.title as stitle ,h.title as htitle')
                ->join('designer b','b.id = a.she_id')
                ->join('remen_lou c','c.id = a.re_id')
                ->join('style s','s.id =a.s_id')
                ->join('huxing h ','h.id=a.h_id')
                ->wherelike('c.title','%'.$key.'%')
                ->where(array('a.m_id'=>$m_id))
                ->paginate(16);
        }else if(!empty($r_id) && !empty($s_id) && empty($h_id) && empty($m_id) ){
            $list = Db::name('lou_anli')
                ->alias('a')
                ->field('a.*,b.img as bimg,b.names,c.title as ctitle,s.title as stitle ,h.title as htitle')
                ->join('designer b','b.id = a.she_id')
                ->join('remen_lou c','c.id = a.re_id')
                ->join('style s','s.id =a.s_id')
                ->join('huxing h ','h.id=a.h_id')
                ->wherelike('c.title','%'.$key.'%')
                ->where(array('a.r_id'=>$r_id))
                ->where(array('a.s_id'=>$s_id))
                ->paginate(16);
        }else if(!empty($r_id) && !empty($s_id) && !empty($h_id)){
            $list = Db::name('lou_anli')
                ->alias('a')
                ->field('a.*,b.img as bimg,b.names,c.title as ctitle,s.title as stitle ,h.title as htitle')
                ->join('designer b','b.id = a.she_id')
                ->join('remen_lou c','c.id = a.re_id')
                ->join('style s','s.id =a.s_id')
                ->join('huxing h ','h.id=a.h_id')
                ->wherelike('c.title','%'.$key.'%')
                ->where(array('a.r_id'=>$r_id,'a.s_id'=>$s_id,'a.h_id'=>$h_id))
                ->paginate(16);
        }else if(!empty($r_id) && !empty($s_id) && !empty($h_id)&&!empty($m_id)){
            $list = Db::name('lou_anli')
                ->alias('a')
                ->field('a.*,b.img as bimg,b.names,c.title as ctitle,s.title as stitle ,h.title as htitle')
                ->join('designer b','b.id = a.she_id')
                ->join('remen_lou c','c.id = a.re_id')
                ->join('style s','s.id =a.s_id')
                ->join('huxing h ','h.id=a.h_id')
                ->wherelike('c.title','%'.$key.'%')
                ->where(array('a.r_id'=>$r_id))
                ->where(array('a.s_id'=>$s_id))
                ->where(array('a.h_id'=>$h_id))
                ->where(array('a.m_id'=>$m_id))
                ->paginate(16);
        }else{
            $list = Db::name('lou_anli')
                ->alias('a')
                ->field('a.*,b.img as bimg,b.names,c.title as ctitle,s.title as stitle ,h.title as htitle')
                ->join('designer b','b.id = a.she_id')
                ->join('remen_lou c','c.id = a.re_id')
                ->join('style s','s.id =a.s_id')
                ->join('huxing h ','h.id=a.h_id')
                ->wherelike('c.title','%'.$key.'%')
                ->paginate(16);
        }

        $this->assign('list',$list);
        return $this->fetch();
    }

    //热门小区
    public function popular(){
        //搜索
        //小区名称搜索
        $names = input('get.searchkey');
        //小区地区搜索
        $d_id = input('get.id');
        if(!empty($d_id)){
            $info = Db::name('remen_lou')->where('d_id',$d_id)->paginate(15);
        }else if(!empty($names)){
            $info = Db::name('remen_lou')->where('title','like','%'.$names.'%')->paginate(15);
        }else{
            $info = Db::name('remen_lou')->paginate(15);
        }
        $this->assign('info',$info);
        return $this->fetch();
    }

    //热门小区详情
    public function detail(){
        $id = input('get.id');
        $page = input('get.PageIndex');
        $result = Db::name('remen_lou')->where('id',$id)->find();
        //楼盘案例总数
        $count = Db::name('lou_anli')->where('re_id',$id)->count();
        //楼盘工地 总数
        $gcount = Db::name('lou_gongdi')->where('re_id',$id)->count();
        //楼盘户型总数
        $hcount = Db::name('lou_huxing')->where('re_id',$id)->count();
        //楼盘案例 关联 设计师
        $info = Db::name('lou_anli')
                     ->alias('a')
                     ->field('a.*,b.img as bimg ,b.names,c.title as ctitle,d.title as dtitle')
                     ->join('designer b','b.id = a.she_id')
                     ->join('huxing c','c.id =a.h_id')
                     ->join('style d','d.id=a.s_id')
                     ->where('re_id',$id)
                     ->page($page,$size='12')
                     ->select();
        //分页数量
        $pagesize = $count/$size;
        $this->assign('result',$result);
        $this->assign('info',$info);
        $this->assign('count',$count);
        $this->assign('gcount',$gcount);
        $this->assign('hcount',$hcount);
        $this->assign('pagesize',$pagesize);
        return $this->fetch();
    }

    //楼盘案例详情图
    public function goodroom(){
        $id = input('get.id');
        //楼盘案例 关联 设计师
        $info = Db::name('lou_anli')->where('id',$id)->find();
        $info['remen_lou'] = Db::name('remen_lou')->where('id',$info['re_id'])->value('title');
        $info['huxing_lou'] = Db::name('huxing')->where('id',$info['h_id'])->value('title');
        $info['style_lou'] = Db::name('style')->where('id',$info['s_id'])->value('title');
        $info['designer'] = Db::name('designer')->field('id,names,job_year,img,j_id')->where('id',$info['she_id'])->find();
        $info['jibie'] = Db::name('jibie')->where('id',$info['designer']['j_id'])->value('title');
        $info['img'] = explode('|',$info['img']);
        $this->assign('info',$info);
        return $this->fetch();
    }


    //工地
    public function detail_fay(){
        $id = input('get.id');
        $result = Db::name('remen_lou')->where('id',$id)->find();
        //楼盘案例总数
        $count = Db::name('lou_anli')->where('re_id',$id)->count();
        //楼盘工地 总数
        $gcount = Db::name('lou_gongdi')->where('re_id',$id)->count();
        //楼盘户型总数
        $hcount = Db::name('lou_huxing')->where('re_id',$id)->count();
        //楼盘 工地 展示
        $info = Db::name('lou_gongdi')->where('re_id',$result['id'])->find();
        $info['q_img'] = explode('|',$info['q_img']);
        $info['z_img'] = explode('|',$info['z_img']);
        $info['h_img'] = explode('|',$info['h_img']);
        //户型 id 转标题
        $info['hu'] = Db::name('huxing')->where('id',$info['h_id'])->value('title');
        $this->assign('result',$result);
        $this->assign('count',$count);
        $this->assign('info',$info);
        $this->assign('gcount',$gcount);
        $this->assign('hcount',$hcount);
        return  $this->fetch();
    }

    //竣工示意图 todo 未完成
    public function detail_fayover(){
        $id = input('get.id');
        $result = Db::name('remen_lou')->where('id',$id)->find();
        //楼盘案例总数
        $count = Db::name('lou_anli')->where('re_id',$id)->count();
        //楼盘工地 总数
        $gcount = Db::name('lou_gongdi')->where('re_id',$id)->count();
        //楼盘户型总数
        $hcount = Db::name('lou_huxing')->where('re_id',$id)->count();
        $this->assign('result',$result);
        $this->assign('count',$count);
        $this->assign('gcount',$gcount);
        $this->assign('hcount',$hcount);
        return $this->fetch();
    }

    //楼盘户型
    public function detail_hall(){
        $id = input('get.id');
        $page = input('get.PageIndex');
        $result = Db::name('remen_lou')->where('id',$id)->find();
        //楼盘案例总数
        $count = Db::name('lou_anli')->where('re_id',$id)->count();
        //楼盘工地 总数
        $gcount = Db::name('lou_gongdi')->where('re_id',$id)->count();
        //楼盘户型总数
        $hcount = Db::name('lou_huxing')->where('re_id',$id)->count();
        //楼盘户型列表 分页
        $hlist = Db::name('lou_huxing')->where('re_id',$id)->page($page,$size='12')->select();
        //总页数
        $pages =ceil($hcount/$size);
        $this->assign('result',$result);
        $this->assign('count',$count);
        $this->assign('gcount',$gcount);
        $this->assign('hcount',$hcount);
        $this->assign('hlist',$hlist);
        $this->assign('pages',$pages);
        return $this->fetch();
    }


    //楼盘户型 详情展示
    public function  detail_hall_two(){
        $id = input('get.id');  //当前户型案例 id
        $reid = input('get.rid'); //热门小区id
        $result = Db::name('remen_lou')->where('id',$reid)->find();
        //楼盘案例总数
        $count = Db::name('lou_anli')->where('re_id',$reid)->count();
        //楼盘工地 总数
        $gcount = Db::name('lou_gongdi')->where('re_id',$reid)->count();
        //楼盘户型总数
        $hcount = Db::name('lou_huxing')->where('re_id',$reid)->count();
        //楼盘户型列表
        $info =Db::name('lou_huxing')->where('re_id',$reid)->select();
        //点击获取详细信息
        $detail = Db::name('lou_huxing')->where('id',$id)->where('re_id',$reid)->find();
        $this->assign('result',$result);
        $this->assign('count',$count);
        $this->assign('gcount',$gcount);
        $this->assign('hcount',$hcount);
        $this->assign('info',$info);
        $this->assign('detail',$detail);
        return $this->fetch();
    }
}