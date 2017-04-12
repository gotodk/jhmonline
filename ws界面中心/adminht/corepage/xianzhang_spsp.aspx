<%@ Page Title="" Language="C#" MasterPageFile="~/adminht/MasterPageMain.master" AutoEventWireup="true" CodeFile="xianzhang_spsp.aspx.cs" Inherits="bas_edit_nono" %>

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
  


     <p class="MsoListParagraph" style="margin-left:48px">
    <a><span style="font-family: 宋体;">用于补充联盟宪章所规定的未尽事宜，规范执行过程中详细的规则和方案。</span></a>
</p>
<p class="MsoListParagraph" style="margin-left:48px">
    <a><strong><span style="font-size:21px">第一章.<span style="font-weight: normal;font-stretch: normal;font-size: 9px;font-family: &#39;Times New Roman&#39;">&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><strong><span style="font-size:21px">补充条款的作用</span></strong></a>
</p>
<p class="MsoListParagraph" style="margin-left:48px;text-indent:0">
    <span style="font-family:宋体">此补充条款依据执行情况，定期进行调整修订。</span>
</p>
<p class="MsoListParagraph" style="margin-left:48px;text-indent:0">
    <span style="font-family:宋体">联盟宪章所涉及的内容，执行优先权高于此补充条款。</span>
</p>
<p class="MsoListParagraph" style="margin-left:48px;text-indent:0">
    &nbsp;
</p>
<p class="MsoListParagraph" style="margin-left:48px">
    <a><strong><span style="font-size:21px">第二章.<span style="font-weight: normal;font-stretch: normal;font-size: 9px;font-family: &#39;Times New Roman&#39;">&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><strong><span style="font-size:21px">贡献度和级别晋升详细规则</span></strong></a>
</p>
<p class="MsoListParagraph" style="margin-left:72px">
    <span style="font-family:宋体">1.<span style="font-stretch: normal;font-size: 9px;font-family: &#39;Times New Roman&#39;">&nbsp; </span></span><span style="font-family:宋体">参与联盟各项事务、活动、意见、系统操作等事项，均可增加个人贡献度。个人贡献度以10度为基本单位，不同情况，所增加贡献度不同。部分贡献度在系统中进行相应操作后自动增减，某些情况贡献度须在系统申请，审核后增减。</span>
</p>
<p class="MsoListParagraph" style="margin-left:72px;text-indent:0">
    <span style="font-family:宋体">&nbsp;</span>
</p>
<p class="MsoListParagraph" style="margin-left:72px">
    <span style="font-family:宋体">2.<span style="font-stretch: normal;font-size: 9px;font-family: &#39;Times New Roman&#39;">&nbsp; </span></span><span style="font-family:宋体">贡献度增加规则表如下：</span>
</p>
<table>
    <tbody>
        <tr class="firstRow">
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">事项</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">贡献度值</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">增减途径</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">备注</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">项目协助参与</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">+20</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">自动</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">参与某次项目在5人天(含5天)以内的</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">项目深度参与</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">+40</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">自动</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">参与某次项目在5人天以上的</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">项目组织协调</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">+50</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">自动</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">作为某次项目的组织者</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">项目发起</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">+30</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">自动</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">作为某次项目的发起人</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">发起活动</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">+20</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">自动</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">访问联盟事务大厅主要功能</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">参与活动</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">+30</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">自动</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">参与某次联盟活动，不同活动级别贡献值不同</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">活动突出贡献</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">+40</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">人工</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">例如活动中联系协调困难稀缺资源，节约成本的</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">参与活动并作为负责人</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">+40</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">自动</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">三负责人之一的</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">访问布告大厅</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">+2</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">自动</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">访问联盟事务大厅主要功能，每天仅限第一次计分</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">月度活跃盟友</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">+30</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">人工</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">人工评审，主要是联盟聊天群，每月三人</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">提出建议</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">+2</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">自动</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">访问联盟事务大厅主要功能，每天仅限第一次计分</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">采纳建议并成效显著</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">+30</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">人工</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">访问联盟事务大厅主要功能</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">邀请新盟友加入</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">+10</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">自动</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">邀请一个新盟友加入</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">完善个人档案</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">+20</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">自动</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">完善不同类型个人档案</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">联盟等级晋升</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">+100</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">自动</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">晋升一次</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">联盟等级下降</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">-120</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">自动</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">等价下降一次</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">延误项目进度一天</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">-30</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">人工</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">有精确时间要求的项目</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">提交共享源码</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">+60</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">人工</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">在开源管理器中提交的</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">阅读联盟规范</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">+10</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">自动</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">在系统阅读，并停留界面超过10分钟。</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">其他突出贡献</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">+50</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">人工</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">经过高级盟主认可的贡献</span>
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p class="MsoListParagraph" style="margin-left:48px;text-indent:0">
    <span style="font-family:宋体">&nbsp;</span>
