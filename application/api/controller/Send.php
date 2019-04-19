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
use think\Request;
class  Send extends Controller
{
   //预约设计
    public function sheji(){
        $data = input('post.');
        $res = Db::name('yuyue')->insert(
            array(
            'channel'=>$data['channel'],
            'names'=>$data['names'],
            'phone'=>$data['phone'],
            'xiao'=>$data['xiao'],
            'square'=>$data['square'],
             'shi'=>$data['shi'],
             'ting'=>$data['ting'],
             'wei'=>$data['wei'],
            )
        );
        if($res){
          $this->result('','200','提交成功！','json');
        }else{
            $this->result('','400','提交失败！','json');
        }
    }
}