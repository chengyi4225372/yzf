
initcity();
function initcity()
{

    var city=$("#yzf_city").val();
    var value = getCookie("yzf_city");
    if (value != city)
    {
        setCookie("yzf_city", city, 1000);
    }
}
function setCookie(c_name, value, exdays) {
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + exdays);
    var c_value = value + ((exdays == null) ? "" : "; expires=" + exdate.toUTCString());
    document.cookie = c_name + "=" + c_value + ';path=/;domain=.yzf.com.cn';
}
//escape编码的
//function setCookie(c_name, value, exdays) {
//    var exdate = new Date();
//    exdate.setDate(exdate.getDate() + exdays);
//    var c_value = escape(value) + ((exdays == null) ? "" : "; expires=" + exdate.toUTCString());
//    document.cookie = c_name + "=" + c_value + ';path=/;domain=.yzf.com';
//}
function getCookie(c_name) {
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