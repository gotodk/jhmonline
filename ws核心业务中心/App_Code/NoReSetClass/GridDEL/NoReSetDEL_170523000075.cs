using System;
using System.Collections.Generic;
using System.Web;
using FMDBHelperClass;
using FMipcClass;
using System.Collections;
using System.Data;
using FMPublicClass;
using System.Numerics;



public class NoReSetDEL_170523000075
{



    /// <summary>
    /// 检查单据状态
    /// </summary>
    /// <returns></returns>
    private string check_yuyue(string HJ_HID, string HJ_UAid)
    {

        I_Dblink I_DBL = (new DBFactory()).DbLinkSqlMain("");
        Hashtable return_ht = new Hashtable();
        Hashtable param = new Hashtable();
        param.Add("@HJ_HID", HJ_HID);
        param.Add("@HJ_UAid", HJ_UAid);
        return_ht = I_DBL.RunParam_SQL("select top 1 HJnumber from ZZZ_huodong_joinuser where HJ_HID=@HJ_HID and HJ_UAid=@HJ_UAid", "数据记录", param);

        if ((bool)(return_ht["return_float"]))
        {
            DataTable redb = ((DataSet)return_ht["return_ds"]).Tables["数据记录"].Copy();

            if (redb.Rows.Count < 1)
            {
                return "可预约";
            }
            else
            {
                return "您已预约，无需重复预约";
            }
        }
        else
        {
            return "预约检查失败";
        }

    }


    /// <summary>
    /// 自定义按钮处理
    /// </summary>
    /// <param name="parameter_forUI">前台表单传来的参数</param>
    /// <returns></returns>
    public string NRS_ZDY_kaishiyuyue(DataTable parameter_forUI)
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
            string ids = ht_forUI["xuanzhongzhi"].ToString().Split(',')[0];

            string check_re = check_yuyue(ids, ht_forUI["yhbsp_session_uer_UAid"].ToString());
            if (check_re == "可预约")
            {
                string guid = CombGuid.GetMewIdFormSequence("ZZZ_huodong_joinuser");
                param.Add("@HJnumber", guid);
                param.Add("@HJ_HID", ids);
                param.Add("@HJ_UAid", ht_forUI["yhbsp_session_uer_UAid"].ToString());
                param.Add("@HJ_yaoqiu", ht_forUI["yaoqiu"].ToString());

                alsql.Add("INSERT INTO ZZZ_huodong_joinuser(HJnumber,HJ_HID,HJ_UAid,HJ_yaoqiu) VALUES(@HJnumber,@HJ_HID,@HJ_UAid,@HJ_yaoqiu)");

                return_ht = I_DBL.RunParam_SQL(alsql, param);


                if ((bool)(return_ht["return_float"]))
                {

                    return "预约完成！活动需要等待审核统一安排，请关注提醒消息。";
                }
                else
                {
                    return "预约失败，意外错误！";
                }
            }
            else
            {
                return check_re;
            }

         

        }



        return "预约失败，发生错误";
    }


}
 
