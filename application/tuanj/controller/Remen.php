<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/4/3
 * Time: 17:48
 */

/*  热门小区 控制器  */
namespace app\tuanj\controller;

use think\Db;
use controller\BasicAdmin;
use service\DataService;

class Remen extends BasicAdmin {

    private $dataform = 'remen_lou';

    public function index() {
        $this->title = '热门小区设置';
        list($get, $db) = [$this->request->get(), Db::name($this->dataform)];
        (isset($get['keywords']) && $get['keywords'] !== '') && $db->whereLike('title', "%{$get['keywords']}%");
        if (isset($get['date']) && $get['date'] !== '') {
            list($start, $end) = explode(' - ', $get['date']);
            $db->whereBetween('create_at', ["{$start} 00:00:00", "{$end} 23:59:59"]);
        }
        return parent::_list($db->order('id desc'));
    }

    protected function _data_filter(&$data) {
        foreach ($data as $key => $val) {
                $data[$key]['region'] = Db::name('region')->where('id', '=', $val['d_id'])->value('title');
        }
    }


   //最火楼盘排序
    public function hot(){
        $id = input('post.id');
        $hot = input('post.hot');
        $result= Db::name($this->dataform)->where('id',$id)->update(array('hot'=>$hot));
        if($result){
            $this->result('','200','修改成功！','json');
        }else{
            $this->result('','400','修改失败！','json');
        }
    }

    //最新楼盘排序
    public function news(){
        $id = input('post.id');
        $new = input('post.news');
        $result= Db::name($this->dataform)->where('id',$id)->update(array('news'=>$new));
        if($result){
            $this->result('','200','修改成功！','json');
        }else{
            $this->result('','400','修改失败！','json');
        }
    }

    //推荐为热门搜索列表
    public function search(){
        $id = input('post.id');
        $search = input('post.val');
        $result= Db::name($this->dataform)->where('id',$id)->update(array('search'=>$search >0?0:1));
        if($result){
            $this->result('','200','修改成功！','json');
        }else{
            $this->result('','400','修改失败！','json');
        }
    }


    /**
     * 添加
     * @return type
     */
    public function add() {
        return $this->_form($this->dataform, 'form');
    }

    /**
     * 编辑
     * @return type
     */
    public function edit() {
        return $this->_form($this->dataform, 'form');
    }

    /**
     * 添加成功回跳处理
     * @param bool $result
     */
    protected function _form_result($result) {
        if ($result !== false) {
            list($base, $spm, $url) = [url('@admin'), $this->request->get('spm'), url('tuanj/remen/index')];
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