﻿using System;
using System.Collections.Generic;
using System.Web;
using FMDBHelperClass;
using FMipcClass;
using System.Collections;
using System.Data;
using FMPublicClass;
using System.Numerics;
using System.Web.Script.Serialization;
using System.Net;
using System.Configuration;

public class NoReSet_160512000042
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
        //接收转换参数
        Hashtable ht_forUI = new Hashtable();
        for (int i = 0; i < parameter_forUI.Rows.Count; i++)
        {
            ht_forUI[parameter_forUI.Rows[i]["参数名"].ToString()] = parameter_forUI.Rows[i]["参数值"].ToString();
        }
        //初始化返回值
        DataSet dsreturn = initReturnDataSet().Clone();
        dsreturn.Tables["返回值单条"].Rows.Add(new string[] { "err", "初始化" });
        //参数合法性各种验证，这里要根据具体业务逻辑处理

        //开始真正的处理，根据业务逻辑操作数据库
        I_Dblink I_DBL = (new DBFactory()).DbLinkSqlMain("");
        Hashtable return_ht = new Hashtable();
        ArrayList alsql = new ArrayList();
        Hashtable param = new Hashtable();
        //以可排序guid方式生成
        //Qzhuti, Qneirong, Qfujian, Qjiedanren, Qzhuangtai, Qaddtime, Qcjr

        string guid = CombGuid.GetMewIdFormSequence("ZZZ_HQ");
        param.Add("@QID", guid);
        param.Add("@Qzhuti", ht_forUI["Qzhuti"].ToString());
        param.Add("@Qneirong", ht_forUI["Qneirong"].ToString());
        if (ht_forUI.Contains("allpath_file1"))
        { param.Add("@Qfujian", ht_forUI["allpath_file1"].ToString()); }
        else
        {
            param.Add("@Qfujian", "");
        }
        param.Add("@Qjiedanren", ht_forUI["Qjiedanren"].ToString());
        param.Add("@Qzhuangtai", "未结单");
        param.Add("@Qcjr", ht_forUI["yhbsp_session_uer_UAid"].ToString()); 

        alsql.Add("INSERT INTO  ZZZ_HQ(QID, Qzhuti, Qneirong, Qfujian, Qjiedanren,Qzhuangtai,Qcjr ) VALUES(@QID, @Qzhuti, @Qneirong, @Qfujian, @Qjiedanren,@Qzhuangtai,@Qcjr)");

        //同时把发起人自动放入审批人。 同时发送提醒
        param.Add("@YJID", CombGuid.GetMewIdFormSequence("ZZZ_HQ_YJ"));
        alsql.Add("INSERT INTO  ZZZ_HQ_YJ ( YJID, YJ_QID, YJqianhsuren, YJzhuangtai, YJyijian, YJqsshijian, YJlaiyuan, YJlysj ) VALUES(@YJID, @QID, @Qcjr, '待签',null,null, @Qcjr,getdate()   )");
        alsql.Add("INSERT INTO  auth_znx(touser, msgtitle, msurl) VALUES(@Qcjr, '有新的会签需要您的参与，单号[' + @QID + ']', '/adminht/corepage/huiqian/cyhq.aspx?idforedit='+@QID+'&fff=1')");

        //同时把结单人自动放入审批人。 同时发送提醒
        param.Add("@YJID2", CombGuid.GetMewIdFormSequence("ZZZ_HQ_YJ"));
        alsql.Add("INSERT INTO  ZZZ_HQ_YJ ( YJID, YJ_QID, YJqianhsuren, YJzhuangtai, YJyijian, YJqsshijian, YJlaiyuan, YJlysj ) VALUES(@YJID2, @QID, @Qjiedanren, '待签',null,null, @Qcjr,getdate()   )");
        alsql.Add("INSERT INTO  auth_znx(touser, msgtitle, msurl) VALUES(@Qjiedanren, '有新的会签需要您的参与，单号[' + @QID + ']', '/adminht/corepage/huiqian/cyhq.aspx?idforedit='+@QID+'&fff=1')");

       


        return_ht = I_DBL.RunParam_SQL(alsql, param);

        if ((bool)(return_ht["return_float"]))
        {
            //强制调用一次微信发送扫描接口，发送微信消息
            try
            {
                WebClient client = new WebClient();
                string wx_httpurl = ConfigurationManager.AppSettings["wx_httpurl"].ToString();
                client.DownloadString("http://" + wx_httpurl + "/qyapi_dlhd.aspx?sendmsgf=send");
            }
            catch { }

            dsreturn.Tables["返回值单条"].Rows[0]["执行结果"] = "ok";
            dsreturn.Tables["返回值单条"].Rows[0]["提示文本"] = "新增成功！";
        }
        else
        {
            dsreturn.Tables["返回值单条"].Rows[0]["执行结果"] = "err";
            dsreturn.Tables["返回值单条"].Rows[0]["提示文本"] = "系统故障，保存失败：" + return_ht["return_errmsg"].ToString();
        }
        return dsreturn;
    }

    /// <summary>
    /// 编辑数据
    /// </summary>
    /// <param name="parameter_forUI">前台表单传来的参数</param>
    /// <returns></returns>
    public DataSet NRS_EDIT(DataTable parameter_forUI)
    {
         

        return null;
    }

    /// <summary>
    /// 编辑数据前获取数据
    /// </summary>
    /// <param name="parameter_forUI">前台表单传来的参数</param>
    /// <returns></returns>
    public DataSet NRS_EDIT_INFO(DataTable parameter_forUI)
    {
        return null;
    }


}
