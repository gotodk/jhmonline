using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FMDBHelperClass;
using System.Collections;
using System.Data;
using FMipcClass;
using System.Threading;

public partial class choujiang_ajax : System.Web.UI.Page
{

    private string geterrmod(string msg)
    {
        return "<?xml version=\"1.0\" encoding=\"utf-8\" ?><错误><错误提示>" + msg + "</错误提示></错误>";
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.ContentType = "text/xml";
        Response.Charset = "UTF-8";

       
        try
        {
            DataTable dsjieguo = new DataTable();
      
            object[] re_ds = IPC.Call("获取抽奖资料", new object[] { "" });
            if (re_ds[0].ToString() == "ok")
            {
                //这个就是得到远程方法真正的返回值，不同类型的，自行进行强制转换即可。
                dsjieguo = (DataTable)re_ds[1];
            }
            else
            {
                Response.Write(geterrmod(re_ds[1].ToString()));
                return;
            }

            //转换xml
            System.IO.StringWriter writer = new System.IO.StringWriter();
       
            dsjieguo.WriteXml(writer);


            string xmlstr = "<?xml version=\"1.0\" encoding=\"utf-8\" ?><root><错误><错误提示>ok</错误提示></错误>" + writer.ToString() + "</root>";

          


            System.Xml.XmlDocument doc = new System.Xml.XmlDocument();
            doc.LoadXml(xmlstr);
            doc.Save(Response.OutputStream);
            
        }
        catch (Exception ex)
        {
            Response.Write(geterrmod("获取数据失败，执行错误!"));
            return;
        }
        
    }

 

}