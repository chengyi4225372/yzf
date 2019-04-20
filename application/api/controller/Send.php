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
   //我的户型
    public function sheji(){
        $data = input('post.');
        $res = Db::name('yuyue')->insert(
            array(
            'channel'=>$data['channel'],
            'names'=>$data['names'],
            'phone'=>$data['phone'],
            'xiao'=>$data['xiao'],
            'square'=>$data['square'],
            'shi'=>isset($data['shi'])?$data['shi']:'',
            'ting'=>isset($data['ting'])?$data['ting']:'',
            'wei'=>isset($data['wei'])?$data['wei']:'',
            )
        );
        if($res){
          $this->result('','200','提交成功！','json');
        }else{
            $this->result('','400','提交失败！','json');
        }
    }

    //预约设计 装修报价 别墅大宅 私人订制 申请五零靠谱工程特权
    public function yu(){
        $data = input('post.');
        $res = Db::name('yuyue')->insert(
            array(
                'channel'=>$data['channel'],
                'names'=>$data['names'],
                'phone'=>$data['phone'],
                'xiao'=>$data['xiao'],
                'square'=>isset($data['square'])?$data['square']:'',
                'shi'=>isset($data['shi'])?$data['shi']:'',
                'ting'=>isset($data['ting'])?$data['ting']:'',
                'wei'=>isset($data['wei'])?$data['wei']:'',
            )
        );
        if($res){
            $this->result('','200','恭喜你，提交成功！','json');
        }else{
            $this->result('','400','提交失败！','json');
        }

    }

    //装修计算器 整装优势
    public function zhuang(){
        $data = input('post.');
        $res = Db::name('yuyue')->insert(
            array(
                'channel'=>$data['channel'],
                'phone'=>$data['phone'],
                'square'=>$data['square'],
                'shi'=>isset($data['shi'])?$data['shi']:'',
                'ting'=>isset($data['ting'])?$data['ting']:'',
                'wei'=>isset($data['wei'])?$data['wei']:'',
                'chu'=>isset($data['chu'])?$data['chu']:'',
                'tai'=>isset($data['tai'])?$data['tai']:'',
            )
        );
            if($res){
                $this->result('','200','恭喜你，报名成功！','json');
            }else{
                $this->result('','400','sorry,请刷新下网页再报名！','json');
            }
        }

   //礼包 + 热门楼盘  获取楼盘专属优惠 攻略站报价计算器
    //todo 怎么触发短信 接果 未知
    public function libao(){
        $data = input('post.');
        $tel = Db::name('yuyue')->where('phone',$data['phone'])->value('status');
        if($tel ==1){
           $this->result('','4001','您已经领取了，不能重复领取了！','json');
        }else{
            $res = Db::name('yuyue')->data($data)->insert();
            if($res){
                $this->result('','200','','json');
            }else{
                $this->result('','400','sorry,您没有领取成功，请重新填写，可以再次领取！','json');
            }
        }


    }


}