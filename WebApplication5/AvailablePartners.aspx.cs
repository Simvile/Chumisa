using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        Database data = new Database();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                data.Link();
                getPartners();
            }
        }

        protected void btnSendRequest_Click(object sender, EventArgs e)
        {

        
           getReceiver();
            string message = Session["FarmName"].ToString() + Session["FarmSecondName"].ToString() + "\r\n" + "\r\n" + Session["FarmEmail"].ToString() + "\r\n" + "\r\n" + Session["Province"].ToString();

           data.Link();
           using (data.OpenCon())
           {
               data.ExecuteQueries("INSERT INTO [Messages] ([Sender_ID], [Receiver_ID], [Message], [Time]) VALUES('" + Session["Farmer_Id"].ToString() + "', '" + Session["ID_Farmer"].ToString() + "', '" + message + "', '" + DateTime.Now + "')");
           }
           data.CloseCon();

        
        }

        private void getPartners()
        {
            data.Link();
            using (data.OpenCon())
            {
                data.DataRead("SELECT * FROM [Available_Partner] ORDER BY Time_Posted DESC");
                DataList1.DataSource = data.myReader;
                DataList1.DataBind();
            }
            data.CloseCon();
        }

        private void getReceiver()
        {
            data.Link();
            using (data.OpenCon())
            {
                data.DataRead("SELECT * FROM [Available_Partner] ORDER BY Time_Posted DESC");
                if (data.myReader.HasRows)
                {
                    while (data.myReader.Read())
                    {
                        Session["ID_Farmer"] = data.myReader.GetValue(2);
                    }
                }
            }
            data.CloseCon();
        }
    }
}