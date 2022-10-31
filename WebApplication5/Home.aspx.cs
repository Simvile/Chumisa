using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace WebApplication5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Database data = new Database();
        int new_ = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["newPartner"].ToString() == "")
            {
                lblalertPartner.Visible = false;
            }
            else
            {
                new_ = (int)Session["newPartner"] + 1;
                lblalertPartner.Text = new_.ToString();
                lblalertPartner.Visible = true;
            }

            if (Session["DidYouKnow"].ToString() == "")
            {
                lblDidYouKnow.Text = "Live Better with farming";
            }
            else
            {
                lblDidYouKnow.Text = Session["DidYouKnow"].ToString();
            }


            if (!IsPostBack)
            {
                data.Link();
                NewMethod();
            }
        }


        private void NewMethod()
        {
            using (data.OpenCon())
            {


                data.DataRead("SELECT TOP 1 * FROM [News_Feeds] ORDER BY TIME DESC");
                DataList1.DataSource = data.myReader;
                DataList1.DataBind();

            }
            data.CloseCon();
        }
    }
}
