using System;
using System.Collections.Generic;
using System.Web;
using FMDBHelperClass;
using FMipcClass;
using System.Collections;
using System.Data;
using FMPublicClass;
using System.Numerics;
using System.Web.Script.Serialization;

public class NoReSet_170523000071
{
 

    /// <summary>
    /// 初始化返回值数据集,执行结果只有两种ok和err(大多数情况是这个标准)
    /// </summary>
    /// <returns></returns>
    private DataSet initReturnDataSet()
    {
        DataSet ds = new DataSet();
        DataTable auto2 = new DataTable();
        auto2.TableName = "返回值单条";
        auto2.Columns.Add("执行结果");
        auto2.Columns.Add("提示文本");
        auto2.Columns.Add("附件信息1");
        auto2.Columns.Add("附件信息2");
        auto2.Columns.Add("附件信息3");
        auto2.Columns.Add("附件信息4");
        auto2.Columns.Add("附件信息5");
        ds.Tables.Add(auto2);
        return ds;
    }

    /// <summary>
    /// 增加数据
    /// </summary>
    /// <param name="parameter_forUI">前台表单传来的参数</param>
    /// <returns></returns>
    public DataSet NRS_ADD(DataTable parameter_forUI)
    {

         
        return null;
    }

    /// <summary>
    /// 编辑数据
    /// </summary>
    /// <param name="parameter_forUI">前台表单传来的参数</param>
    /// <returns></returns>
    public DataSet NRS_EDIT(DataTable parameter_forUI)
    {

        //接收转换参数
        Hashtable ht_forUI = new Hashtable();
        for (int i = 0; i < parameter_forUI.Rows.Count; i++)
        {
            ht_forUI[parameter_forUI.Rows[i]["参数名"].ToString()] = parameter_forUI.Rows[i]["参数值"].ToString();
        }


        //初始化返回值
        DataSet dsreturn = initReturnDataSet().Clone();
        dsreturn.Tables["返回值单条"].Rows.Add(new string[] { "err", "初始化" });

        //参数合法性各种验证，这里省略
        if (ht_forUI["idforedit"].ToString().Trim() == "")
        {
            dsreturn.Tables["返回值单条"].Rows[0]["执行结果"] = "err";
            dsreturn.Tables["返回值单条"].Rows[0]["提示文本"] = "没有明确的修改目标！";
            return dsreturn;
        }
        //开始真正的处理，这里只是演示，所以直接在这里写业务逻辑代码了
        //HID, Htitle, H_yg_jine, H_yg_didian, H_yg_neirong, H_yg_zsrs, H_yg_zdrs, H_yg_shijian,  H_yg_qrjje, H_ff_yusuan, H_ff_renjun, H_ff_jihua, H_ff_shijian1, H_ff_shijian2, H_ff_hdlx,  H_ff_canyurenshu
        I_Dblink I_DBL = (new DBFactory()).DbLinkSqlMain("");
        Hashtable return_ht = new Hashtable();
        ArrayList alsql = new ArrayList();
        Hashtable param = new Hashtable();
        param.Add("@HID", ht_forUI["idforedit"].ToString());
        param.Add("@Htitle", ht_forUI["Htitle"].ToString());
        param.Add("@H_yg_jine", ht_forUI["H_yg_jine"].ToString());
        param.Add("@H_yg_didian", ht_forUI["H_yg_didian"].ToString());
        param.Add("@H_yg_neirong", ht_forUI["H_yg_neirong"].ToString());
        param.Add("@H_yg_zsrs", ht_forUI["H_yg_zsrs"].ToString());
        param.Add("@H_yg_zdrs", ht_forUI["H_yg_zdrs"].ToString());
        param.Add("@H_yg_shijian", ht_forUI["H_yg_shijian"].ToString());
        param.Add("@H_yg_qrjje", ht_forUI["H_yg_qrjje"].ToString());
        param.Add("@H_ff_yusuan", ht_forUI["H_ff_yusuan"].ToString());
        param.Add("@H_ff_renjun", ht_forUI["H_ff_renjun"].ToString());
        param.Add("@H_ff_jihua", ht_forUI["H_ff_jihua"].ToString());
        if (ht_forUI["H_ff_shijian1"].ToString() == "")
        { param.Add("@H_ff_shijian1", DBNull.Value); }
        else
        { param.Add("@H_ff_shijian1", ht_forUI["H_ff_shijian1"].ToString()); }

        if (ht_forUI["H_ff_shijian2"].ToString() == "")
        { param.Add("@H_ff_shijian2", DBNull.Value); }
        else
        { param.Add("@H_ff_shijian2", ht_forUI["H_ff_shijian2"].ToString()); }

        param.Add("@H_ff_hdlx", ht_forUI["H_ff_hdlx"].ToString());
        param.Add("@H_ff_canyurenshu", ht_forUI["H_ff_canyurenshu"].ToString());



        if (ht_forUI.Contains("allpath_file1"))
        {
            param.Add("@H_yg_zlfujian", ht_forUI["allpath_file1"].ToString());
        }
        else
        {
            param.Add("@H_yg_zlfujian", "");
        }
        param.Add("@H_ff_shr", ht_forUI["yhbsp_session_uer_UAid"].ToString());

        if (ht_forUI["shenehqingkuang"].ToString() == "审核通过")
        {
            alsql.Add("UPDATE ZZZ_huodong SET  Htitle=@Htitle, H_yg_jine=@H_yg_jine, H_yg_didian=@H_yg_didian, H_yg_neirong=@H_yg_neirong, H_yg_zsrs=@H_yg_zsrs, H_yg_zdrs=@H_yg_zdrs, H_yg_shijian=@H_yg_shijian,  H_yg_qrjje=@H_yg_qrjje, H_ff_yusuan=@H_ff_yusuan, H_ff_renjun=@H_ff_renjun, H_ff_jihua=@H_ff_jihua, H_ff_shijian1=@H_ff_shijian1, H_ff_shijian2=@H_ff_shijian2, H_ff_hdlx=@H_ff_hdlx,  H_ff_canyurenshu=@H_ff_canyurenshu, H_yg_zlfujian=@H_yg_zlfujian , H_ff_shr=@H_ff_shr,H_ff_shsj=getdate() where HID=@HID and  H_ff_shr is null ");
        }
        else {
            alsql.Add("UPDATE ZZZ_huodong SET  Htitle=@Htitle, H_yg_jine=@H_yg_jine, H_yg_didian=@H_yg_didian, H_yg_neirong=@H_yg_neirong, H_yg_zsrs=@H_yg_zsrs, H_yg_zdrs=@H_yg_zdrs, H_yg_shijian=@H_yg_shijian,  H_yg_qrjje=@H_yg_qrjje, H_ff_yusuan=@H_ff_yusuan, H_ff_renjun=@H_ff_renjun, H_ff_jihua=@H_ff_jihua, H_ff_shijian1=@H_ff_shijian1, H_ff_shijian2=@H_ff_shijian2, H_ff_hdlx=@H_ff_hdlx,  H_ff_canyurenshu=@H_ff_canyurenshu, H_yg_zlfujian=@H_yg_zlfujian , H_ff_shr=null,H_ff_shsj=null where HID=@HID   ");
        }




        //遍历子表，先删除，再插入，已有主键的不重新生成。
        string zibiao_gts_id = "grid-table-subtable-170523000376";
        DataTable subdt = jsontodatatable.ToDataTable(ht_forUI[zibiao_gts_id].ToString());
        //必须验证js脚本获取的数量和c#反序列化获取的数量一致才能继续。防止出错
        if (ht_forUI[zibiao_gts_id + "_fcjsq"].ToString() != subdt.Rows.Count.ToString())
        {
            dsreturn.Tables["返回值单条"].Rows[0]["执行结果"] = "err";
            dsreturn.Tables["返回值单条"].Rows[0]["提示文本"] = "子表数据量与获取量不相符，系统出现问题。";
            return dsreturn;
        }
        param.Add("@sub_" + "MainID", ht_forUI["idforedit"].ToString()); //隶属主表id
        //alsql.Add("delete demouser_sub_test where  SID = @sub_" + "MainID");
        for (int i = 0; i < subdt.Rows.Count; i++)
        {
            param.Add("@sub_" + "HJnumber" + "_" + i, subdt.Rows[i]["隐藏编号"].ToString());
            param.Add("@sub_" + "HJ_qrjje" + "_" + i, subdt.Rows[i]["缴纳确认金金额"].ToString());
            param.Add("@sub_" + "HJ_yaoqiu" + "_" + i, subdt.Rows[i]["其他建议"].ToString());
            param.Add("@sub_" + "HJ_sfcj" + "_" + i, subdt.Rows[i]["是否参与"].ToString());
            param.Add("@sub_" + "HJ_nocjyy" + "_" + i, subdt.Rows[i]["不参与原因"].ToString());
            param.Add("@sub_" + "HJ_betuikuan" + "_" + i, subdt.Rows[i]["是否已退还确认金"].ToString());

            string UPDATEsql = "update ZZZ_huodong_joinuser set HJ_qrjje=@sub_" + "HJ_qrjje" + "_" + i + ",HJ_yaoqiu=@sub_" + "HJ_yaoqiu" + "_" + i + ",HJ_sfcj=@sub_" + "HJ_sfcj" + "_" + i + ",HJ_nocjyy=@sub_" + "HJ_nocjyy" + "_" + i + ",HJ_betuikuan=@sub_" + "HJ_betuikuan" + "_" + i + " where HJnumber=@sub_" + "HJnumber" + "_" + i + " and HJ_HID=@sub_MainID";
      
            alsql.Add(UPDATEsql);
        }



        return_ht = I_DBL.RunParam_SQL(alsql, param);




        if ((bool)(return_ht["return_float"]))
        {

            dsreturn.Tables["返回值单条"].Rows[0]["执行结果"] = "ok";
            dsreturn.Tables["返回值单条"].Rows[0]["提示文本"] = "修改成功！";
        }
        else
        {
            //其实要记录日志，而不是输出，这里只是演示
            //dsreturn.Tables.Add(parameter_forUI.Copy());
            dsreturn.Tables["返回值单条"].Rows[0]["执行结果"] = "err";
            dsreturn.Tables["返回值单条"].Rows[0]["提示文本"] = "系统故障，修改失败：" + return_ht["return_errmsg"].ToString();
        }





        return dsreturn;
    }

