using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;

public partial class ajaxdropzoneupload : System.Web.UI.Page
{

 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["ddidid"] != null && Request["ddidid"].ToString() != "")
        {
            try
            {
                //删除文件
                File.Delete(Server.MapPath(Request["ddidid"].ToString()));

            }
            catch (Exception ex)
            {
                
            }
            return;
        }

        //模拟上传错误
        //Response.StatusCode = 500;
        //Response.Write("处理上传文件时发生错误:文件格式不正确");

        //模拟上传正确(正确上传，只返回保存到的虚拟路径)
        //Response.StatusCode = 200;
        //Response.Write("保存好的路径");


        try
        {
            //登录状态判定
            //if (UserSession.唯一键 == "")
            //{
            //    Response.StatusCode = 500;
            //    Response.Write("失败：尚未登录，未能识别当前用户身份");
            //    return;
            //}

            if (Request.Files.Count < 1)
            {
                Response.StatusCode = 500;
                Response.Write("失败：没有文件待上传");
                return;
            }

            HttpPostedFile file = Request.Files[0];

            int fileSizeInBytes = file.ContentLength;
            //判定文件大小是否符合要求(20M,实际限制在前台控制就行了)
            if (fileSizeInBytes > 10485760*50)
            {
                Response.StatusCode = 500;
                Response.Write("失败：文件过大，上限500M");
                return;
            }


            string fileName = file.FileName;
            string fileExtension = Path.GetExtension(fileName);
            if (fileExtension == null || fileExtension == String.Empty)
            {
                Response.StatusCode = 500;
                Response.Write("失败：不允许的文件类型");
                return;
            }
            fileExtension = fileExtension.ToLower();
            string leixing = "[.jpg][.bmp][.jpeg][.gif][.png][.rar][.zip][.txt][.docx][.doc][.xls][.xlsx][.pdf][.vsdx][.vsd][.mp4]";
            if (leixing.IndexOf("[" + fileExtension + "]") < 0)
            {
                Response.StatusCode = 500;
                Response.Write("失败：不允许的文件类型");
                return;
            }

            string monthStr = DateTime.Now.Month.ToString();
            if (int.Parse(monthStr) < 10)
            { monthStr = "0" + monthStr; }


            string DayStr = DateTime.Now.Day.ToString();
            if (int.Parse(DayStr) < 10)
            {
                DayStr = "0" + DayStr;
            }

            string saveDBpath = "/uploadfiles/" + DateTime.Now.Year.ToString() + "/" + monthStr + "/" + DayStr + "/";
            string saveDBname = CombGuid.GetNewCombGuid("img") + fileExtension;
            string UploadURL = Server.MapPath(saveDBpath);//上传的目录
           



            if (!Directory.Exists(UploadURL))//判断文件夹是否已经存在
            {
                Directory.CreateDirectory(UploadURL);//创建文件夹
            }

            string savedFileName = UploadURL + saveDBname;
            file.SaveAs(savedFileName);

          
            //根据传入的参数，对图片进行二次处理
            System.Drawing.Image img = System.Drawing.Image.FromFile(savedFileName);
            System.Drawing.Image img_new = HtmlSnap.ImageHelper.GetThumbnailImageKeepRatio(img, 1000, 1000);
            Bitmap map = new Bitmap(img_new);
            img.Dispose();
            map.Save(savedFileName);
       
            img_new.Dispose();
            map.Dispose();

            Response.StatusCode = 200;
            Response.Write(saveDBpath + saveDBname);
            return;
        }
        catch (Exception ex)
        {
            Response.StatusCode = 500;
            Response.Write("失败：服务器错误");
            return;
        }

       
         


    }
}