</p>
<p class="MsoListParagraph" style="margin-left:48px;text-indent:0">
    &nbsp;
</p>
<p class="MsoListParagraph" style="margin-left:48px">
    <a><strong><span style="font-size:21px">第三章.<span style="font-weight: normal;font-stretch: normal;font-size: 9px;font-family: &#39;Times New Roman&#39;">&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><strong><span style="font-size:21px">协作项目酬劳分配细则</span></strong></a>
</p>
<p class="MsoListParagraph" style="margin-left:72px">
    <span style="font-family:宋体">1.<span style="font-stretch: normal;font-size: 9px;font-family: &#39;Times New Roman&#39;">&nbsp; </span></span><span style="font-family:宋体">由镜海盟组织，并由盟友参与的与协作方共同推进的项目，以山东镜与海信息科技有限公司名义签约并开具发票。 项目合作总价格=标准项目人天单价*项目实际总人天数+联盟基本运作费用评估。</span>
</p>
<p class="MsoListParagraph" style="margin-left:72px;text-indent:0">
    <span style="font-family:宋体">&nbsp;</span>
</p>
<p class="MsoListParagraph" style="margin-left:72px">
    <span style="font-family:宋体">2.<span style="font-stretch: normal;font-size: 9px;font-family: &#39;Times New Roman&#39;">&nbsp; </span></span><span style="font-family:宋体">按照以下规则分配劳动所得：</span>
</p>
<p class="MsoListParagraph" style="margin-left:99px">
    <span style="font-family:宋体">a)<span style="font-stretch: normal;font-size: 9px;font-family: &#39;Times New Roman&#39;">&nbsp;&nbsp; </span></span><span style="font-family:宋体">系统评估个人技能系数，本系数结合个人学历、技能数量和水平、所在公司规模、历史贡献度等参数计算。个人技能系数限定在0.7到1.1之间。</span>
</p>
<p class="MsoListParagraph" style="margin-left:99px">
    <span style="font-family:宋体">b)<span style="font-stretch: normal;font-size: 9px;font-family: &#39;Times New Roman&#39;">&nbsp;&nbsp; </span></span><span style="font-family:宋体">系统评估分解个人项目实际人天，按照个人分工的计划人天计算。</span>
</p>
<p class="MsoListParagraph" style="margin-left:99px">
    <span style="font-family:宋体">c)<span style="font-stretch: normal;font-size: 9px;font-family: &#39;Times New Roman&#39;">&nbsp;&nbsp; </span></span><span style="font-family:宋体">个人技能系数*个人项目实际人天=虚拟项目人天</span>
</p>
<p class="MsoListParagraph" style="margin-left:99px">
    <span style="font-family:宋体">d)<span style="font-stretch: normal;font-size: 9px;font-family: &#39;Times New Roman&#39;">&nbsp;&nbsp; </span></span><span style="font-family:宋体">虚拟项目人天*标准项目人天单价=标准劳动所得金额</span>
