using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FMipcClass;
using System.Text;
using System.IO;
using System.Data;
using System.Collections;
using FMPublicClass;

public partial class qyapi_dlhd : System.Web.UI.Page
{

    /// <summary>
    /// 提交post消息
    /// </summary>
    /// <param name="postUrl"></param>
    /// <param name="paramData"></param>
    /// <param name="dataEncode"></param>
    /// <returns></returns>
    private string PostWebRequest(string postUrl, string paramData, Encoding dataEncode)
    {
        string ret = string.Empty;
        try
        {
            byte[] byteArray = dataEncode.GetBytes(paramData); //转化
            HttpWebRequest webReq = (HttpWebRequest)WebRequest.Create(new Uri(postUrl));
            webReq.Method = "POST";
            webReq.ContentType = "application/x-www-form-urlencoded";

            webReq.ContentLength = byteArray.Length;
            Stream newStream = webReq.GetRequestStream();
            newStream.Write(byteArray, 0, byteArray.Length);//写入参数
            newStream.Close();
            HttpWebResponse response = (HttpWebResponse)webReq.GetResponse();
            StreamReader sr = new StreamReader(response.GetResponseStream(), Encoding.Default);
            ret = sr.ReadToEnd();
            sr.Close();
            response.Close();
            newStream.Close();
        }
        catch (Exception ex)
        {
            return "err:" + ex.ToString();
        }
        return ret;
    }

    protected void Page_Load(object sender, EventArgs e)
    {


        string redirect_uri = ConfigurationManager.AppSettings["redirect_uri"].ToString();
        string AppID = ConfigurationManager.AppSettings["AppID"].ToString();
        string AppSecret = ConfigurationManager.AppSettings["AppSecret"].ToString();

        if (Request["getopenid"] != null && Request["getopenid"].ToString() == "1" && Request["u"] != null)
        {
           
            //获取当前操作用户的openid，会进行跳转
            string urlto = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=" + AppID + "&redirect_uri=" + redirect_uri + "&response_type=code&scope=snsapi_base&state=000#wechat_redirect";
            Response.Cookies["u"].Value = Request["u"].ToString();
            Response.Redirect(urlto);

            return;
        }
        if (Request["code"] != null && Request["state"] != null)
        {
            string openid = "err";
            try
            {
                string code = Request["code"].ToString();

                WebClient client = new WebClient();

                //获取access_token
                string content = client.DownloadString("https://api.weixin.qq.com/sns/oauth2/access_token?appid=" + AppID + "&secret=" + AppSecret + "&code=" + code + "&grant_type=authorization_code");
                //Response.Write(content);
                //return;
                HTMLAnalyzeClass hac = new HTMLAnalyzeClass();
                ArrayList alre = hac.My_Cut_Str(content, "\"openid\":\"", "\",", 1, false);
                string openid_str = alre[0].ToString().Trim();
                //拿到openid了，尝试获取该id下有没有绑定账号,生成对应字符串 openid|账号|密码
                //尝试找到对应账号和密码 
                string jm = "";
                object[] re_dsi_wx = IPC.Call("获取微信自动登录参数", new object[] { openid_str });
                if (re_dsi_wx[0].ToString() == "ok")
                {
                    //这个就是得到远程方法真正的返回值，不同类型的，自行进行强制转换即可。
                    jm = re_dsi_wx[1].ToString();
                }
                else
                {
                    string err = "调用错误" + re_dsi_wx[1].ToString();
                    jm = "|";
                }
                openid = openid_str + "|" + jm;
                openid = StringOP.encMe(openid,"mima");

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            string u = "";
            if (Request.Cookies["u"] != null)
            {
                u = Request.Cookies["u"].Value;
            }
            
            
            Response.Redirect("/adminht/login.aspx?openid=" + openid + "&u=" + u);
            return;
        }



 






    }
}