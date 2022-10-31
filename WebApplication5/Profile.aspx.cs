using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        Database data = new Database();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                data.Link();
                txtIdentity.Text = Session["Farmer_Id"].ToString();
                txtFirstName.Text = Session["FarmName"].ToString();
                txtSurName.Text = Session["FarmSecondName"].ToString();
                txtCompName.Text = Session["CompanyName"].ToString();
                txtStartDate.Text = Session["Time"].ToString();
                txtEmail.Text = Session["FarmEmail"].ToString();
                txtSpeciality.Text = Session["Speciality"].ToString();
                txtStreet.Text = Session["Street"].ToString();
                txtSuburb.Text = Session["Surbub"].ToString();
                txtCity.Text = Session["City/Town"].ToString();
                txtPostalCode.Text = Session["PostalCode"].ToString();
                drpProvince.SelectedValue = Session["Province"].ToString();
                txtDescr.Text = Session["Description"].ToString();
                txtPassword.Text = Session["Password"].ToString();

            }
        }

        protected void txtEditProfile_Click(object sender, EventArgs e)
        {
            if (txtCompName.Text == "")
            {
                txtCity.ReadOnly = false;
                txtEmail.ReadOnly = false;
                txtFirstName.ReadOnly = false;
                txtPassword.ReadOnly = false;
                txtPostalCode.ReadOnly = false;
                drpProvince.Enabled = true;
                txtStreet.ReadOnly = false;
                txtSuburb.ReadOnly = false;
                txtSurName.ReadOnly = false;
            }
            else
            {


                txtCity.ReadOnly = false;
                txtSpeciality.ReadOnly = false;
                txtDescr.ReadOnly = false;
                txtEmail.ReadOnly = false;
                txtFirstName.ReadOnly = false;
                txtPassword.ReadOnly = false;
                txtPostalCode.ReadOnly = false;
                drpProvince.Enabled = true;
                txtStartDate.ReadOnly = false;
                txtStreet.ReadOnly = false;
                txtSuburb.ReadOnly = false;
                txtSurName.ReadOnly = false;
                txtCompName.ReadOnly = false;
            }

        }

        protected void txtUpdate_Click(object sender, EventArgs e)
        {
            UpdateFarmer();
            txtCity.ReadOnly = true;
            txtEmail.ReadOnly = true;
            txtFirstName.ReadOnly = true;
            txtPassword.ReadOnly = true;
            txtPostalCode.ReadOnly = true;
            drpProvince.Enabled = true;
            txtStreet.ReadOnly = true;
            txtSuburb.ReadOnly = true;
            txtSurName.ReadOnly = true;
        }

        int newPartner = 0;
        protected void btnAddASPartner_Click(object sender, EventArgs e)
        {
             UpdateFarmer();

            if (txtCompName.Text == "" || txtStartDate.Text == "" || txtDescr.Text == "")
            {
                Response.Write("<script>alert('PLease fill in All Company details')</script>");
            }
            else
            {

                data.Link();
                using (data.OpenCon())
                {
                    data.ExecuteQueries("INSERT INTO [Available_Partner] ([Company_Name], [Farmer_ID], [Description], [Speciality], [Time_Posted]) VALUES ('"+txtCompName.Text+"', '" + txtIdentity.Text + "', '" + txtDescr.Text + "', '" + txtSpeciality.Text + "', '" + DateTime.Now + "')");
                }
                data.CloseCon();
                Session["newPartner"] = newPartner++;
                Response.Redirect("AvailablePartners.aspx");
            }
        }


        private void UpdateFarmer()
        {
            data.Link();
            using (data.OpenCon())
            {
                data.ExecuteQueries("UPDATE [Farmers] SET [First_Name] = '" + txtFirstName.Text + "' , [Last_Name] = '" + txtSurName.Text + "', [Company_Name] = '" + txtCompName.Text + "', [Start_Date] = '" + txtStartDate.Text + "', [Email] = '" + txtEmail.Text + "', [Speciality] = '" + txtSpeciality.Text + "', [Street_Name] = '" + txtStreet.Text + "', [Suburb] = '" + txtSuburb.Text + "', [City_Town] = '" + txtCity.Text + "', [Postal_Code] = '" + txtPostalCode.Text + "', [Province] = '" + drpProvince.SelectedValue + "', [Description] = '" + txtDescr.Text + "', [Password] = '" + txtPassword.Text + "' WHERE Farmer_ID ='" + txtIdentity.Text + "'");
            }
            data.CloseCon();

        }
    }
}