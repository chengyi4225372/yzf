$(function () {
    if ($("[name='BranchId']").val() == "29") {
        var tips = "<p style='text-align: center;color: #fff;padding-top: 10px;'>最终解释权归业之峰所有</p>";
        $("form").append(tips);
    }
});


var _maq = _maq || [];
_maq.push(['_setAccount', '网站标识']);
$(function () {

    var params = {};
    //Document对象数据
    if (document) {

        params.Domain = document.domain || '';
        params.URL = document.URL || '';
        params.Title = document.title || '';
        params.Referrer = document.referrer || '';
    }
    //Window对象数据
    if (window && window.screen) {
        params.Screenh = window.screen.height || 0;
        params.Screenw = window.screen.width || 0;
        params.ColorDepth = window.screen.colorDepth || 0;
    }
    //navigator对象数据
    if (navigator) {
        params.UserLanguage = navigator.language || '';
    }
    //解析_maq配置
    if (_maq) {
        for (var i in _maq) {
            switch (_maq[i][0]) {
                case '_setAccount':
                    params.account = _maq[i][1];
                    break;
                default:
                    break;
            }
        }
    }

    params.BranchDomain = getbdomain();
    params.BranchId = getbid();
    params.BranchName = getbname();

    if (params.BranchName == null) {
        if (params.BranchDomain != null && params.BranchDomain != '' && params.BranchDomain != undefined) {
            if (typeof arr !== 'undefined') {
                var city = arr[params.BranchDomain];
                if (city != undefined) {
                    params.BranchName = city.name;
                    params.BranchId = city.id;
                }
            }
        }
    }



    $.ajax({
        type: "POST",
        url: ('https:' == document.location.protocol ? 'https://' : 'http://') + 'tongji.yzf.com.cn/api/tj',
        data: params,
        timeout: 100, //超时时间设置，单位毫秒
        success: function (data) {
            console.log(data);
        },
        error: function () {
            console.log("tongjixxerror");
        }
    });



});



//获取url中的参数
function getbid() {
    var value = getCookietj("yzf_city");
    if (value != null) return value.split(',')[0];
    return null;
}
//获取url中的参数
function getbname() {
    var value = getCookietj("yzf_city");
    if (value != null) return value.split(',')[2];
    return null;
}
function getbdomain() {
    var reg = new RegExp("(^|&)bid=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
    var r = window.location.search.substr(1).match(reg);  //匹配目标参数
    if (r != null) return unescape(r[2]);

    return document.domain.split('.')[0];
}
function getCookietj(c_name) {
    var c_value = document.cookie;
    var c_start = c_value.indexOf(" " + c_name + "=");
    if (c_start == -1) {
        c_start = c_value.indexOf(c_name + "=");
    }
    if (c_start == -1) {
        c_value = null;
    } else {
        c_start = c_value.indexOf("=", c_start) + 1;
        var c_end = c_value.indexOf(";", c_start);
        if (c_end == -1) {
            c_end = c_value.length;
        }
        //c_value = unescape(c_value.substring(c_start, c_end));
        c_value = c_value.substring(c_start, c_end);
    }
    return c_value;
}