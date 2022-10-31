using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        Database data = new Database();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                getChats();
                data.Link();
            }
        }
        protected void btnSend_chat_Click(object sender, EventArgs e)
        {
            
            SendChat();
            getChats();
        }

        string sn;
        private void SendChat()
        {
            getSender();
            data.Link();
            using (data.OpenCon())
            {
                data.ExecuteQueries("INSERT INTO [Messages] ([Sender_ID], [Receiver_ID], [Message], [Time]) VALUES('" + sn + "', '" + txtSendTo.Text + "', '" + btnSend_input.Text + "', '" + DateTime.Now + "')");
            }
            data.CloseCon();
        }

        private void getSender()
        {
            switch (Session["User"])
            {
                case "User":
                    sn = Session["Farmer_Id"].ToString();
                    break;
                case "Sponsor":
                    sn = Session["RefNum"].ToString();
                    break;
                case "External Officer":
                    sn = Session["Officer"].ToString();
                    break;
            }
        }


        private void getChats()
        {
            getSender();
            data.Link();
            using (data.OpenCon())
            {
                data.DataRead("SELECT TOP 4 * FROM [Messages] WHERE Receiver_ID = '"+ sn +"' or Sender_ID = '" + sn + "' ORDER BY Time DESC");
                DataList1.DataSource = data.myReader;
                DataList1.DataBind();
            }
            data.CloseCon();
        }


    }
}