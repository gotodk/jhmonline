﻿using FMipcClass;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminht_corepage_dangan_ddzx_yqm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //验证邀请码
        object[] re_dsi = IPC.Call("邀请码检查", new object[] { Request["yqmstr"].ToString() });
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
}