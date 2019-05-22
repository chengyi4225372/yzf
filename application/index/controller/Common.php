<?php

namespace app\index\controller;

use think\Controller;
use service\FileService;
use think\Db;

class Common extends Controller {

//    protected $where = array('status' => 1, 'is_deleted' => 0);
    public $member = 'store_member';
    public $buy = 'store_buy';
    public $tmall = 'store_tmall';
    public $platform = 'store_platform';
    public $cate = 'store_cate';
    public $district = 'store_district';
    public $consultant = 'system_user';
    public $news_cate = 'news_cate';
    public $article = 'news_article';
    public $interview = 'news_interview';
    public $user = 'system_user';
    public $banner = 'banner';
    public $problem_cate = 'problem_cate';
    public $news_problem = 'news_problem';
    public $page = 'single_page';
    public $problem = 'news_problem';
    public $foot    ='chi_url';
    
    public function initialize() {

       //菜单栏
        $lists = Db::name('list')->select();
        $this->assign('lists',$lists);
        //合作伙伴
        $partners = Db::name('partner')->select();
        $this->assign('partners',$partners);
        //底部管我们
        $gywms = Db::name('banner')->where('status',2)->select();
        $this->assign('gywms',$gywms);
        $helps = Db::name('banner')->where('status',3)->select();
        $this->assign('helps',$helps);
        $articles = Db::name('new')->order('id desc')->limit(5)->select();
        $this->assign('articles',$articles);
        //户型
        $huxing = Db::name('huxing')->select();
        $this->assign('huxing',$huxing);
        //风格
        $style=Db::name('style')->select();
        $this->assign('style',$style);
        //级别
        $jibie =Db::name('jibie')->select();
        $this->assign('jibie',$jibie);
        //人气设计师
        $huo =Db::name('designer')->where('huo',1)->field('id,img,names')->select();
        $this->assign('huo',$huo);
        //案例地区
        $region = Db::name('region')->select();
        $this->assign('region',$region);
        //面积
        $mianji = Db::name('mianji')->select();
        $this->assign('mianji',$mianji);
        //装修头条类型
        $header = Db::name('new_cates')->select();
        $this->assign('header',$header);
        //menu 热门搜索
        $hot = Db::name('remen_lou')->field('id,title')->where('search',1)->order('id desc')->limit(8)->select();
        $this->assign('hot',$hot);
        //底部导航
        $footer = Db::name($this->foot)->select();
        $this->assign('footer',$footer);

        if(isMobile()){
            $this->redirect('@mobile/index/index');
        }
    }

    //热门文章排行榜
    public  function remen (){
        $arr  = Db::name('z_news')->field('id,img,title')->where('tuijian',1)->order('id desc')->limit(5)->select();
        return $arr;
    }

    //装修知识
    public function know(){
        $arr =Db::name('know_list')->field('id,kid,title,img,time')->order('id desc')->limit(10)->select();
        return $arr ? $arr:'';
    }



}
