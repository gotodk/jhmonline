using System;
using System.Collections.Generic;
using System.Web;
using FMDBHelperClass;
using FMipcClass;
using System.Collections;
using System.Data;
using FMPublicClass;
using System.Numerics;



public class NoReSetDEL_170524000129
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
                    param.Add("@CYID_" + d, delids[d]);
                alsql.Add("delete ZZZ_shiwu_canyu  where CYID=@CYID_" + d + " ");
                alsql.Add("delete ZZZ_shiwu  where SID=@CYID_" + d + " ");
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
    /// 检查单据状态
    /// </summary>
    /// <returns></returns>
    private string check_swzt(string SID,string CYsqr)
    {

        I_Dblink I_DBL = (new DBFactory()).DbLinkSqlMain("");
        Hashtable return_ht = new Hashtable();
        Hashtable param = new Hashtable();
        param.Add("@SID", SID);
        param.Add("@CYsqr", CYsqr);
        return_ht = I_DBL.RunParam_SQL("select top 1 Szt from ZZZ_shiwu where SID=@SID ", "数据记录", param);

        if ((bool)(return_ht["return_float"]))
        {
            DataTable redb = ((DataSet)return_ht["return_ds"]).Tables["数据记录"].Copy();

            if (redb.Rows.Count < 1)
            {
                return "项目已被删除，无法参与";
            }
            else
            {
                if (redb.Rows[0]["Szt"].ToString() == "有效")
                {

                    //检查是否已参与
                    return_ht = I_DBL.RunParam_SQL("select top 1 CYID from ZZZ_shiwu_canyu where CY_SID=@SID and CYsqr=@CYsqr ", "数据记录", param);

                    if ((bool)(return_ht["return_float"]))
                    {
                        DataTable redb2 = ((DataSet)return_ht["return_ds"]).Tables["数据记录"].Copy();

                        if (redb2.Rows.Count < 1)
                        {
                            return "可参与";
                        }
                        else
                        {
                            return "您已提交参与申请，无需重复提交。";

                        }
                    }
                    else
                    {
                        return "检查失败，无法参与";
                    }




                }
                else
                {
                    return "项目已关闭，无法参与";
                }

            }
        }
        else
        {
            return "检查失败，无法参与";
        }

    }

    /// <summary>
    /// 自定义按钮处理
    /// </summary>
    /// <param name="parameter_forUI">前台表单传来的参数</param>
    /// <returns></returns>
    public string NRS_ZDY_kaishicanyu(DataTable parameter_forUI)
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

            if (ht_forUI["lianxifangshi"].ToString().Trim() == "")
            {
                return "参与失败，你需要填写联系方式。";
            }

            string check_re = check_swzt(ids, ht_forUI["yhbsp_session_uer_UAid"].ToString());
            if (check_re == "可参与")
            {
                string guid = CombGuid.GetMewIdFormSequence("ZZZ_shiwu_canyu");
                param.Add("@CYID", guid);
                param.Add("@CY_SID", ids);
                param.Add("@CYsqr", ht_forUI["yhbsp_session_uer_UAid"].ToString());
                param.Add("@CYlianxi", ht_forUI["lianxifangshi"].ToString());
          

                alsql.Add("INSERT INTO ZZZ_shiwu_canyu(CYID,CY_SID,CYsqr,CYlianxi) VALUES(@CYID,@CY_SID,@CYsqr,@CYlianxi)");

                return_ht = I_DBL.RunParam_SQL(alsql, param);


                if ((bool)(return_ht["return_float"]))
                {

                    return "您的项目参与申请已提交完成！";
                }
                else
                {
                    return "参与失败，意外错误！";
                }
            }
            else
            {
                return check_re;
            }



        }



        return "参与失败，发生错误";
    }

}

