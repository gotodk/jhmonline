<%@ Page Title="" Language="C#" MasterPageFile="~/adminht/MasterPageMain.master" AutoEventWireup="true" CodeFile="edit_qbj_add.aspx.cs" Inherits="huodong_edit_qbj_add" %>

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

            function addok_after_msgshow(msg) {
                if (msg == "成功发布情报")
                {
                    var fbz = $("input[name='Qleixing']:checked").val();;
                    bootbox.alert("发布[" + fbz + "]成功！");
                    setTimeout("window.location.href = '/adminht/corepage/huodong/list_qbj_my.aspx'; ", 2000);
                    
                }

            }

            jQuery(function ($) {

                var fblx = getUrlParam("fblx");
                if (fblx == "1")
                {
                    $("input:radio[name='Qleixing'][value='行业情报']").prop("checked", true);
                }
                if (fblx == "2")
                { $("input:radio[name='Qleixing'][value='江湖求助']").prop("checked", true); }
                if (fblx == "3")
                { $("input:radio[name='Qleixing'][value='亲朋商讯']").prop("checked", true); }
             

                  });
        </script>
</asp:Content>
