<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/4/1
 * Time: 9:42
 */

/* 投诉建议 控制器*/

namespace app\index\controller;

use think\Db;
use app\index\controller\Common;
class Decoration extends Common {

    //投诉建议
    public function index() {
        return $this->view->fetch();
    }

    //投诉表单信息
    public function tousu(){
        $data['tousu'] = input('post.tousu','','intval');
        $data['human'] = input('post.isman','','intval');
        $data['names'] = input('post.title');
        $data['phone'] = input('post.phone','','trim');
        $data['content'] = input('post.content');
        $ress = Db::name('tousu')->data($data)->insert();
        if($ress){
          return   $this->result('',200,'true','json');
        }else{
           return  $this->result('',400,'false','json');
        }
    }

}