    /// <summary>
    /// 编辑数据前获取数据
    /// </summary>
    /// <param name="parameter_forUI">前台表单传来的参数</param>
    /// <returns></returns>
    public DataSet NRS_EDIT_INFO(DataTable parameter_forUI)
    {
        //接收转换参数
        Hashtable ht_forUI = new Hashtable();
        for (int i = 0; i < parameter_forUI.Rows.Count; i++)
        {
            ht_forUI[parameter_forUI.Rows[i]["参数名"].ToString()] = parameter_forUI.Rows[i]["参数值"].ToString();
        }


        //初始化返回值
        DataSet dsreturn = initReturnDataSet().Clone();
        dsreturn.Tables["返回值单条"].Rows.Add(new string[] { "err", "初始化" });

        //参数合法性各种验证，这里省略

        //开始真正的处理，这里只是演示，所以直接在这里写业务逻辑代码了

        I_Dblink I_DBL = (new DBFactory()).DbLinkSqlMain("");
        Hashtable return_ht = new Hashtable();
        Hashtable param = new Hashtable();
        param.Add("@HID", ht_forUI["idforedit"].ToString());

        return_ht = I_DBL.RunParam_SQL("select  top 1  * from View_ZZZ_huodong_ex where HID=@HID", "数据记录", param);

        if ((bool)(return_ht["return_float"]))
        {
            DataTable redb = ((DataSet)return_ht["return_ds"]).Tables["数据记录"].Copy();

            if (redb.Rows.Count < 1)
            {
                dsreturn.Tables["返回值单条"].Rows[0]["执行结果"] = "err";
                dsreturn.Tables["返回值单条"].Rows[0]["提示文本"] = "没有找到指定数据!";
                return dsreturn;
            }

            dsreturn.Tables.Add(redb);

            //如果图片不是空值，把图片也弄个表加进来
            if (redb.Rows[0]["H_yg_zlfujian"].ToString() != "")
            {
                //Ttupianpath
                DataTable dttu = new DataTable("图片记录");
                dttu.Columns.Add("Ttupianpath");
                string[] arr_tu = redb.Rows[0]["H_yg_zlfujian"].ToString().Split(',');
                for (int t = 0; t < arr_tu.Length; t++)
                {
                    dttu.Rows.Add(arr_tu[t]);
                }
                dsreturn.Tables.Add(dttu.Copy());

            }

            dsreturn.Tables["返回值单条"].Rows[0]["执行结果"] = "ok";
            dsreturn.Tables["返回值单条"].Rows[0]["提示文本"] = "";
        }
        else
        {
            dsreturn.Tables["返回值单条"].Rows[0]["执行结果"] = "err";
            dsreturn.Tables["返回值单条"].Rows[0]["提示文本"] = "意外错误，获取失败：" + return_ht["return_errmsg"].ToString();
        }


        return dsreturn;
    }


}
