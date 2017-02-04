using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Services;
using FMDBHelperClass;
using FMipcClass;
using System.Collections;
using System.Data;
using FMPublicClass;
using System.Web.Script.Serialization;
using System.Numerics;
using System.Text.RegularExpressions;

/// <summary>
/// 核心业务的相关处理接口
/// </summary>
[WebService(Namespace = "http://corebusiness.aftipc.com/", Description = "V1.00->xxx")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
// [System.Web.Script.Services.ScriptService]
public class bsuser : System.Web.Services.WebService
{

    public bsuser()
    {

        //如果使用设计的组件，请取消注释以下行 
        //InitializeComponent(); 
    }


    # region  基础前置方法

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
    /// 是否开启防篡改验证
    /// </summary>
    /// <returns></returns>
    private bool IsMD5check()
    {
        return true;
    }

    /// <summary>
    /// 测试该接口是否还活着(每个接口必备)
    /// </summary>
    /// <param name="temp">随便传</param>
    /// <returns>返回ok就是接口正常</returns>
    [WebMethod(MessageName = "测试接口", Description = "测试该接口是否还活着(每个接口必备)")]
    public string onlinetest(string temp)
    {
        //根据不同的传入值，后续可以检查不同的东西，比如这个接口所连接的数据库，比如进程池，服务器空间等等。。。
        return "ok";
    }


    #endregion




    /// <summary>
    /// EAS登录模拟
    /// </summary>
    /// <param name="username_wx">登录账号</param>
    /// <param name="username_wx">登录密码</param>
    /// <param name="username_wx">系统解决方案名</param>
    /// <param name="username_wx">账套编号</param>
    /// <param name="username_wx">语言</param>
    /// <param name="username_wx">数据库类型识别号</param>
    /// <returns></returns>
    [WebMethod(MessageName = "EAS登录模拟", Description = "EAS登录模拟")]
    public string EASLogin_test(string user,string pass,string sys,string zhangtao,string lan,int sys2)
    {
        return "{\"status\" :  0,\"msg\" : \"信息\",\"billErrors\":[{\"id\":\"\",\"number\":\"\", errorMsgs:[\"\",\"\"]}    ]}";
    }


    /// <summary>
    /// 验证邀请码是否可用于本次接受邀请。返回是否可用，并返回具体内容
    /// </summary>
    /// <param name="yqm"></param>
    /// <returns></returns>
    [WebMethod(MessageName = "邀请码检查", Description = "邀请码检查")]
    public string checkyqm(string yqm)
    {
      
        I_Dblink I_DBL = (new DBFactory()).DbLinkSqlMain("");
        Hashtable return_ht = new Hashtable();
        Hashtable param = new Hashtable();
        param.Add("@SN", yqm);

        return_ht = I_DBL.RunParam_SQL("select top 1 * from View_J_my_yqm_fflist where SN=@SN ", "数据记录", param);

        if ((bool)(return_ht["return_float"]))
        {
            DataTable redb = ((DataSet)return_ht["return_ds"]).Tables["数据记录"].Copy();

            if (redb.Rows.Count < 1)
            {
                return "err|您提供的邀请码不存在！";
            }
            else
            {
                DataRow dr = redb.Rows[0];
                if (dr["joinok"].ToString() != "未使用")
                {
                    return "err|一个邀请码只能接受一次邀请，此邀请码已被他人使用！";
                }
                else
                {
                    return "ok|邀请码有效，此验证码是来自“"+ dr["userid_name"].ToString() + "”的邀请！";
                }
               
            }

        }
        else
        {
            return "err|错误err，系统异常！";
        }

         
    }


    /// <summary>
    /// 账号信息重复检查，可验证账号，昵称，手机，邮箱
    /// </summary>
    /// <param name="ddstr">待检查的字符串</param>
    /// <param name="lx">字段名称</param>
    /// <returns></returns>
    [WebMethod(MessageName = "账号信息重复检查", Description = "账号信息重复检查")]
    public string check_pp_zh(string ddstr,string lx)
    {

        I_Dblink I_DBL = (new DBFactory()).DbLinkSqlMain("");
        Hashtable return_ht = new Hashtable();
        Hashtable param = new Hashtable();
        param.Add("@ddstr", ddstr.Trim());

        return_ht = I_DBL.RunParam_SQL("select top 1 UAid from view_ZZZ_userinfo_ex where "+ lx + "=@ddstr ", "数据记录", param);

        if ((bool)(return_ht["return_float"]))
        {
            DataTable redb = ((DataSet)return_ht["return_ds"]).Tables["数据记录"].Copy();

            if (redb.Rows.Count < 1)
            {
                return "ok";
            }
            else
            {
                return "err|有重复";

            }

        }
        else
        {
            return "err|检查出错";
        }


    }




    /// <summary>
    /// 根据UAid获取用户某个信息
    /// </summary>
    /// <param name="UAid">UAid</param>
    /// <param name="colname">列名</param>
    /// <returns></returns>
    [WebMethod(MessageName = "获取账号某个信息", Description = "获取账号某个信息")]
    public string get_user_info_onecol(string UAid, string colname)
    {

        I_Dblink I_DBL = (new DBFactory()).DbLinkSqlMain("");
        Hashtable return_ht = new Hashtable();
        Hashtable param = new Hashtable();
        param.Add("@UAid", UAid.Trim());

        return_ht = I_DBL.RunParam_SQL("select top 1 "+ colname + " from view_ZZZ_userinfo_ex where UAid = @UAid ", "数据记录", param);

        if ((bool)(return_ht["return_float"]))
        {
            DataTable redb = ((DataSet)return_ht["return_ds"]).Tables["数据记录"].Copy();

            if (redb.Rows.Count < 1)
            {
                return "";
            }
            else
            {
                return redb.Rows[0][colname].ToString();

            }

        }
        else
        {
            return "";
        }


    }



    /// <summary>
    /// 提交注册资料
    /// </summary>
    /// <param name="parameter_forUI">参数</param>
    /// <returns>返回ok就是接口正常</returns>
    [WebMethod(MessageName = "提交注册资料", Description = "提交注册资料")]
    public string tijiaozhuceziliao(DataTable parameter_forUI)
    {
        //接收转换参数
        Hashtable ht_forUI = new Hashtable();
        for (int i = 0; i < parameter_forUI.Rows.Count; i++)
        {
            ht_forUI[parameter_forUI.Rows[i]["参数名"].ToString()] = parameter_forUI.Rows[i]["参数值"].ToString();
        }

        //进行详细的注册资料合法性验证
        if (ht_forUI["zhanghao"].ToString().Trim() == "")
        {
            return "err|zhanghao|没有填写“登录账号”！";
        }
        if (ht_forUI["zhanghao"].ToString().Trim().IndexOf('>') >=0 || ht_forUI["zhanghao"].ToString().Trim().IndexOf('<') >= 0)
        {
            return "err|zhanghao|“登录账号”含有禁用字符！";
        }
        string jc_zh = check_pp_zh(ht_forUI["zhanghao"].ToString().Trim(), "Uloginname") ;
        if (jc_zh != "ok")
        {
            return "err|zhanghao|“登录账号”已被使用，请更换！";
        }

        if (ht_forUI["mima"].ToString().Trim() == "")
        {
            return "err|mima|没有填写“登录密码”！";
        }
        if (ht_forUI["mima"].ToString().IndexOf(" ") >= 0 || Regex.IsMatch(ht_forUI["mima"].ToString(), @"[\u4e00-\u9fa5]"))
        {
            return "err|mima|“登录密码”中不允许含有空格和中文！";
        }

        if (ht_forUI["mima"].ToString() != ht_forUI["remima"].ToString())
        {
            return "err|remima|“重复密码”与“登录密码”不一致！";
        }
        if (ht_forUI["nicheng"].ToString().Trim() == "")
        {
            return "err|nicheng|没有填写“昵称”！";
        }
        string jc_nc = check_pp_zh(ht_forUI["nicheng"].ToString().Trim(), "xingming");
        if (jc_nc != "ok")
        {
            return "err|zhanghao|“昵称”已被使用，请更换！";
        }


        if (ht_forUI["shoujihao"].ToString().Trim() == "")
        {
            return "err|shoujihao|没有填写“手机号码”！";
        }
        //string jc_sj = check_pp_zh(ht_forUI["shoujihao"].ToString().Trim(), "shoujihao");
        //if (jc_sj != "ok")
        //{
        //    return "err|zhanghao|“手机号码”已被使用，请更换！";
        //}
        string sjh = ht_forUI["shoujihao"].ToString().Trim();
        Regex reg1 = new Regex(@"^[0-9]\d*$");
        if (sjh.Length != 11 || !reg1.IsMatch(sjh))
        {
            return "err|shoujihao|“手机号码”格式不正确！";
        }


        //进行短信验证码的验证
        if (ht_forUI["dxyzm"].ToString().Trim() == "")
        {
            return "err|dxyzm|没有填写“短信验证码”！";
        }
        string sjh_enc = StringOP.encMe(sjh, "mima");
        //取出数字，换算出验证码
        string yzm = Regex.Replace(sjh_enc, "[a-z]", "", RegexOptions.IgnoreCase);
        yzm = yzm.PadLeft(100, '0');
        yzm = yzm.Substring(95, 4);
        if (ht_forUI["dxyzm"].ToString().Trim() != yzm)
        {
            return "err|dxyzm|“短信验证码”有误！";
        }



        if (!ht_forUI.Contains("ppxingbie") || (ht_forUI["ppxingbie"].ToString().Trim() != "男" && ht_forUI["ppxingbie"].ToString().Trim() != "女"))
        {
            return "err|ppxingbie|没有选择“性别”！";
        }
        if (ht_forUI["yaoqingma"].ToString().Trim() == "")
        {
            return "err|yaoqingma|没有填写“邀请码”！";
        }

        

        //进行邀请码的验证
        string yqm = ht_forUI["yaoqingma"].ToString().ToUpper().Trim();
        string rerere = checkyqm(yqm);
        if (rerere.IndexOf("ok|") == 0)
        {

        }
        else
        {
            return "err|yaoqingma|" + rerere.Replace("err|","");
        }

        //保存注册信息

        //开始真正的处理，根据业务逻辑操作数据库
        I_Dblink I_DBL = (new DBFactory()).DbLinkSqlMain("");
        Hashtable return_ht = new Hashtable();
        ArrayList alsql = new ArrayList();
        Hashtable param = new Hashtable();
        //以可排序guid方式生成
        string guid = CombGuid.GetNewCombGuid("U");
        param.Add("@UAid", guid);
        param.Add("@Uloginname", ht_forUI["zhanghao"].ToString().Trim());

        //对密码进行加密
        string mima_enc = StringOP.encMe(ht_forUI["mima"].ToString().Trim(), "mima");
        param.Add("@Uloginpassword", mima_enc);

        param.Add("@xingming", ht_forUI["nicheng"].ToString());
        param.Add("@zhuangtai", "在职");
        param.Add("@zhiwei", "见习盟友");
        param.Add("@xingbie", ht_forUI["ppxingbie"].ToString().Trim());


        param.Add("@beizhu", "");

        param.Add("@gongzuodi", "");
        param.Add("@suoshuquyu", "1");//默认镜海盟部门
        param.Add("@shoujihao", ht_forUI["shoujihao"].ToString().Trim());
        param.Add("@gudingdianhua", "");
        param.Add("@youxiang", "");
        param.Add("@lingdao", "否");

        param.Add("@ss_yaoqingma", yqm);

        param.Add("@Uattrcode", "-1");

        //插入账号表
        alsql.Add("INSERT INTO  auth_users_auths(UAid ,Uloginname,Uloginpassword,Uattrcode) VALUES(@UAid ,@Uloginname,@Uloginpassword,@Uattrcode )");
        alsql.Add("INSERT INTO  ZZZ_userinfo(UAid ,xingming,zhuangtai,zhiwei,xingbie,beizhu,gongzuodi,suoshuquyu,shoujihao,gudingdianhua,youxiang,lingdao,ss_yaoqingma) VALUES(@UAid ,@xingming,@zhuangtai,@zhiwei,@xingbie,@beizhu,@gongzuodi,@suoshuquyu,@shoujihao,@gudingdianhua,@youxiang,@lingdao,@ss_yaoqingma)");
        //更新邀请码使用状态
        alsql.Add("update AAA_SJS set joinok=1,joinuser=@UAid,joinsj=getdate() where SN=@ss_yaoqingma and beok=1");


        //设置初始权限组
        param.Add("@morenqanxianshezhi", "25");//默认见习盟友
        alsql.Add("update auth_users_auths set Uingroups=@morenqanxianshezhi where UAid=@UAid");

        return_ht = I_DBL.RunParam_SQL(alsql, param);

        if ((bool)(return_ht["return_float"]))
        {
            return "ok|欢迎您正式成为镜海盟的一员！";
        }
        else
        {
            return "err|xxxx|"+ "系统故障，保存失败：" + return_ht["return_errmsg"].ToString();
        }

      

    }


}
