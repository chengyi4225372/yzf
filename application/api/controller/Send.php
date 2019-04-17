<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/4/17
 * Time: 17:16
 */
/*ajax 表单处理控制器  */
namespace app\api\controller;
use think\Controller;
use service\FileService;
use think\Db;


class  Send extends Controller
{
   //预约设计
    public function sheji(){
        $data = input('post.');
        dump($data);
        exit();
    }
}