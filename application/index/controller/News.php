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
        return  $this->fetch();
    }

}
