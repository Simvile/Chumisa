using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class LandingPage : System.Web.UI.Page
    {
        Database data = new Database();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                data.Link();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //if (GetID() == true)
            //{
            data.Link();
            using (data.OpenCon())
            {
                data.ExecuteQueries("INSERT INTO [Farmers] ([Farmer_ID], [First_Name], [Last_Name], [Company_Name], [Start_Date], [Email], [Speciality], [Street_Name], [Suburb], [City_Town], [Postal_Code], [Province], [Description], [Password]) VALUES('" + txtIDNumber.Text + "', '" + txtName.Text + "', '" + txtLastName.Text + "', '" + txtCompName.Text + "', '" + txtStartDate.Text + "', '" + txtEmail.Text + "', '" + txtSpeciality.Text + "', '" + txtStreet.Text + "', '" + txtSurbub.Text + "', '" + txtCity.Text + "', '" + txtPostCode.Text + "', '" + drpProvince.SelectedValue + "', '" + txtDescription.Text + "', '" + txtPassword.Text + "')");
            }
            data.CloseCon();
            Response.Redirect("Sign_In.aspx");
            //}
            //else
            //{
            //    Response.Write("<script>alert('Error Occured, Enter valid details')</scrip>");
            //}
        }
    }
}