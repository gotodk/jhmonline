<%@ Page Title="" Language="C#" MasterPageFile="~/adminht/MasterPageMain.master" AutoEventWireup="true" CodeFile="edit_getyqm.aspx.cs" Inherits="dangan_edit_getyqm" %>

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
    <script type="text/javascript">
             jQuery(function ($) {
                 if (getUrlParam("fff") == "1") {


                 }
                 else {
                     //强制跳转到编辑自己的id。
                 //alert(GetPageName());
                    window.location.href = "/adminht/corepage/dangan/edit_getyqm.aspx?idforedit=<%=UserSession.唯一键%>&fff=1";
                 }

                 $("#title_f_id").html("申请新邀请码");
                 $("#addbutton1_top").html($("#addbutton1_top").html().replace("保存", "确认申请"));
                 $("#addbutton1").html($("#addbutton1").html().replace("保存", "确认申请"));
                 $("#fanhuishangyiye_top").hide();
                 
 
        });
        </script>
</asp:Content>

