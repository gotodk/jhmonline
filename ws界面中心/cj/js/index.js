var t, //循环
c=7,   //图片数量
a,     //随机数
b=7;   //结果数

/*
 *这个函数可使图片按一定顺序闪烁
 *启用只需把kaishi()函数中的huoqu2()替换成huoqu()
 *
function huoqu(){
  if(c>0){
     document.getElementById('all-picture').innerHTML="<img src=\"images/"+c+".jpeg\" id=\"img-sdf1\" width=\"100%\" height=\"100%\">";
     t=setTimeout("huoqu()",500);
     c=c-1;
  }else{
     c=14;
	 huoqu()
  }
}
*/

/*
 *这个函数按随机数闪烁图片
 *默认已启用
 */
function huoqu2() {
  
    a = Math.floor(Math.random() * c + 1);
    var src_tu = $("#cjzp_" + a).attr("src");
    $('#all-picture').html("<img src=\"" + src_tu + "\" id=\"img-sdf1\" width=\"100%\" height=\"100%\">");
     t=setTimeout("huoqu2()",50);
}

function start(){
    $('#btn-kfj').html("<button id=\"button\" type=\"button\" onclick=\"stop()\" class=\"btn btn-danger btn-default\">点击结束</button>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <button type=\"button\" class=\"btn btn-primary\" onclick=\"reset()\">重置</button>");
   huoqu2();
}

function reset(){
    $('#btn-kfj').html("<button id=\"button\" type=\"button\" onclick=\"start()\" class=\"btn btn-success btn-default\">点击开始</button>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <button type=\"button\" class=\"btn btn-primary\" onclick=\"reset()\">重置</button>");
    $("#is-picture").children().remove();
    $("#is-picture_info").html("");
   b=7;
}

function stop(){
   clearTimeout(t);
   var k = c + 1;
   var src_tu = $("#cjzp_" + a).attr("src");
   $('#box2').css("background", "url('" + src_tu + "') 50% 50%");
   $('#is-picture').append("<img class='img-chosed' src=\"" + src_tu + "\" id=\"img-sdf1\" width=\"13%\" height=\"100%\" />");
   $('#is-picture_info').append("[" + $("#cjzp_" + a).attr("str_xingming") + "," + $("#cjzp_" + a).attr("str_xingbie") + "," + $("#cjzp_" + a).attr("str_dianhua") + "],");
   if(b>1){
       $('#btn-kfj').html("<button id=\"button\" type=\"button\" onclick=\"start()\" class=\"btn btn-success btn-default\">点击开始</button>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <button type=\"button\" class=\"btn btn-primary\" onclick=\"reset()\">重置</button>");
   }else{
       $('#btn-kfj').html("<button id=\"button\" type=\"button\" class=\"btn btn-warning btn-default\" data-toggle=\"modal\" data-target=\"#myModal\">重置结果</button>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <button type=\"button\" class=\"btn btn-primary\" onclick=\"reset()\">重置</button>");
   }
   $("#title").css("color","#fff");
   b--;
}
function haha(){
   alert("hello");
}

var loadjs = 0;
function gjzok()
{
    loadjs++;
    if (loadjs == c)
    {
        alert('数据加载完成');
    }
}


//获取数据填充表单
function loadinfoajaxuser() {
 
    function callback_info(xml) {


        //解析xml并显示在界面上
        if ($(xml).find('错误>错误提示').text() != "ok") {

            alert("查找数据失败!");
            return false;
        };

        var ii = 1;
        $(xml).find('主要数据').each(function (i) {
            var id = $(this).children('id').text();
            var xingming = $(this).children('xingming').text();
            var xingbie = $(this).children('xingbie').text();
            var dianhua = $(this).children('dianhua').text();
            var zhaopian = $(this).children('zhaopian').text();
            $("#userdbset").append("<img style='height:1px; width:1px;' onLoad='gjzok()' id='cjzp_" + ii + "' class='uudbdb' src='" + zhaopian + "' str_id='" + id + "' str_xingming='" + xingming + "' str_xingbie='" + xingbie + "' str_dianhua='" + dianhua + "' />");
            ii++;
           
        })

        $("#title").text("参与总人数:" + $('.uudbdb').length);
        c = $('.uudbdb').length;
        //alert($(xml).find('主要数据').text());
    }
    //ajax系统错误统一提示
    function errorForAjax(XMLHttpRequest, textStatus, errorThrown) {
        // 通常情况下textStatus和errorThown只有其中一个有值 
       alert("抱歉，系统出现问题!<br/>" + "textStatus:" + textStatus + "<br/>XMLHttpRequest.readyState:" + XMLHttpRequest.readyState + "<br/>XMLHttpRequest.status:" + XMLHttpRequest.status);
    };    //ajax统一guid生成
    function randomnumber() {
        var d = new Date();
        return (((1 + Math.random()) * 0x10000) | 0).toString(16).substring(1) + "-" + d.getFullYear() + d.getMonth() + d.getDate() + d.getHours() + d.getMinutes() + d.getSeconds() + d.getMilliseconds();
    }

    $.ajax({
        type: "POST",
        url: "/adminht/corepage/dangan/choujiang_ajax.aspx?guid=" + randomnumber(),
        dataType: "xml",
        data: "",
        success: callback_info, //请求成功
        error: errorForAjax//请求出错 
        //complete: complete//请求完成

    });



}jQuery(function ($) {    loadinfoajaxuser();})