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

        if (Request["getopenid"] != null && Request["getopenid"].ToString() == "1" && Request["nowuaid"] != null)
        {
            //获取当前操作用户的openid
            WebClient client = new WebClient();
            string content = client.DownloadString("https://open.weixin.qq.com/connect/oauth2/authorize?appid="+ AppID + "&redirect_uri="+ redirect_uri + "&response_type=code&scope=snsapi_base&state="+ Request["nowuaid"].ToString() + "#wechat_redirect");
            Response.Write(content);
        }
        if (Request["code"] != null && Request["state"] != null)
        {
            try
            {
                string code = Request["code"].ToString();

                WebClient client = new WebClient();

                //获取access_token
                string content = client.DownloadString("https://api.weixin.qq.com/sns/oauth2/access_token?appid=" + AppID + "&secret=" + AppSecret + "&code=" + code + "&grant_type=authorization_code");
                HTMLAnalyzeClass hac = new HTMLAnalyzeClass();
                ArrayList alre = hac.My_Cut_Str("content", "\"openid\":\"", "\",", 1, false);
                string openid = alre[0].ToString().Trim();
                Response.Write("ok:"+openid);
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }


        }



 






    }
}