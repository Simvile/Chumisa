<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign_Up.aspx.cs" Inherits="WebApplication5.LandingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="CSS/LandingPage.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title></title>
</head>
<body>


    <form id="form1" runat="server">
        <div class="container box" id="container">
            <div class="Sign_UP">
                <center>
                    <img src="images/logo%20new.png" width="150px" height="150px" />
                </center>
                <h3 style="color:white;">Personal Information</h3>
                <br />
                <div class="row">
                    <div class="col-md-12">
                        <div class="col-md-6">
                            <p>First Name</p>
                            <i class="fa fa-user" aria-hidden="true"></i>
                            <asp:TextBox runat="server" class="form-control input-md" required="" ID="txtName" ValidateRequestMode="Enabled"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <p>Date of Birth</p>
                            <i class="fa fa-calendar" aria-hidden="true"></i>
                            <asp:TextBox runat="server" ID="txtBirth" class="form-control input-md" required="" TextMode="Date" ValidateRequestMode="Enabled"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-12">
                        <div class="col-md-6">
                            <p>Second Name</p>
                            <i class="fa fa-user" aria-hidden="true"></i>
                            <asp:TextBox runat="server" ID="txtLastName" class="form-control input-md" required="" ValidateRequestMode="Enabled"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <p>User Name</p>
                            <i class="fa fa-user" aria-hidden="true"></i>
                            <asp:TextBox runat="server" ID="txtUserName" class="form-control input-md" required="" ValidateRequestMode="Enabled"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-12">
                        <p>ID Number*</p>
                        <i class="fa fa-id-card-o" style="font-size: 24px; color: white !important"></i>
                        <asp:TextBox runat="server" ID="txtIDNumber" class="form-control input-md" TextMode="Number" required="" ValidateRequestMode="Enabled"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-6">
                        <p>Password*</p>
                        <i class="fa fa-key" aria-hidden="true"></i>
                        <asp:TextBox runat="server" class="form-control input-md" TextMode="Password" required="" ID="txtPassword" ValidateRequestMode="Enabled"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <p>Confirm Password*</p>
                        <i class="fa fa-key" aria-hidden="true"></i>
                        <asp:TextBox runat="server" class="form-control input-md" TextMode="Password" required="" ID="txtConPassword" ValidateRequestMode="Enabled"></asp:TextBox>
                    </div>
                </div>
                <hr />
                <h3 style="color:white;">Contact Information</h3>
                <br />
                <div class="row">
                    <div class="col-md-6">
                        <p>Email*</p>
                        <i class="fa fa-envelope" aria-hidden="true"></i>
                        <asp:TextBox runat="server" ID="txtEmail" class="form-control input-md" TextMode="Email" required="" ValidateRequestMode="Enabled"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <p>Phone*</p>
                        <i class="fa fa-phone" aria-hidden="true"></i>
                        <asp:TextBox runat="server" ID="txtPhone" class="form-control input-md" TextMode="Phone" required="" ValidateRequestMode="Enabled"></asp:TextBox>
                    </div>
                </div>
                <hr />
                <h3 style="color:white;">Address Information</h3>
                <br />
                <div class="row">
                    <div class="col-md-4">
                        <p>Street Name*</p>
                        <asp:TextBox runat="server" ID="txtStreet" class="form-control input-md" required="" ValidateRequestMode="Enabled"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <p>Surbub*</p>
                        <asp:TextBox runat="server" ID="txtSurbub" class="form-control input-md" required="" ValidateRequestMode="Enabled"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <p>City*</p>
                        <asp:TextBox runat="server" ID="txtCity" class="form-control input-md" required="" ValidateRequestMode="Enabled"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-4">
                        <p>Post Code*</p>
                        <asp:TextBox runat="server" ID="txtPostCode" class="form-control input-md" TextMode="Number" required="" ValidateRequestMode="Enabled"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <p>Province*</p>
                        <asp:DropDownList runat="server" class="form-control input-md" required="" ID="drpProvince" ValidateRequestMode="Enabled">
                            <asp:ListItem>-- Select Province --</asp:ListItem>
                            <asp:ListItem>Eastern Cape</asp:ListItem>
                            <asp:ListItem>Western Cape</asp:ListItem>
                            <asp:ListItem>Northern Cape</asp:ListItem>
                            <asp:ListItem>Kwazulu Natal</asp:ListItem>
                            <asp:ListItem>Limpopo</asp:ListItem>
                            <asp:ListItem>Free State</asp:ListItem>
                            <asp:ListItem>Mpumalanga</asp:ListItem>
                            <asp:ListItem>Gauteng</asp:ListItem>
                            <asp:ListItem>North West</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <hr />
                <h3 style="color:white;">Company Details (Optional)</h3>
                <br />
                <div class="row">
                    <div class="col-md-4">
                        <p>Company Name</p>
                        <asp:TextBox runat="server" ID="txtCompName" class="form-control input-md" ValidateRequestMode="Enabled"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <p>Start Date</p>
                        <asp:TextBox runat="server" ID="txtStartDate" class="form-control input-md" TextMode="Date" ValidateRequestMode="Enabled"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <p>Speciality</p>
                        <asp:TextBox runat="server" ID="txtSpeciality" class="form-control input-md" ValidateRequestMode="Enabled"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-12">
                        <p>Description</p>
                        <asp:TextBox runat="server" ID="txtDescription" class="form-control input-md" Placeholder="A Short description about your company..." ValidateRequestMode="Enabled" Height="150px" TextMode="MultiLine" MaxLength="110"></asp:TextBox>
                        <br />
                        <div class="col-md-3"></div>
                    </div>
                </div>
                <center>
                    <asp:Button runat="server" ID="btnSubmit" Class="btn btn-warning" OnClick="btnSubmit_Click" Text="Sign Up" Width="300px" /><br />
                    <asp:HyperLink ID="hplnkSignIn" runat="server" NavigateUrl="~/Sign_In.aspx">Already have an account ?</asp:HyperLink>
                </center>
            </div>
        </div>
    </form>
</body>
</html>
