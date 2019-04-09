<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/4/2
 * Time: 18:12
 */

namespace app\tuanj\controller;

use think\Db;
use controller\BasicAdmin;
use service\DataService;

class Designer extends BasicAdmin {

    private $dataform = 'designer';


    public function index() {
        $this->title = '设计师管理';
        list($get, $db) = [$this->request->get(), Db::name($this->dataform)];
        (isset($get['keywords']) && $get['keywords'] !== '') && $db->whereLike('names|school', "%{$get['keywords']}%");
        if (isset($get['date']) && $get['date'] !== '') {
            list($start, $end) = explode(' - ', $get['date']);
            $db->whereBetween('time', ["{$start} 00:00:00", "{$end} 23:59:59"]);
        }
        return parent::_list($db->order('id desc'));
    }


    //是否人气设计师
    public function huo(){
        $id = input('get.id');
        $renqi = input('get.renqi');
        $res = Db::name('designer')->where('id',$id)->update(['huo'=>$renqi>0?0:1]);
        if ($res !== false) {
            list($base, $spm, $url) = [url('@admin'), $this->request->get('spm'), url('tuanj/designer/index')];
            $this->success('数据保存成功！', "{$base}#{$url}?spm=m-117-141-145");
        }
    }


    /**
     * 添加
     * @return type
     */
    public function add() {
         if(request()->isPost()){
             $data  = input('post.');
           if(empty($data['id'])){
                 $data['h_id'] = empty($data['h_id'])?'':implode(',',$data['h_id']);
                 $data['s_id'] = empty($data['s_id'])?'':implode(',',$data['s_id']);
                 $data['j_id'] = empty($data['j_id'])?'':$data['j_id'];
                 $res = Db::name('designer')->data($data)->insert();
                 $this->_form_result($res);
             }else{
               $data['h_id'] = empty($data['h_id'])?'':implode(',',$data['h_id']);
               $data['s_id'] = empty($data['s_id'])?'':implode(',',$data['s_id']);
               $data['j_id'] = empty($data['j_id'])?'':$data['j_id'];
                 $res = Db::name('designer')->where('id',$data['id'])->update($data);
                 $this->_form_result($res);
             }
         }else{
             return $this->_form($this->dataform, 'add');
         }
    }

    /**
     * 编辑
     * @return type
     */
    public function edit() {
        $id = input('get.id');
        $vo=Db::name('designer')->where('id',$id)->find();
        $this->assign('vo',$vo);
        return $this->_form($this->dataform, 'form');
    }

    /**
     * 添加成功回跳处理
     * @param bool $result
     */
    protected function _form_result($result) {
        if ($result !== false) {
            list($base, $spm, $url) = [url('@admin'), $this->request->get('spm'), url('tuanj/designer/index')];
            $this->success('数据保存成功！', "{$base}#{$url}?spm={$spm}");
        }
    }

    /**
     * 删除
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function del() {
        if (DataService::update($this->dataform)) {
            $this->success("删除成功!", '');
        }
        $this->error("删除失败, 请稍候再试!");
    }

    /**
     * 禁用
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function forbid() {
        if (DataService::update($this->dataform)) {
            $this->success("禁用成功!", '');
        }
        $this->error("禁用失败, 请稍候再试!");
    }

    /**
     * 禁用
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function resume() {
        if (DataService::update($this->dataform)) {
            $this->success("启用成功!", '');
        }
        $this->error("启用失败, 请稍候再试!");
    }

}