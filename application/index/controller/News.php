<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/4/1
 * Time: 9:29
 */

/*   新闻 控制器 */

namespace app\index\controller;

use think\Db;
use app\index\controller\Common;
class News extends Common {

    //新闻首页
    public function index() {
         //热门
        $remen = Db::name('new')->where('tuijian',1)->select();
        //普通
        $nomal = Db::name('new')->where('tuijian',0)->paginate(15);
        $this->assign('remen',$remen);
        $this->assign('nomal',$nomal);
        //热门文章列表
        $re= $this->remen();
        $this->assign('re',$re);
        return $this->view->fetch();
    }

    //新闻详情
    public function detail(){
        $id =input('get.id','','intval');
        if($id <=0){
            $this->error('参数错误','index/news/index');
        }
        $res = Db::name('new')->where('id',$id)->find();
        $this->assign('res',$res);
        //热门文章列表
        $re= $this->remen();
        $this->assign('re',$re);
        $know =$this->know();
        $this->assign('know',$know);
        return  $this->fetch();
    }


    //业主感言
    public function testimonial(){
        //业主感言列表
        $info = Db::name('thank')->field('id,title,img,content,time')->paginate(10);
        $this->assign('info',$info);
        return $this->fetch();
    }

    //业主感言详情
    public function  t_detail(){
        $id = input('get.id');
        if($id <=0){
            $this->error('参数错误','index/thank/index');
        }
        $conn = Db::name('thank')->where('id',$id)->find();
        //热门文章列表
        $re= $this->remen();
        $this->assign('re',$re);
        $this->assign('conn',$conn);
        return $this->fetch();
    }

}
