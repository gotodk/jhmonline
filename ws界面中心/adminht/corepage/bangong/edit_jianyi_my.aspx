<%@ Page Title="" Language="C#" MasterPageFile="~/adminht/MasterPageMain.master" AutoEventWireup="true" CodeFile="edit_jianyi_my.aspx.cs" Inherits="bangong_edit_jianyi_my" %>

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

                //编辑界面
                if (getUrlParam("fff") == "1" && getUrlParam("showinfo") != "1" && getUrlParam("showinfo") != "2") {
                    $("#JYfankui").closest(".form-group").hide();
                    $("#JYfankui_ren").closest(".form-group").hide();
                    $("#JYfankui_ren_name").closest(".form-group").hide();
                    $("#JYfankui_time").closest(".form-group").hide();
                    $("#JYcaina").closest(".form-group").hide();
                    $("#JYfk").closest(".form-group").hide();
                }
                //新增界面
                if (getUrlParam("fff") != "1") {
                    $("#JYfankui").closest(".form-group").hide();
                    $("#JYfankui_ren").closest(".form-group").hide();
                    $("#JYfankui_ren_name").closest(".form-group").hide();
                    $("#JYfankui_time").closest(".form-group").hide();
                    $("#JYcaina").closest(".form-group").hide();
                    $("#JYfk").closest(".form-group").hide();
                }

                  });
        </script>
</asp:Content>
