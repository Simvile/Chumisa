using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        Database data = new Database();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Session["newPartner"] = "";
                Session["User"] = "";
                Session["DidYouKnow"] = "";
                data.Link();
            }
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            switch (drpSignIn.SelectedValue.ToString())
            {
                case "Farmer":
                    {
                        data.Link();
                        using (data.OpenCon())
                        {
                            data.DataRead("SELECT * FROM [Farmers] WHERE Email = '" + txtEmail.Text + "' and Password = '" + txtPassword.Text + "'");
                            if (data.myReader.HasRows)
                            {
                                while (data.myReader.Read())
                                {
                                    Session["User"] = "User";
                                    Session["Farmer_Id"] = (decimal)data.myReader.GetValue(0);
                                    Session["FarmName"] = data.myReader.GetValue(1);
                                    Session["FarmSecondName"] = data.myReader.GetValue(2);
                                    Session["CompanyName"] = data.myReader.GetValue(3);
                                    Session["Time"] = data.myReader.GetValue(4);
                                    Session["FarmEmail"] = data.myReader.GetValue(5);
                                    Session["Speciality"] = data.myReader.GetValue(6);
                                    Session["Street"] = data.myReader.GetValue(7);
                                    Session["Surbub"] = data.myReader.GetValue(8);
                                    Session["City/Town"] = data.myReader.GetValue(9);
                                    Session["PostalCode"] = data.myReader.GetValue(10);
                                    Session["Province"] = data.myReader.GetValue(11);
                                    Session["Description"] = data.myReader.GetValue(12);
                                    Session["Password"] = data.myReader.GetValue(13);
                                }
                                Response.Redirect("Home.aspx");
                            }

                        }
                        data.CloseCon();
                    }
                    break;
                case "Sponsor":
                    {
                        data.Link();
                        using (data.OpenCon())
                        {
                            data.DataRead("SELECT * FROM [Sponsor_Registration] WHERE Email = '" + txtEmail.Text + "' and Password = '" + txtPassword.Text + "'");
                            if (data.myReader.HasRows)
                            {
                                while (data.myReader.Read())
                                {
                                    Session["User"] = "Sponsor";
                                    Session["RefNum"] = (int)data.myReader.GetValue(0);
                                }
                                Response.Redirect("AvailableSponsors.aspx");
                            }

                        }
                        data.CloseCon();
                    }
                    break;
                case "External Officer":
                    {
                        data.Link();
                        using (data.OpenCon())
                        {
                            data.DataRead("SELECT * FROM [External_Officer_Registration] WHERE Email = '" + txtEmail.Text + "' and Password = '" + txtPassword.Text + "'");
                            if (data.myReader.HasRows)
                            {
                                while (data.myReader.Read())
                                {
                                    Session["User"] = "External Officer";
                                    Session["Officer"] = data.myReader.GetValue(0);
                                }
                                Response.Redirect("AddNews.aspx");
                            }

                        }
                        data.CloseCon();
                    }
                    break;
            }
        }
    }
}