using FMipcClass;
using FMPublicClass;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Top.Api;
using Top.Api.Request;
using Top.Api.Response;

public partial class adminht_corepage_dangan_ddzx_zhuce : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string jkname = Request["jkname"].ToString();
        
        if (jkname== "zhuce")
        {
            //提交注册资料
            DataTable dt_request = RequestForUI.Get_parameter_forUI(Request);
            object[] re_dsi = IPC.Call("提交注册资料", new object[] { dt_request });
            if (re_dsi[0].ToString() == "ok")
            {
                //这个就是得到远程方法真正的返回值，不同类型的，自行进行强制转换即可。
                string re = re_dsi[1].ToString();
                Response.Write(re);
            }
            else
            {
                Response.Write(re_dsi[1].ToString());//向客户端输出错误字符串

            }
        }
        if (jkname == "fsyzm")
        {
            //Thread.Sleep(2000);
            //Response.Write("号码格式不正确");
            //return ;
            //根据手机号计算验证码，并调用接口发送
            string sjh = Request["sjh"].ToString().Trim();
            Regex reg1 = new Regex(@"^[0-9]\d*$");
            if (sjh.Length == 11 && reg1.IsMatch(sjh))
            {
                string sjh_enc = StringOP.encMe(sjh, "mima");
                //取出数字，换算出验证码
                string yzm = Regex.Replace(sjh_enc, "[a-z]", "", RegexOptions.IgnoreCase);
                yzm = yzm.PadLeft(100, '0');
                yzm= yzm.Substring(95, 4);
              
                //临时的阿里大于接口
                ITopClient client = new DefaultTopClient("http://gw.api.taobao.com/router/rest", "23618633", "59833b957efba563d7221316c6921ec8");
                AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
                req.Extend = "xxx";
                req.SmsType = "normal";
                req.SmsFreeSignName = "镜海盟";
                req.SmsParam = "{\"yzm\":\""+ yzm + "\"}";
                req.RecNum = "" + sjh;
                req.SmsTemplateCode = "SMS_44350181";
                AlibabaAliqinFcSmsNumSendResponse rsp = client.Execute(req);

                //返回错误,没有返回值代表没有错误
                Response.Write(rsp.ErrMsg);
            }
            else
            {
                Response.Write("号码格式不正确");
            }
          
        }

    }
}