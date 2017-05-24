<%@ Page Title="" Language="C#" MasterPageFile="~/adminht/MasterPageMain.master" AutoEventWireup="true" CodeFile="edit_cysw.aspx.cs" Inherits="huodong_edit_cysw" %>

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


          <div class="row"><div class="col-xs-12 col-lg-6 col-md-6 col-sm-6">

            <div class="widget-box">
											<div class="widget-header widget-header-small">
												<h5 class="widget-title lighter">我要申请参与此项目</h5>
											</div>

											<div class="widget-body">
												<div class="widget-main">
													<form class="form-search" id="myform_spanniu">
														<div class="row">
															<div class="col-xs-12 col-sm-12">
																<div class="input-group">
																	<span class="input-group-addon">
																		<i class="ace-icon fa fa-check"></i>
																	</span>

																	<input type="text" class="form-control search-query" id="lianxifangshi" name="lianxifangshi" placeholder="输入联系方式">
																	<span class="input-group-btn">
																		<button type="button" class="btn btn-danger btn-sm" id="canyugo">
																			<span class="ace-icon fa fa-check icon-on-right bigger-110"></span>
																			提交申请
																		</button>
																	</span>
																</div>
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>
                     </div></div>

    <!-- 附加的右侧主要功能切换区内容,不含导航 -->
    <uc1:wuc_content runat="server" ID="wuc_content"  />
 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="sp_script" runat="Server">

       <!-- 附加的body底部本页专属的自定义js脚本 -->
    <uc1:wuc_script runat="server" ID="wuc_script" />

        <script type="text/javascript">

         

            jQuery(function ($) {

                //调用批量操作的接口
                function begin_ajax(zdyname, xuanzhongzhi, zheshiyige_FID) {
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
                //给预约按钮添加事件，调用批量操作的接口
                $(document).on('click', "#canyugo", function () {

                    begin_ajax("kaishicanyu", getUrlParam("idforedit"), "170524000129")

                });

                  });
        </script>
</asp:Content>
