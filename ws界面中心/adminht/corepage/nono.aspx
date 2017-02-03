<%@ Page Title="" Language="C#" MasterPageFile="~/adminht/MasterPageMain.master" AutoEventWireup="true" CodeFile="nono.aspx.cs" Inherits="bas_edit_nono" %>

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
    <uc1:wuc_content runat="server" ID="wuc_content"  Visible="false"   />
 <div class="page-content">
     <div class="row ">
         <div class="col-xs-12 text-center">
             <img style="border:0px;" src="/mytutu/comming_soon.png" />
         </div>
     </div>
     <div class="row ">
         <div class="col-xs-12 text-center ">
             <h3 class="red">钱不够，演员未定，剧本暂无！</h3>
             <h2 class="red">没喝透，盟友未定，需求暂无！</h2>
             <h1 class="red">亲，等你来搞！</h1>
         </div>
     </div>
 </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="sp_script" runat="Server">

       <!-- 附加的body底部本页专属的自定义js脚本 -->
    <uc1:wuc_script runat="server" ID="wuc_script" />
        <!-- 某些字段，在编辑时禁用，不想用新页面的情况使用 -->
    <script type="text/javascript">
        jQuery(function ($) {
       
                 if (getUrlParam("fff") == "1") {

                      
                 }
 
        });
        </script>
</asp:Content>

