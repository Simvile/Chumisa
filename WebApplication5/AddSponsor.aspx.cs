using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        Database Data = new Database();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtRefNum.Enabled = false;
                txtRefNum.Text = Session["RefNum"].ToString();
                Data.Link();
            }
        }


        protected void BtnSubmit_Click(object sender, EventArgs e)
        {

            Data.Link();
            using (Data.OpenCon())
            {
                Data.ExecuteQueries("INSERT INTO [Available_Sponsor] ([Ref_Number], [Company_Name], [Catagory], [Amount], [Description], [Time_Posted]) VALUES('"+ txtRefNum.Text + "', '" +txtCName.Text+ "', '" +drpCatergory.SelectedValue+ "', '" +txtAmount.Text+ "', '"+txtDescr.Text+"', '"+DateTime.Now+"')");
            }
            Data.CloseCon();
            Response.Redirect("AvailableSponsors.aspx");
        }
    }
}