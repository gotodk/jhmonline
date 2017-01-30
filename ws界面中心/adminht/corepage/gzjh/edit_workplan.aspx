﻿<%@ Page Title="" Language="C#" MasterPageFile="~/adminht/MasterPageMain.master" AutoEventWireup="true" CodeFile="edit_workplan.aspx.cs" Inherits="gzjh_edit_workplan" %>

<%@ Register Src="~/pucu/wuc_css.ascx" TagPrefix="uc1" TagName="wuc_css" %>
<%@ Register Src="~/pucu/wuc_content.ascx" TagPrefix="uc1" TagName="wuc_content" %>
<%@ Register Src="~/pucu/wuc_script.ascx" TagPrefix="uc1" TagName="wuc_script" %>




<asp:Content ID="Content1" ContentPlaceHolderID="sp_head" runat="Server">
    <!-- 往模板页附加的head内容 -->
    <uc1:wuc_css runat="server" ID="wuc_css" />

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="sp_daohang" runat="Server">
    <!-- 附加的本页导航栏内容 -->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sp_pagecontent" runat="Server">
    <!-- 附加的右侧主要功能切换区内容,不含导航 -->
    <uc1:wuc_content runat="server" ID="wuc_content"  />
 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="sp_script" runat="Server">

       <!-- 附加的body底部本页专属的自定义js脚本 -->
    <uc1:wuc_script runat="server" ID="wuc_script" />
         <!-- 某些字段，在编辑时禁用，不想用新页面的情况使用 -->
        <!-- 选择产品编号后，自动带入一些数据 -->
    <script type="text/javascript">
             jQuery(function ($) {
                 
                 $("#Gzxqk").closest(".form-group").hide();

                 if (getUrlParam("fff") == "1" && (getUrlParam("showinfo") == "1" || getUrlParam("showinfo") == "2")) {

                     $("#Gzxqk").closest(".form-group").show();

                     $(".c_bianji_top").hide();
                     if ($("#fifsssss_Gzhuangtai").val() == "草稿") {
                         $(".c_bianji_top").show();
                     }
                 }

                


                 //隐藏子表弹窗共享字段
       
                 if (getUrlParam("fff") != "1") {

                     //隐藏状态，并自动带入执行人
                     //$("input[name='Gjieguo']").closest(".form-group").hide();
                     $("#G_UAID").val("<%=UserSession.唯一键%>");
                     $("#xingming").val("隐藏了");
                     $("#G_UAID").closest(".form-group").hide();
                     $("#xingming").closest(".form-group").hide();
                     $("#Gzhuangtai").closest(".form-group").hide();

                     $("#Gshenheren").closest(".form-group").hide();
                     $("#Gshenheren_show").closest(".form-group").hide();
                     $("#Gshenheshijian").closest(".form-group").hide();
                     $("#Gshenheyijian").closest(".form-group").hide();
                     $("#G_BID").closest(".form-group").hide();
                 }
                 else {
                     
                   
                 }



                 //如果是从报修申请新建工作计划
                 if (getUrlParam("lzbx") == "1")
                 {
                     $("#G_BID").val(getUrlParam("G_BID"));
                     $("#G_BID").closest(".form-group").show();
                 }


                 var dfx_str_kh = "#show_searchopenyhbspgogo_G_UAID";
                 var oldzhi_kh = $(dfx_str_kh).text();
            
                 var jiancha_YYID = window.setInterval(function () {

                  
                 
                     //带入字段
                     if ($(dfx_str_kh).text() != oldzhi_kh) {
                         var re = /\[.*?\]/ig;
                         var arr = $(dfx_str_kh).text().match(re);

                         if (arr != null) {//如果能匹配成功即arr数组不为空，循环输出结果
                             for (var i = 0; i < arr.length; i++) {
                                 var arr_z = arr[i].split(':');
                                 if (arr_z[0] == "[姓名")
                                 { $("#xingming").val($.trim(arr_z[1]).replace("]", "")); }

                             }
                         }

                         oldzhi = $(dfx_str).text();
                     }
                 }, 500);
 
        });
        </script>





                <!-- 增加一些特殊处理按钮，例如提交，收货 -->
    <script type="text/javascript">
        jQuery(function ($) {

            //调用批量操作的接口
            function begin_ajax(zdyname, xuanzhongzhi, zheshiyige_FID)
            {
                $.ajax({
                    url: '/pucu/gqzidingyi.aspx?zdyname=' + zdyname + '&xuanzhongzhi=' + xuanzhongzhi + '&zheshiyige_FID=' + zheshiyige_FID,
                    type: 'post',
                    data: $('#myform_spanniu').serialize(),
                    cache: false,
                    dataType: 'html',
                    success: function (data) {
                        //显示调用接口并刷新当前页面
                        bootbox.alert({
                            message: data,
                            callback: function () {
                                var newurl = window.location.href;
                                location.href = newurl;

                            }
                        });


                    },
                    error: function () {
                        bootbox.alert('操作失败，接口调用失败！');
                    }
                });
            }


            

            function add_anniu_spsp()
            {
                //给报障申请单号增加链接，新窗口打开
                var urldanhao = $("#fifsssss_G_BID").text();
                if (urldanhao != "")
                {
                    $("#fifsssss_G_BID").html("<a href='/adminht/corepage/fwbg/add_bxsq_chayue.aspx?idforedit=" + urldanhao + "&fff=1&showinfo=2' target='_blank'>" + urldanhao + "[点击查看]</a>");
                }
                
                
                //根据现有状态，添加特殊按钮
                if ($("#fifsssss_Gzhuangtai").text() == "草稿") {
                    var bjm = "tijiaojihuago";
                    var bjm_wenben = "提交";
                    var bjm_tubiao = "fa-check blue";

                    $("#myTab").append("<li class='c_" + bjm + "_top'><button class='btn btn-white btn-info btn-bold' id='" + bjm + "_top'><i class='ace-icon fa " + bjm_tubiao + "'></i>" + bjm_wenben + "</button></li><li class='c_" + bjm + "_top'>&nbsp;&nbsp;</li>");
                    //给特殊按钮添加事件，调用批量操作的接口
                    $(document).on('click', "#" + bjm + "_top", function () {
                        
                        begin_ajax("tijiaojihua", getUrlParam("idforedit"), "160506000038")

                    });

                }
               
                //
                //
          
                if ($("#fifsssss_Gzhuangtai").text() == "提交" && getUrlParam("caozuo") == "shenhe") {
                   
                    var bjm = "shenhego";
                    var bjm_wenben = "审核/驳回";
                    var bjm_tubiao = "fa-gavel blue";

                    $("#myTab").append("<li class='c_" + bjm + "_top'><button class='btn btn-white btn-info btn-bold' id='" + bjm + "_top'><i class='ace-icon fa " + bjm_tubiao + "'></i>" + bjm_wenben + "</button></li><li class='c_" + bjm + "_top'>&nbsp;&nbsp;</li>");
                    //给特殊按钮添加事件，调用批量操作的接口
                    $(document).on('click', "#" + bjm + "_top", function () {
                        bootbox.dialog({
                            message: "<form  id='myform_spanniu'>审核意见：<br/><textarea placeholder='请输入' class='limited col-xs-12' id='ddtj_Gshenheyijian' name='ddtj_Gshenheyijian' maxlength='500' rows='5' ></textarea></form><hr/>===========",
                            title: bjm_wenben,
                            buttons: {
                                Cancel: {
                                    label: "驳回",
                                    className: "btn-default",
                                    callback: function () {
                                        begin_ajax("bohui", getUrlParam("idforedit"), "160506000037");
                                    }
                                }
                                , OK: {
                                    label: "审核通过",
                                    className: "btn-primary",
                                    callback: function () {
                                        begin_ajax("shenhe", getUrlParam("idforedit"), "160506000037");
                                    }
                                }
                            }
                        });
                       

                    });


                }




                if ($("#fifsssss_Gzhuangtai").text() == "审核" && getUrlParam("showinfo") == "1") {

                    var bjm = "zhixingqingkuanggo";
                    var bjm_wenben = "执行情况";
                    var bjm_tubiao = " fa-bookmark blue";

                    $("#myTab").append("<li class='c_" + bjm + "_top'><button class='btn btn-white btn-info btn-bold' id='" + bjm + "_top'><i class='ace-icon fa " + bjm_tubiao + "'></i>" + bjm_wenben + "</button></li><li class='c_" + bjm + "_top'>&nbsp;&nbsp;</li>");
                    //给特殊按钮添加事件，调用批量操作的接口
                    $(document).on('click', "#" + bjm + "_top", function () {
                        bootbox.dialog({
                            message: "<form  id='myform_spanniu'>新增执行情况：<br/><textarea placeholder='请输入' class='limited col-xs-12' id='ddtj_Gzxqk' name='ddtj_Gzxqk' maxlength='500' rows='5' ></textarea></form><hr/>===========",
                            title: bjm_wenben,
                            buttons: {
                                Cancel: {
                                    label: "取消",
                                    className: "btn-default",
                                    callback: function () {
                                         
                                    }
                                }
                                , OK: {
                                    label: "确认新增",
                                    className: "btn-primary",
                                    callback: function () {
                                        begin_ajax("zhixingqingkuang", getUrlParam("idforedit"), "160506000038");
                                    }
                                }
                            }
                        });


                    });


                }


            }
            
            if (getUrlParam("showinfo") == "1" || getUrlParam("showinfo") == "2") {
                //数据加载完成才执行，只执行一次
                var jiancha_bdjzwc = window.setInterval(function () {
                    if ($("#editloadinfo").hasClass("hide")) {
                        clearInterval(jiancha_bdjzwc);
                        add_anniu_spsp();
                    }

                }, 1000);
            }
            

        });
        </script>

    
         
</asp:Content>

