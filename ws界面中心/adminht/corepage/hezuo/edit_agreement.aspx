<%@ Page Title="" Language="C#" MasterPageFile="~/adminht/MasterPageMain.master" AutoEventWireup="true" CodeFile="edit_agreement.aspx.cs" Inherits="hezuo_edit_agreement" %>

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

        <script type="text/javascript">
            jQuery(function ($) {

              
                var dfx_str_jiafang = "#show_searchopenyhbspgogo_Ajiafang";
                var oldzhi_jiafang = $(dfx_str_jiafang).text();
                var jiancha_jiafang = window.setInterval(function () {
                    //带入字段
                    if ($(dfx_str_jiafang).text() != oldzhi_jiafang) {
                        var re = /\[.*?\]/ig;
                        var arr = $(dfx_str_jiafang).text().match(re);

                        if (arr != null) {//如果能匹配成功即arr数组不为空，循环输出结果
                            for (var i = 0; i < arr.length; i++) {
                                var arr_z = arr[i].split(':');
                                if (arr_z[0] == "[机构名称")
                                { $("#Ajiafang_name").val($.trim(arr_z[1]).replace("]", "")); }

                            }
                        }

                        oldzhi_jiafang = $(dfx_str_jiafang).text();
                    }
                }, 500);


                var dfx_str_yifang = "#show_searchopenyhbspgogo_Ayifang";
                var oldzhi_yifang = $(dfx_str_yifang).text();
                var jiancha_yifang = window.setInterval(function () {
                    //带入字段
                    if ($(dfx_str_yifang).text() != oldzhi_yifang) {
                        var re = /\[.*?\]/ig;
                        var arr = $(dfx_str_yifang).text().match(re);

                        if (arr != null) {//如果能匹配成功即arr数组不为空，循环输出结果
                            for (var i = 0; i < arr.length; i++) {
                                var arr_z = arr[i].split(':');
                                if (arr_z[0] == "[机构名称")
                                { $("#Ayifang_name").val($.trim(arr_z[1]).replace("]", "")); }

                            }
                        }

                        oldzhi_yifang = $(dfx_str_yifang).text();
                    }
                }, 500);
             

                  });
        </script>
</asp:Content>
