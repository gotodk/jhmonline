﻿using System;
using System.Collections.Generic;
using System.Web;
using FMDBHelperClass;
using FMipcClass;
using System.Collections;
using System.Data;
using FMPublicClass;
using System.Numerics;



public class NoReSetDEL_170412000020
{
 
    /// <summary>
    /// 删除数据
    /// </summary>
    /// <param name="parameter_forUI">前台表单传来的参数</param>
    /// <returns></returns>
    public string NRS_DEL(DataTable parameter_forUI)
        {
            //接收转换参数
            Hashtable ht_forUI = new Hashtable();
            for (int i = 0; i < parameter_forUI.Rows.Count; i++)
            {
                ht_forUI[parameter_forUI.Rows[i]["参数名"].ToString()] = parameter_forUI.Rows[i]["参数值"].ToString();
            }

 
            //存在有效目标才删除
            if (ht_forUI.Contains("ajaxrun") && ht_forUI["ajaxrun"].ToString() == "del" && ht_forUI.Contains("oper") && ht_forUI["oper"].ToString() == "del" && ht_forUI.Contains("id") && ht_forUI["id"].ToString().Trim() != "")
            {
                //开始真正的处理，这里只是演示，所以直接在这里写业务逻辑代码了

                I_Dblink I_DBL = (new DBFactory()).DbLinkSqlMain("");

                Hashtable param = new Hashtable();

                Hashtable return_ht = new Hashtable();
                ArrayList alsql = new ArrayList();


                //删除数据表里的数据 
                string[] delids = ht_forUI["id"].ToString().Split(',');
                for (int d = 0; d < delids.Length; d++)
                {
                    param.Add("@GID_" + d, delids[d]);

                    alsql.Add("delete HH_gxbgjlb  where GID=@GID_" + d + " and G_shjg <> '已审核'");
                }


                return_ht = I_DBL.RunParam_SQL(alsql, param);


                if ((bool)(return_ht["return_float"]))
                {

                    ;
                }
                else
                {
                    ;
                }
            }



            return "";
        }




    /// <summary>
    /// 自定义按钮处理
    /// </summary>
    /// <param name="parameter_forUI">前台表单传来的参数</param>
    /// <returns></returns>
    public string NRS_ZDY_shenhe(DataTable parameter_forUI)
    {
        //接收转换参数
        Hashtable ht_forUI = new Hashtable();
        for (int i = 0; i < parameter_forUI.Rows.Count; i++)
        {
            ht_forUI[parameter_forUI.Rows[i]["参数名"].ToString()] = parameter_forUI.Rows[i]["参数值"].ToString();
        }


        //存在有效目标才删除
        if (ht_forUI.Contains("zdyname") && ht_forUI["xuanzhongzhi"].ToString() != "")
        {
            if (ht_forUI["xuanzhongzhi"].ToString().Trim() == "")
            {
                return "未选中任何要操作的数据。";
            }
            //开始真正的处理，这里只是演示，所以直接在这里写业务逻辑代码了

            I_Dblink I_DBL = (new DBFactory()).DbLinkSqlMain("");

            Hashtable param = new Hashtable();

            Hashtable return_ht = new Hashtable();
            ArrayList alsql = new ArrayList();


            //删除数据表里的数据 
            string[] ids = ht_forUI["xuanzhongzhi"].ToString().Split(',');
            param.Add("@G_shr", ht_forUI["yhbsp_session_uer_UAid"].ToString());
            for (int d = 0; d < ids.Length; d++)
            {
                if (ids[d].Trim() != "")
                {
                    param.Add("@GID_" + d, ids[d]);
                    alsql.Add("UPDATE HH_gxbgjlb SET  G_shjg='已审核',G_shsj=getdate(),G_shr=@G_shr  where GID =@GID_" + d + " and G_shjg = '待审核'");
                    alsql.Add("UPDATE ZZZ_userinfo SET  gxd=gxd+(select top 1 G_bgjlz from HH_gxbgjlb where  G_shjg='已审核' )  where UAid =(select top 1 G_gxr from HH_gxbgjlb where  G_shjg='已审核' )");
                }

            }


            return_ht = I_DBL.RunParam_SQL(alsql, param);


            if ((bool)(return_ht["return_float"]))
            {

                return "批量审核完成！";
            }

        }



        return "批量审核失败，发生错误";
    }


    /// <summary>
    /// 自定义按钮处理
    /// </summary>
    /// <param name="parameter_forUI">前台表单传来的参数</param>
    /// <returns></returns>
    public string NRS_ZDY_bohui(DataTable parameter_forUI)
    {
        //接收转换参数
        Hashtable ht_forUI = new Hashtable();
        for (int i = 0; i < parameter_forUI.Rows.Count; i++)
        {
            ht_forUI[parameter_forUI.Rows[i]["参数名"].ToString()] = parameter_forUI.Rows[i]["参数值"].ToString();
        }


        //存在有效目标才删除
        if (ht_forUI.Contains("zdyname") && ht_forUI["xuanzhongzhi"].ToString() != "")
        {
            if (ht_forUI["xuanzhongzhi"].ToString().Trim() == "")
            {
                return "未选中任何要操作的数据。";
            }
            //开始真正的处理，这里只是演示，所以直接在这里写业务逻辑代码了

            I_Dblink I_DBL = (new DBFactory()).DbLinkSqlMain("");

            Hashtable param = new Hashtable();

            Hashtable return_ht = new Hashtable();
            ArrayList alsql = new ArrayList();


            //删除数据表里的数据 
            string[] ids = ht_forUI["xuanzhongzhi"].ToString().Split(',');
            param.Add("@G_shr", ht_forUI["yhbsp_session_uer_UAid"].ToString());
            for (int d = 0; d < ids.Length; d++)
            {
                if (ids[d].Trim() != "")
                {
                    param.Add("@GID_" + d, ids[d]);
                    alsql.Add("UPDATE HH_gxbgjlb SET  G_shjg='已驳回',G_shsj=getdate(),G_shr=@G_shr  where GID =@GID_" + d + " and G_shjg = '待审核'");
                }

            }


            return_ht = I_DBL.RunParam_SQL(alsql, param);


            if ((bool)(return_ht["return_float"]))
            {

                return "批量驳回完成！";
            }

        }



        return "批量驳回失败，发生错误";
    }


}

