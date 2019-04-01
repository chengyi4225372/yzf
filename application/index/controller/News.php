<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/4/1
 * Time: 9:29
 */

/*   新闻 控制器 */

namespace app\index\controller;

use think\Db;
use app\index\controller\Common;
class News extends Common {

    //新闻首页
    public function index() {
        return $this->view->fetch();
    }


}
