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

class  Send extends Controller
{



    /**
     * 请求接口返回内容
     * @param  string $url [请求的URL地址]
     * @param  string $params [请求的参数]
     * @param  int $ipost [是否采用POST形式]
     * @return  string
     */
    protected function juhe_curl($url, $params = false, $ispost = 0)
    {
        $httpInfo = array();
        $ch = curl_init();

        curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
        curl_setopt($ch, CURLOPT_USERAGENT, 'JuheData');
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 60);
        curl_setopt($ch, CURLOPT_TIMEOUT, 60);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
        if ($ispost) {
            curl_setopt($ch, CURLOPT_POST, true);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $params);
            curl_setopt($ch, CURLOPT_URL, $url);
        } else {
            if ($params) {
                curl_setopt($ch, CURLOPT_URL, $url.'?'.$params);
            } else {
                curl_setopt($ch, CURLOPT_URL, $url);
            }
        }
        $response = curl_exec($ch);
        if ($response === FALSE) {
            //echo "cURL Error: " . curl_error($ch);
            return false;
        }
        $httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        $httpInfo = array_merge($httpInfo, curl_getinfo($ch));
        curl_close($ch);
        return $response;
    }


    //聚合 发送短信方法
    protected  function send_sms($phone){
        $rand = mt_rand(0000,9999);
        $url = "http://v.juhe.cn/sms/send";
        $params = array(
            'key'   => config('sms.key'), //您申请的APPKEY
            'mobile'    => $phone, //接受短信的用户手机号码
            'tpl_id'    => config('sms.tpl_id'), //您申请的短信模板ID，根据实际情况修改
            'tpl_value' =>'%23code%23%3d'.$rand.'&#company#='.config('sms.company') ,//您设置的模板变量，根据实际情况修改
        );
        $paramstring = http_build_query($params);
        $content = $this->juhe_curl($url, $paramstring);
        $result = json_decode($content, true);
        if ($result) {
            //var_dump($result);
            return true;
        } else {
            return false;
        }
    }

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
                'names'=>$data['names'],
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
    // 怎么触发短信 接果 未知
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


    //算算我家房子装修花多少钱 sp.html todo 需要连接短信接口
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
         $this->result('','200','恭喜你,稍后结果会发送到您的手机！','json');
     }else {
         $this->result('','400','对不起，提交失败！','json');
     }

    }



   //免费家装前三步
    public function mianfei(){
        $data = input('post.');
        $res = Db::name('yuyue')->insertGetId($data);
        if($res !=false){
            $this->result('','200','恭喜你,报名成功！','json');
        }else{
            $this->result('','400','对不起，提交失败！','json');
        }
    }



}