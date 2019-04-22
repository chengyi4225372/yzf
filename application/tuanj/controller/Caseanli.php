<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/4/8
 * Time: 17:35
 */
namespace app\tuanj\controller;

use think\Db;
use controller\BasicAdmin;
use service\DataService;

class  Caseanli extends  BasicAdmin {

    private $dataform = 'lou_anli';


    public function index() {
        $this->title = '楼盘案例列表';
        list($get, $db) = [$this->request->get(), Db::name($this->dataform)];
        (isset($get['keywords']) && $get['keywords'] !== '') && $db->whereLike('', "%{$get['keywords']}%");
        if (isset($get['date']) && $get['date'] !== '') {
            list($start, $end) = explode(' - ', $get['date']);
            $db->whereBetween('create_at', ["{$start} 00:00:00", "{$end} 23:59:59"]);
        }
        return parent::_list($db->order('id desc'));
    }

   //关联查询
    protected function _data_filter(&$data) {
        foreach ($data as $key => $val) {
                $data[$key]['r_id'] = Db::name('region')->where('id', '=', $val['r_id'])->value('title');
                $data[$key]['s_id'] = Db::name('style')->where('id', '=', $val['s_id'])->value('title');
                $data[$key]['h_id'] = Db::name('huxing')->where('id', '=', $val['h_id'])->value('title');
                $data[$key]['m_id'] = Db::name('mianji')->where('id', '=', $val['m_id'])->value('title');
                $data[$key]['re_id'] = Db::name('remen_lou')->where('id', '=', $val['re_id'])->value('title');
                $data[$key]['she_id'] = Db::name('designer')->where('id', '=', $val['she_id'])->value('names');
        }
    }


    //热门楼盘排序
    public  function sort(){
       $id = input('post.id');
       $sort = input('post.val');
       $res = Db::name('lou_anli')->where('id',$id)->update(array('sort'=>$sort));
       if($res){
           $this->result('','200','更新成功！','json');
       }else{
           $this->result('','400','更新失败！','json');
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
            list($base, $spm, $url) = [url('@admin'), $this->request->get('spm'), url('tuanj/caseanli/index')];
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
