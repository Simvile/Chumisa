using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            switch (Session["User"])
            {
                case "":
                    HyperLink1.Visible = false;
                    HyperLink2.Visible = false;
                    HyperLink3.Visible = false;
                    HyperLink4.Visible = false;
                    HyperLink5.Visible = false;
                    SignOutLink.Visible = false;
                    AddNews.Visible = false;
                    AddSponsor.Visible = false;
                    SignInLink.Visible = true;
                    SignUpLink.Visible = true;
                    break;
                case "User":
                    SignInLink.Visible = false;
                    SignUpLink.Visible = false;
                    AddNews.Visible = false;
                    AddSponsor.Visible = false;
                    SignOutLink.Visible = true;
                    HyperLink1.Visible = true;
                    HyperLink2.Visible = true;
                    HyperLink3.Visible = true;
                    HyperLink4.Visible = true;
                    HyperLink5.Visible = true;
                    break;
                case "Sponsor":
                    HyperLink1.Visible = true;
                    HyperLink3.Visible = true;
                    SignOutLink.Visible = true;
                    HyperLink2.Visible = true;
                    HyperLink4.Visible = false;
                    HyperLink5.Visible = false;
                    SignInLink.Visible = false;
                    SignUpLink.Visible = false;
                    AddSponsor.Visible = true;
                    AddNews.Visible = false;
                    break;
                case "External Officer":
                    SignInLink.Visible = false;
                    AddSponsor.Visible = false;
                    AddNews.Visible = true;
                    HyperLink2.Visible = false;
                    HyperLink3.Visible = false;
                    HyperLink4.Visible = false;
                    HyperLink5.Visible = false;
                    SignUpLink.Visible = false;
                    SignOutLink.Visible = true;
                    HyperLink1.Visible = true;
                    break;
            }

        }
    }
}