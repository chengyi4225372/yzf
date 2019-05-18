<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/18
 * Time: 11:31
 */
namespace app\tuanj\controller;

use think\Db;
use controller\BasicAdmin;
use service\DataService;

class Fenglist extends BasicAdmin {

    private $dataform = 'feng_list';
    public $table ='feng_cate';

    public function index() {
        $this->title = '装修风水列表';
        list($get, $db) = [$this->request->get(), Db::name($this->dataform)];
        (isset($get['keywords']) && $get['keywords'] !== '') && $db->whereLike('title|url', "%{$get['keywords']}%");
        if (isset($get['date']) && $get['date'] !== '') {
            list($start, $end) = explode(' - ', $get['date']);
            $db->whereBetween('create_at', ["{$start} 00:00:00", "{$end} 23:59:59"]);
        }
        return parent::_list($db->order('id desc'));
    }


    protected function _data_filter(&$data) {
        foreach ($data as $key => $val) {
            $data[$key]['cates'] = Db::name($this->table)->where('id', '=', $val['fid'])->value('title');
        }
    }


    /**
     * 添加
     * @return type
     */
    public function add() {
        $cates =Db::name($this->table)->field('id,title')->select();
        $this->assign('cates',$cates);
        return $this->_form($this->dataform, 'form');
    }

    /**
     * 编辑
     * @return type
     */
    public function edit() {
        $cates =Db::name($this->table)->field('id,title')->select();
        $this->assign('cates',$cates);
        return $this->_form($this->dataform, 'form');
    }

    /**
     * 添加成功回跳处理
     * @param bool $result
     */
    protected function _form_result($result) {
        if ($result !== false) {
            list($base, $spm, $url) = [url('@admin'), $this->request->get('spm'), url('tuanj/fenglist/index')];
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