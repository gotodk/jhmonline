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
                return "err|邀请码不存在！";
            }
            else
            {
                DataRow dr = redb.Rows[0];
                if (dr["joinok"].ToString() != "未使用")
                {
                    return "err|一个验证码只能接受一次邀请，此邀请码已被他人使用，请联系您的朋友获取新的有效邀请码！";
                }
                else
                {
                    return "ok|恭喜您，邀请码有效，此验证码是来自"+ dr["userid_name"].ToString() + "的邀请！";
                }
               
            }

        }
        else
        {
            return "err|错误err，系统异常！";
        }

         
    }


}