</p>
<p class="MsoListParagraph" style="margin-left:99px">
    <span style="font-family:宋体">e)<span style="font-stretch: normal;font-size: 9px;font-family: &#39;Times New Roman&#39;">&nbsp;&nbsp; </span></span><span style="font-family:宋体">标准劳动所得金额*10%=联盟活动经费(上限5万元)</span>
</p>
<p class="MsoListParagraph" style="margin-left:99px">
    <span style="font-family:宋体">f)<span style="font-stretch: normal;font-size: 9px;font-family: &#39;Times New Roman&#39;">&nbsp;&nbsp; </span></span><span style="font-family:宋体">标准劳动所得金额-联盟活动经费=个人最终劳动所得</span>
</p>
<p class="MsoListParagraph" style="margin-left:72px;text-indent:0">
    <span style="font-family:宋体">&nbsp;</span>
</p>
<p class="MsoListParagraph" style="margin-left:72px">
    <span style="font-family:宋体">3.<span style="font-stretch: normal;font-size: 9px;font-family: &#39;Times New Roman&#39;">&nbsp; </span></span><span style="font-family:宋体">计算示例： </span>
</p>
<p style="margin-left:72px">
    <span style="font-family:宋体">某项目，计划制定预计35人天，标准项目人天单价为1500元，联盟运作费用5000元，合计项目总金额57500元。</span>
</p>
<p style="margin-left:72px">
    <span style="font-family:宋体">李某个人技能系数为0.9， 其在项目中合计分工人天为20人/天。</span>
</p>
<p style="margin-left:72px">
    <span style="font-family:宋体">王某个人技能系数为1.1， 其在项目中合计分工人天为10人/天。</span>
</p>
<p style="margin-left:72px">
    <span style="font-family:宋体">张某个人技能系数为0.8， 其在项目中合计分工人天为5人/天。</span>
</p>
<p style="margin-left:72px">
    <span style="font-family:宋体">则，劳动分配表如下：</span>
</p>
<p>
    <span style="font-family:宋体">&nbsp;</span>
</p>
<table style="width: 828px;">
    <tbody>
        <tr class="firstRow">
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;"></td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">个人技能系数</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">项目实际人天</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">项目虚拟人天</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">项目标准人天单价</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">标准劳动所得金额</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">联盟运作费</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">联盟活动经费</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">用个人最终劳动所得</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">李某</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">0.9</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">20</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">20*0.9=18</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">1500</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">18*1500=27000</span>
                </p>
            </td>
            <td rowspan="3" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p style="text-align:center">
                    <span style="font-size:12px;font-family:宋体">--</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">27000*10%=2700</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">27000-2700=24300</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">王某</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">1.1</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">10</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">10*1.1=11</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">1500</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">11*1500=16500</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">16500*10%=1650</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">16500-1650=14850</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">张某</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">0.8</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">5</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">5*0.8=4</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">1500</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">4*1500=6000</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">6000*10%=600</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">6000-600=5400</span>
                </p>
                <p>
                    <span style="font-size:12px;font-family:宋体">&nbsp;</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">联盟</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">--</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">--</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">--</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">--</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">--</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">5000</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">2700+1650+600=4950</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p>
                    <span style="font-size:12px;font-family:宋体">5000+4950=9950</span>
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    <span style="font-family:宋体">&nbsp;</span>
</p>
<p class="MsoListParagraph" style="margin-left:72px">
    <span style="font-family:宋体">4.<span style="font-stretch: normal;font-size: 9px;font-family: &#39;Times New Roman&#39;">&nbsp; </span></span><span style="font-family:宋体">维护费用规则：</span>
</p>
<p style="margin-left:70px">
    <span style="font-family:宋体">远期服务费用，或项目后期升级费用，单独签订协议，按照相同公式计算。</span>
</p>
<p style="margin-left:70px">
    <span style="font-family:宋体">项目酬劳付款，在项目验收统一进行计算和付款。</span>
</p>
<p style="margin-left:70px">
    <span style="font-family:宋体">&nbsp;</span>
