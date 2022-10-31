using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        Database data = new Database();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["RefNumber"] = "";

            if (!IsPostBack)
            {
                data.Link();
                getItems();
            }
        }

        private void getItems()
        {
            data.Link();
            using (data.OpenCon())
            {
                data.DataRead("SELECT * FROM [Available_Sponsor]");
                DataList1.DataSource = data.myReader;
                DataList1.DataBind();

                if (data.myReader.HasRows)
                {
                    while (data.myReader.Read())
                    {
                        Session["RefNumber"] = data.myReader.GetValue(0);
                    }
                }
            }data.CloseCon();
        }

        protected void BTNApply_Click(object sender, EventArgs e)
        {
            getReceiver();
            string message = Session["FarmName"].ToString() + "\r\n" + "\r\n" + Session["FarmEmail"].ToString() + "\r\n" + "\r\n" + Session["CompanyName"].ToString() + "\r\n" + Session["Description"].ToString();

           data.Link();
           using (data.OpenCon())
           {
               data.ExecuteQueries("INSERT INTO [Messages] ([Sender_ID], [Receiver_ID], [Message], [Time]) VALUES('" + Session["Farmer_Id"].ToString() + "', '" + Session["RefNumber"].ToString() + "', '" + message + "', '" + DateTime.Now + "')");
           }
           data.CloseCon();
          
        }


        private void getReceiver()
        {
            data.Link();
            using (data.OpenCon())
            {
                data.DataRead("SELECT * FROM [Available_Sponsor]");
                if (data.myReader.HasRows)
                {
                    while (data.myReader.Read())
                    {
                        Session["RefNumber"] = data.myReader.GetValue(1);
                    }
                }
            }
            data.CloseCon();
        }

    }
}