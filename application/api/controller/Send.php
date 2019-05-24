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
use think\Exception;
use think\facade\Config;
use aliyunsms\demo\SmsDemo;
class  Send extends Controller
{

    /*
     * AccessKeyID：  LTAIKYEDd1wSv9kZ
     * AccessKeySecret： SrKn9aJ3KNfiVUxVeyNVzIGB4USQye
     *
     *
     *阿里短信
     */

    //我的户型  免费预约平面设计
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
            $this->result('','400','提交失败，请刷新页面重新提交！','json');
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
                $money = $data['square'] *0.12;
                $response =SmsDemo::sendSms($data['phone'],$money);
                if($response){
                    $this->result('','200','结果，马上发送到您的手机！','json');
                }
            }else{
                $this->result('','400','网络不流畅，请刷新后在提交！','json');
            }
        }

    //算算我家房子装修花多少钱 sp.html
    public function jisuan(){
        $data = input('post.');
        $arr = explode(' ',$data['remark']);
        unset($arr['4']);
        $res = Db::name('yuyue')->insert(
            array(
                'channel'=>$data['channel'],
                'square'=>$data['square'],
                'phone'=>$data['phone'],
                'shi'=>$arr['0'],
                'ting'=>$arr['1'],
                'wei'=>$arr['2'],
                'tai'=>$arr['3'],
            )
        );
        if($res){
            $money = $data['square'] *0.12;
            $response =SmsDemo::sendSms($data['phone'],$money);
            if($response){
                $this->result('','200','结果，马上发送到您的手机！','json');
            }
        }else {
            $this->result('','400','对不起，提交失败！','json');
        }

    }


    public function baojia(){
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
            $money = $data['square'] *0.12;
            $response =SmsDemo::sendSms($data['phone'],$money);
            if($response){
                $this->result('','200','结果，马上发送到您的手机！','json');
            }
        }else{
            $this->result('','400','提交失败,请重新尝试！','json');
        }

    }




   //礼包 + 热门楼盘  获取楼盘专属优惠 攻略站报价计算器
    public function libao(){
        $data = input('post.');
        $tel = Db::name('yuyue')->where('phone',$data['phone'])->value('status');
        if($tel ==1){
           $this->result('','4001','您已经领取了，不能重复领取了！','json');
        }else{
            $res = Db::name('yuyue')->data($data)->insert();
            if($res){
                  //接入聚合短信
                 $sms =  $this->send_sms($data['phone']);
                 if($sms ==true){
                     $this->result('','2000','短信发送成功！','json');
                 }else{
                     $this->result('','4002','短信发送失败！','json');
                 }
            }else{
                $this->result('','4000','sorry,您没有领取成功，请重新填写，可以再次领取！','json');
            }
        }
    }

    //预约设计师
    public function designer(){
        $data = input('post.');
        $res = Db::name('yu_designer')->data($data)->insert();
        if($res){
           $this->result('','200','恭喜你，预约成功！','json');
        }else{
            $this->result('','400','sorry,请尝试刷新网页重新提交预约申请！','json');
        }
    }

   //免费家装前三步
    public function mianfei(){
        $data = input('post.');
        $res = Db::name('yuyue')->insertGetId($data);
        if($res > 0){
            $this->result('','200','恭喜你,报名成功！','json');
        }else{
            $this->result('','400','对不起，提交失败！','json');
        }
    }

    //专属优惠
    public function youhui(){
        $data = input('post.');
        $res = Db::name('yuyue')->insertGetId($data);
        if($res > 0){
            $this->result('','200','恭喜你报名成功！','json');
        }else{
            $this->result('','400','对不起，请重新提交！','json');
        }
    }

    //第三方环保监测 环保是否达标
    public function jiance(){
        $data = input('post.');
        $res = Db::name('yuyue')->insertGetId($data);
        if($res > 0){
            $this->result('','200','发送成功！','json');
        }else{
            $this->result('','400','对不起，请重新提交！','json');
        }
    }


    //预选节目样板间
    public function yangban(){
        $data = input('post.');
        $res = Db::name('yuyue')->insertGetId($data);
        if($res > 0){
            $this->result('','200','恭喜你，参与成功！','json');
        }else{
            $this->result('','400','对不起，请重新提交！','json');
        }
    }

    //预约免费平面设计
    public function pingmian(){
        $data = input('post.');
        $res = Db::name('yuyue')->insertGetId($data);
        if($res > 0){
            $this->result('','200','谢谢您的参与！','json');
        }else{
            $this->result('','400','对不起，请重新提交！','json');
        }
    }

}