</p>
<p class="MsoListParagraph" style="margin-left:72px">
    <span style="font-family:宋体">5.<span style="font-stretch: normal;font-size: 9px;font-family: &#39;Times New Roman&#39;">&nbsp; </span></span><span style="font-family:宋体">个人所得税的处理:</span>
</p>
<p style="margin-left:70px">
    <span style="font-family:宋体">依据国家税务政策 ，最终劳动所得应该缴纳个人所得税，规则如下:</span>
</p>
<p style="margin-left:70px">
    <span style="font-family:宋体">代扣代缴金额=个人实际所得*能力系数*税率系数(0.03)</span>
</p>
<p style="margin-left:70px">
    <span style="font-family:宋体">由山东镜与海信息科技有限公司代扣代缴个人所得税。</span>
</p>
<p style="margin-left:70px">
    <span style="font-family:宋体">&nbsp;</span>
</p>
<p class="MsoListParagraph" style="margin-left:72px">
    <span style="font-family:宋体">6.<span style="font-stretch: normal;font-size: 9px;font-family: &#39;Times New Roman&#39;">&nbsp; </span></span><span style="font-family:宋体">增值税的处理：</span>
</p>
<p style="margin-left:70px">
    <span style="font-family:宋体">依据国家税务政策缴纳增值税，由山东镜与海信息科技有限公司按项目总额缴纳增值税。</span>
</p>
<p>
    &nbsp;
</p>
<p class="MsoListParagraph" style="margin-left:48px">
    <a><strong><span style="font-size:21px">第四章.<span style="font-weight: normal;font-stretch: normal;font-size: 9px;font-family: &#39;Times New Roman&#39;">&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><strong><span style="font-size:21px">参与活动经费使用细则</span></strong></a>
</p>
<p class="MsoListParagraph" style="margin-left:48px">
    <span style="font-family: 宋体">由镜海盟组织或协办的联盟日常活动，其活动费用从联盟活动经费中予以补贴，补贴金额系统根据历史贡献值自动计算。某些活动，若参与名额因客观条件所限(如资金限制、协办方要求等)，依据报名先后顺序和报名总人数，扩大5倍范围后随机抽取。</span>
</p>
<p class="MsoListParagraph" style="margin-left:48px;text-indent:0">
    <span style="font-family:宋体">&nbsp;</span>
</p>
<p class="MsoListParagraph" style="margin-left:48px;text-indent:0">
    <span style="font-family:宋体">联盟活动级别分为“一级活动”、“二级活动”、“三级活动”，活动级别由联盟高级管理人员确定。</span>
</p>
<p class="MsoListParagraph" style="margin-left:48px;text-indent:0">
    <span style="font-family:宋体">&nbsp;</span>
</p>
<p class="MsoListParagraph" style="margin-left:72px">
    <span style="font-family:宋体">1.<span style="font-stretch: normal;font-size: 9px;font-family: &#39;Times New Roman&#39;">&nbsp; </span></span><span style="font-family:宋体">一级活动</span>
</p>
<p class="MsoListParagraph" style="margin-left:72px;text-indent:0">
    <span style="font-family:宋体">所有费用由联盟经费全额补贴，参与者无需缴纳任何费用。</span>
</p>
<p class="MsoListParagraph" style="margin-left:72px;text-indent:0">
    <span style="font-family:宋体">&nbsp;</span>
</p>
<p class="MsoListParagraph" style="margin-left:72px">
    <span style="font-family:宋体">2.<span style="font-stretch: normal;font-size: 9px;font-family: &#39;Times New Roman&#39;">&nbsp; </span></span><span style="font-family:宋体">二级活动</span>
</p>
<p class="MsoListParagraph" style="margin-left:72px">
    <span style="font-family: 宋体">由联盟依据规则给予补贴，三责任可获得全额补贴，无需缴纳任何费用。其他参与人员获得部分补贴，缴纳少量费用。 盟友应提前缴纳预算押金，活动结束后，根据实际发生费用公式情况以及补贴公式，扣除个人实际应缴费用后给予退还。</span>
