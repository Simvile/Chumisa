using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        Database data = new Database();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNews_Click(object sender, EventArgs e)
        {
            HttpPostedFile postedFile = FileUpload1.PostedFile;
            string filename = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(filename);
            int fileSize = postedFile.ContentLength;

            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif"
                || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".bmp")
            {
                Stream stream = postedFile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);

                data.Link();
                using (data.OpenCon())
                {
                    SqlCommand cmd = new SqlCommand("INSERT INTO [News_Feeds] (Image_Name, Image_Size, Image, Description, Topic, Time, Link) VALUES (@Image_Name, @Image_Size, @Image, @Description,@Topic, @Time, @Link)", data.OpenCon());
                    cmd.Parameters.AddWithValue("@Image_Name", filename);
                    cmd.Parameters.AddWithValue("@Image_Size", fileSize);
                    cmd.Parameters.AddWithValue("@Image", bytes);
                    cmd.Parameters.AddWithValue("@Description", txtDescrp.Text.Trim());
                    cmd.Parameters.AddWithValue("@Topic", txtTopic.Text.Trim());
                    cmd.Parameters.AddWithValue("@Time", DateTime.Now);
                    cmd.Parameters.AddWithValue("@Link", txtLinkAddress.Text.Trim());
                    data.OpenCon();
                    cmd.ExecuteNonQuery();
                    data.CloseCon();

                }data.CloseCon();

                Response.Redirect("Home.aspx");

            }
        }

        protected void AddDidYouKnow_Click(object sender, EventArgs e)
        {

            try
            {
                Session["DidYouKnow"] = txtDidYouKnow.Text;
            }
            catch
            {
                Response.Redirect("Error.aspx");
            }
        }
    }
}