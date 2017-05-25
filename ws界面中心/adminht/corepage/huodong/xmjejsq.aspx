<%@ Page Title="" Language="C#" MasterPageFile="~/adminht/MasterPageMain.master" AutoEventWireup="true" CodeFile="xmjejsq.aspx.cs" Inherits="huodong_xmjejsq" %>

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

    <form class="form-horizontal " role="form" id="myform_zdy" novalidate="novalidate">
        <div class="row">

            <div class="col-xs-12 col-lg-12 col-md-12 col-sm-12">

                <div class="widget-box">
                    <div class="widget-header widget-header-small">
                        <h5 class="widget-title lighter">酬劳及报价模拟工具</h5>
                    </div>

                    <div class="widget-body">
                        <div class="widget-main">

                            <div class="row">
                                <div class="col-xs-12 col-sm-12">

                                         <div class="form-group">
                                        <button class="btn btn-success btn-block beginjisuan" type="button">开始执行计算</button>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label no-padding-right"><i class="light-red">*  </i>计划预计总天数：</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="input-mini xiaoshu" id="zong_jihuatianshu" value="35" />
                                            <div class="ValidErrInfo col-sm-12 no-padding-left">设置该项目预计需要多少天完成，并不是实际总人天数</div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label no-padding-right"><i class="light-red">*  </i>标准人天单价：</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="input-mini xiaoshu" id="zong_biaozhunrentian" value="1000" />
                                            <div class="ValidErrInfo col-sm-12 no-padding-left">设置标准人天价值</div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label no-padding-right"><i class="light-red">*  </i>活动经费提取比例：</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="input-mini xiaoshu" id="zong_jingfeitiqu" value="0.1" />
                                            <div class="ValidErrInfo col-sm-12 no-padding-left">设置需要保留到联盟的活动经费比例，通常是0.1</div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label no-padding-right"><i class="light-red">*  </i>联盟运作费用：</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="input-mini xiaoshu" id="zong_yunzuofeiyong" value="5000" />
                                            <div class="ValidErrInfo col-sm-12 no-padding-left">设置联盟需获得的基本运作费用(联盟利润)</div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label no-padding-right"><i class="light-red">*  </i>个人所得税税率：</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="input-mini xiaoshu" id="zong_gerenshui" value="0.03" />
                                            <div class="ValidErrInfo col-sm-12 no-padding-left">设置税务系统规定的个人所得税缴纳税率，通常是0.03</div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label no-padding-right"><i class="light-red">*  </i>业务增值税税率：</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="input-mini xiaoshu" id="zong_zengzhishui" value="0.07" />
                                            <div class="ValidErrInfo col-sm-12 no-padding-left">依据国家税务政策缴纳增值税，由山东镜与海信息科技有限公司按项目总额缴纳增值税</div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label no-padding-right"><i class="light-red">*  </i>项目签约总价格<br/>(不含增值税)：</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="col-xs-12 col-sm-5" id="zong_zongjia" value="" placeholder="自动计算" readonly="readonly" />
                                                <div class="ValidErrInfo col-sm-12 no-padding-left">项目报价总价格=标准项目人天单价*项目实际总人天数+联盟基本运作费用评估</div>

                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label no-padding-right"><i class="light-red">*  </i>增值税交税金额：</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="col-xs-12 col-sm-5" id="zong_zesje" value="" placeholder="自动计算" readonly="readonly" />
                                                <div class="ValidErrInfo col-sm-12 no-padding-left">增值税交税金额=项目签约总价格*业务增值税税率</div>

                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label no-padding-right"><i class="light-red">*  </i>联盟活动经费合计：</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="col-xs-12 col-sm-5" id="zong_jingfeiheji" value="" placeholder="自动计算" readonly="readonly" />
                                                <div class="ValidErrInfo col-sm-12 no-padding-left">参与人员需要缴纳的活动经费总金额，活动经费为公共资产</div>

                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label no-padding-right"><i class="light-red">*  </i>实际总人天数合计：</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="col-xs-12 col-sm-5" id="zong_zongrentian" value="" placeholder="自动计算" readonly="readonly" />
                                                <div class="ValidErrInfo col-sm-12 no-padding-left">所有参与人员项目实际参与人天的总和</div>

                                        </div>
                                    </div>

                          

                                    <hr />

                                    <div class="form-group">
                                        <button class="btn btn-primary btn-block" id="addren" type="button">添加人员，当前人数  1  人</button>
                                    </div>
                                    <hr />

                                    <div id="meigeren">

                                 
                                    <div id="ziquyu__1" class="zicengbiaoji">

                                    <div style="background-color: lightyellow; padding: 15px;">
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label no-padding-right"><i class="light-red">*  </i>模拟参与姓名：</label>
                                            <div class="col-sm-10 ">


                                                <div class="input-group col-xs-12 col-sm-5">

                                                    <input type="text" id="zi_xingming__1" class="form-control search-query" value="参与者__1">

                                                    <span class="input-group-btn">
                                                        <button class=" btn  btn-sm btn-danger fordelb" type="button" id="delgo" dqz="__1">
                                                            <span class="ace-icon fa fa-trash-o icon-on-right bigger-110"></span>
                                                            移除人员
                                                        </button>
                                                    </span>
                                                </div>
                                                <div class="ValidErrInfo col-sm-12 no-padding-left">模拟一个参与人员姓名</div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label no-padding-right"><i class="light-red">*  </i>个人技能系数：</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="input-mini xiaoshu" id="zi_jineng__1" value="0.9" />
                                                <div class="ValidErrInfo col-sm-12 no-padding-left">模拟个人技能系数基准值，应在0.6到1.2之间</div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label no-padding-right"><i class="light-red">*  </i>项目实际参与人天：</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="input-mini xiaoshu" id="zi_canyurentian__1" value="10" />
                                                <div class="ValidErrInfo col-sm-12 no-padding-left">此人实际参与项目天数评估值</div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                        <label class="col-sm-2 control-label no-padding-right"><i class="light-red">*  </i>项目虚拟人天：</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="col-xs-12 col-sm-5" id="zi_xunirentian__1" value="" placeholder="自动计算" readonly="readonly" />
                                                <div class="ValidErrInfo col-sm-12 no-padding-left">虚拟项目人天=个人技能系数*此人实际参与人天</div>

                                        </div>
                                    </div>

                                            <div class="form-group">
                                        <label class="col-sm-2 control-label no-padding-right"><i class="light-red">*  </i>标准劳动所得：</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="col-xs-12 col-sm-5" id="zi_biaozhunlaodong__1" value="" placeholder="自动计算" readonly="readonly" />
                                                <div class="ValidErrInfo col-sm-12 no-padding-left">标准劳动所得金额=虚拟项目人天*标准人天单价</div>

                                        </div>
                                    </div>


                                        <div class="form-group">
                                        <label class="col-sm-2 control-label no-padding-right"><i class="light-red">*  </i>联盟活动经费：</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="col-xs-12 col-sm-5" id="zi_jnjf__1" value="" placeholder="自动计算" readonly="readonly" />
                                                <div class="ValidErrInfo col-sm-12 no-padding-left">联盟活动经费(上限5万元)=标准劳动所得金额*10%</div>

                                        </div>
                                    </div>

                                        <div class="form-group">
                                        <label class="col-sm-2 control-label no-padding-right"><i class="light-red">*  </i>个人最终劳动所得：</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="col-xs-12 col-sm-5" id="zi_zuizhongsuode__1" value="" placeholder="自动计算" readonly="readonly" />
                                                <div class="ValidErrInfo col-sm-12 no-padding-left">个人最终劳动所得=标准劳动所得金额-联盟活动经费</div>

                                        </div>
                                    </div>


                                        <div class="form-group">
                                        <label class="col-sm-2 control-label no-padding-right"><i class="light-red">*  </i>代扣代缴金额：</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="col-xs-12 col-sm-5" id="zi_daikoujiao__1" value="" placeholder="自动计算" readonly="readonly" />
                                                <div class="ValidErrInfo col-sm-12 no-padding-left">代扣代缴金额=个人实际所得*个人技能系数*个人所得税税率</div>

                                        </div>
                                    </div>


                                        <div class="form-group">
                                        <label class="col-sm-2 control-label no-padding-right"><i class="light-red">*  </i>最终发放金额：</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="col-xs-12 col-sm-5" id="zi_fafang__1" value="" placeholder="自动计算" readonly="readonly" />
                                                <div class="ValidErrInfo col-sm-12 no-padding-left">最终发放金额=个人最终劳动所得-代扣代缴金额</div>

                                        </div>
                                    </div>


                                    </div>
                                    <hr />
                                    </div>

                                       </div>



                                              <hr />
                                    <div class="form-group">
                                        <button class="btn btn-success btn-block beginjisuan" type="button">开始执行计算</button>
                                    </div>

                                </div>

                            </div>


                        </div>

                    </div>
                </div>

             

            </div>


        </div>
    </form>
    <!-- 附加的右侧主要功能切换区内容,不含导航 -->
    <uc1:wuc_content runat="server" ID="wuc_content" Visible="false" />

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="sp_script" runat="Server">

    <!-- 附加的body底部本页专属的自定义js脚本 -->
    <uc1:wuc_script runat="server" ID="wuc_script" />

    <script type="text/javascript">



        jQuery(function ($) {
            $('.xiaoshu').ace_spinner({ value: 0, min: 0, max: 999999, step: 0.01, touch_spinner: true, icon_up: 'ace-icon fa fa-caret-up', icon_down: 'ace-icon fa fa-caret-down' });


            var zi_count = 1;

            $(document).on('click', "#addren", function () {

             

                zi_count++;
                var newZiContent = $("#ziquyu__1").clone();
                newZiContent.attr("id", "ziquyu__" + zi_count);

                newZiContent.find("[type='text']").each(function () {
                    var oldid = $(this).attr("id");
                    var newid = oldid.replace("__1", "__" + zi_count);
                    $(this).attr("id", newid);

                    //重置值
                    if (oldid == "zi_xingming__1")
                    {
                        $(this).val("参与者__" + zi_count);
                    }
                    if (oldid == "zi_jineng__1") {
                        $(this).val("0.9");
                    }
                    if (oldid == "zi_canyurentian__1") {
                        $(this).val("10");
                    }
                    if (oldid == "zi_xunirentian__1") {
                        $(this).val("");
                    }
                    if (oldid == "zi_biaozhunlaodong__1") {
                        $(this).val("");
                    }
                    if (oldid == "zi_jnjf__1") {
                        $(this).val("");
                    }
                    if (oldid == "zi_zuizhongsuode__1") {
                        $(this).val("");
                    }
                    if (oldid == "zi_daikoujiao__1") {
                        $(this).val("");
                    }
                    if (oldid == "zi_fafang__1") {
                        $(this).val("");
                    }


                });

                newZiContent.find("[dqz='__1']").each(function () {
                    $(this).attr("dqz", "__" + zi_count);
                });
                newZiContent.hide();
                $("#meigeren").prepend(newZiContent);
                newZiContent.fadeIn("slow");
 

                //重新显示当前人数
                $("#addren").text("添加人员，当前人数  " + $(".zicengbiaoji").length + "  人");
            });

            $(document).on('click', ".fordelb", function () {
                if ($(this).attr("dqz") == "__1") {
                    bootbox.alert("这是保留元素，不能移除");
                    return;
                }
                else {
                   
                    var be_del_obj = $("#ziquyu" + $(this).attr("dqz"));
                    //$("#ziquyu" + $(this).attr("dqz")).fadeOut("slow");
                    //$("#ziquyu" + $(this).attr("dqz")).remove();


                    be_del_obj.fadeTo("slow", 0.01, function () {//fade
                        $(this).slideUp("slow", function () {//slide up
                            $(this).remove();//then remove from the DOM
                            //重新显示当前人数
                            $("#addren").text("添加人员，当前人数  " + $(".zicengbiaoji").length + "  人");
                        });
                    });
                   
                }
              
                //alert($(this).attr("dqz"));
            });


            $(document).on('click', ".beginjisuan", function () {
                //开始计算
                var zong_jihuatianshu = $("#zong_jihuatianshu").val() * 10000 / 10000; //计划预计总天数
                var zong_biaozhunrentian = $("#zong_biaozhunrentian").val() * 10000 / 10000; //标准人天单价
                var zong_jingfeitiqu = $("#zong_jingfeitiqu").val() * 10000 / 10000; //活动经费提取比例
                var zong_yunzuofeiyong = $("#zong_yunzuofeiyong").val() * 10000 / 10000; //联盟运作费用
                var zong_gerenshui = $("#zong_gerenshui").val() * 10000 / 10000; //个人所得税税率
                var zong_zengzhishui = $("#zong_zengzhishui").val() * 10000 / 10000;  //业务增值税税率

                var zong_zongjia = 0.00; //项目签约总价格
                var zong_zesje = 0.00;  //增值税交税金额
                var zong_jingfeiheji = 0.00;  //联盟活动经费合计
                var zong_zongrentian = 0.00;  //实际总人天数合计
                $(".zicengbiaoji").each(function () {
                    var hz = $(this).attr("id").split("__")[1];
                    
                    var zi_jineng = $("#zi_jineng" + "__" + hz).val() * 10000 / 10000; //个人技能系数
                    var zi_canyurentian = $("#zi_canyurentian" + "__" + hz).val() * 10000 / 10000;  //项目实际参与人天

                    $("#zi_xunirentian" + "__" + hz).val((zi_canyurentian * zi_jineng).toFixed(2)); //项目虚拟人天

                    $("#zi_biaozhunlaodong" + "__" + hz).val(($("#zi_xunirentian" + "__" + hz).val() * 10000 / 10000 * zong_biaozhunrentian).toFixed(2)); //标准劳动所得

                    $("#zi_jnjf" + "__" + hz).val(($("#zi_biaozhunlaodong" + "__" + hz).val() * 10000 / 10000 * zong_jingfeitiqu).toFixed(2)); //联盟活动经费

                    $("#zi_zuizhongsuode" + "__" + hz).val(($("#zi_biaozhunlaodong" + "__" + hz).val() * 10000 / 10000 - $("#zi_jnjf" + "__" + hz).val() * 10000 / 10000).toFixed(2));  //个人最终劳动所得

                    $("#zi_daikoujiao" + "__" + hz).val(($("#zi_zuizhongsuode" + "__" + hz).val() * 10000 / 10000 * zong_gerenshui).toFixed(2));  //代扣代缴金额

                    $("#zi_fafang" + "__" + hz).val((($("#zi_zuizhongsuode" + "__" + hz).val() * 10000 / 10000) - ($("#zi_daikoujiao" + "__" + hz).val() * 10000 / 10000)).toFixed(2));  //最终发放金额

                    zong_zongrentian = zong_zongrentian + zi_canyurentian;
                    zong_jingfeiheji = zong_jingfeiheji + $("#zi_jnjf" + "__" + hz).val() * 10000 / 10000;
                    
                    
                });

                zong_zongjia = zong_biaozhunrentian * zong_zongrentian;
                zong_zesje = zong_zongjia * zong_zengzhishui;

                $("#zong_zongjia").val(zong_zongjia.toFixed(2));
                $("#zong_zesje").val(zong_zesje.toFixed(2));

                $("#zong_zongrentian").val(zong_zongrentian.toFixed(2));
                $("#zong_jingfeiheji").val(zong_jingfeiheji.toFixed(2));

                bootbox.alert("计算完成，结果已更新！");
            });

        });
    </script>
</asp:Content>