</p>
<p class="MsoListParagraph" style="margin-left:72px">
    <span style="font-family: 宋体">联盟二级活动经费补贴公式:</span>
</p>
<p class="MsoListParagraph" style="margin-left:72px">
    <span style="font-family: 宋体">人均活动费用=活动实际发生费用/参与活动人数</span>
</p>
<p class="MsoListParagraph" style="margin-left:72px">
    <span style="font-family: 宋体">个人补贴费用比例=（10-参与人贡献度高低排名顺序号）*10 /100</span>
</p>
<p class="MsoListParagraph" style="margin-left:72px">
    <span style="font-family: 宋体">个人需缴纳费用=人均活动费用*(1-个人补贴费用比例)</span>
</p>
<p class="MsoListParagraph" style="margin-left:72px;text-indent:0">
    <span style="font-family:宋体">例如: 某次活动实际总费用8000元 ，参与人数8人，其中三人为三责任人，默认全额补贴，则人均活动费用为1000元。 则本次活动补贴情况如下：</span>
</p>
<table>
    <tbody>
        <tr class="firstRow">
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;"></td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">人均活动费用</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">贡献度排序号</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">个人补贴比例</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">联盟补贴金额</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">个人实际缴纳金额</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">王某</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">1000</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">1</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">0.9</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">900</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">100</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">李某</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">1000</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">2</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">0.8</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">800</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">200</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">张某</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">1000</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">3</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">0.7</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">700</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">300</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">钱某</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">1000</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">4</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">0.6</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">600</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">400</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">赵某</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">1000</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">5</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">0.5</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">500</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">500</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">责任人A</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">1000</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">--</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">1</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">1000</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">0</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">责任人B</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">1000</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">--</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">1</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">1000</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">0</span>
                </p>
            </td>
        </tr>
        <tr>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">责任人C</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">1000</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">--</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">1</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">1000</span>
                </p>
            </td>
            <td valign="top" style="border: 1px solid rgb(0, 0, 0); padding: 0px 7px;">
                <p class="MsoListParagraph" style="text-indent:0">
                    <span style="font-family:宋体">0</span>
                </p>
            </td>
        </tr>
    </tbody>
</table>
<p>
    <span style="font-family:宋体">&nbsp;</span>
</p>
<p class="MsoListParagraph" style="margin-left:72px">
    <span style="font-family:宋体">3.<span style="font-stretch: normal;font-size: 9px;font-family: &#39;Times New Roman&#39;">&nbsp; </span></span><span style="font-family:宋体">三级活动</span>
</p>
<p class="MsoListParagraph" style="margin-left:72px;text-indent:0">
    <span style="font-family:宋体">为特殊的商业活动，不从联盟活动经费中给予补贴。</span>
</p>
<p class="MsoListParagraph" style="margin-left:48px;text-indent:0">
    &nbsp;
</p>
<p>
    &nbsp;
</p>
<p class="MsoListParagraph" style="margin-left:48px">
    <a><strong><span style="font-size:21px">第五章.<span style="font-weight: normal;font-stretch: normal;font-size: 9px;font-family: &#39;Times New Roman&#39;">&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><strong><span style="font-size:21px">联盟身份冻结机制</span></strong></a>
</p>
<p class="MsoListParagraph" style="margin-left:48px">
    <span style="font-family: 宋体">为保持联盟活跃性和持续关注性，要求盟友定期访问联盟事务大厅。每次访问均相应增加贡献度。</span>
</p>
<p class="MsoListParagraph" style="margin-left:48px">
    <span style="font-family: 宋体">连续超过30天未访问的，系统将自动开始扣减联盟贡献度，每天扣减2度，当联盟贡献度扣减至零度时，系统自动冻结账号，视为自动退出联盟。</span>
</p>
<p class="MsoListParagraph" style="margin-left:48px">
    <span style="font-family: 宋体">因特殊情况导致贡献度清零的，可向联盟申诉，联盟评估后，可驳回申诉或恢复原有贡献度。</span>
</p>
<p>
    <br/>
</p>



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

