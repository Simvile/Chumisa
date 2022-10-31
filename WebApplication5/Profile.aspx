<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="WebApplication5.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
    <div class="container rounded bg-white mt-5 mb-5">
    <div class="row">
        <div class="col-md-7 border-right">
            <div class="p-3 py-5">
                <center>
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h3 class="text-right">Profile Settings</h3>
                </div>
                </center>
                <hr />
                <div class="row mt-2">
                    <div class="col-md-6">
                        <label class="labels">Name</label>
                        <asp:TextBox ID="txtFirstName" runat="server" class="form-control" placeholder="first name" required="" ReadOnly="true"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <label class="labels">Surname</label>
                        <asp:TextBox ID="txtSurName" runat="server" class="form-control" placeholder="surname" required="" ReadOnly="true"></asp:TextBox>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-12">
                        <label class="labels">Identity Number</label>
                        <asp:TextBox ID="txtIdentity" runat="server" class="form-control" placeholder="enter phone number" required="" ReadOnly="true"></asp:TextBox>
                    </div>
                    <div class="col-md-12">
                        <label class="labels">Street </label>
                        <asp:TextBox ID="txtStreet" runat="server" class="form-control" placeholder="enter address line 1" required="" ReadOnly="true"></asp:TextBox>
                    </div>
                    <div class="col-md-12">
                        <label class="labels">Suburb</label>
                        <asp:TextBox ID="txtSuburb" runat="server" class="form-control" placeholder="enter address line 2" required="" ReadOnly="true"></asp:TextBox>
                    </div>
                    <div class="col-md-12">
                        <label class="labels">City/Town</label>
                        <asp:TextBox ID="txtCity" runat="server" class="form-control" placeholder="enter address line 2" requied="" ReadOnly="true"></asp:TextBox>
                    </div>
                    <div class="col-md-12">
                        <label class="labels">Postal Code</label>
                        <asp:TextBox ID="txtPostalCode" runat="server" class="form-control" placeholder="enter address line 2" required="" ReadOnly="true"></asp:TextBox>
                    </div>
                    <div class="col-md-12">
                        <label class="labels">Province</label>
                        <asp:DropDownList ID="drpProvince" runat="server" class="form-control" ReadOnly="true">
                            <asp:ListItem>-- Select Province --</asp:ListItem>
                            <asp:ListItem>Eastern Cape</asp:ListItem>
                            <asp:ListItem>Western Cape</asp:ListItem>
                            <asp:ListItem>North West</asp:ListItem>
                            <asp:ListItem>Northern Cape</asp:ListItem>
                            <asp:ListItem>Gauteng</asp:ListItem>
                            <asp:ListItem>Limpopo</asp:ListItem>
                            <asp:ListItem>Kwazulu Natal</asp:ListItem>
                            <asp:ListItem>Free State</asp:ListItem>
                            <asp:ListItem>Mpumalanga</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-12">
                        <label class="labels">Email ID</label>
                        <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="enter email id" required="" ReadOnly="true"></asp:TextBox>
                    </div>
                    <div class="col-md-12">
                        <label class="labels">Password</label>
                        <asp:TextBox ID="txtPassword" runat="server" class="form-control" placeholder="education" required="" ReadOnly="true"></asp:TextBox>
                    </div>
                </div>
                <div class="mt-5 text-center">
                    <asp:Button ID="txtEditProfile" OnClick="txtEditProfile_Click" runat="server" class="btn btn-danger profile-button" Text="Edit" Width="112px" />
                    <asp:Button ID="txtUpdate" runat="server" OnClick="txtUpdate_Click" class="btn btn-success profile-button" Text="Update" Width="103px" />
                </div>
            </div>
        </div>
        <div class="col-md-5">
            <div class="p-3 py-5">
                <div class="col-md-12 align-content-center">
                    <center>
                        <h3>About Company</h3>
                    </center>
                </div>
                <div class="col-md-12">
                    <label class="labels">Company Name</label>
                    <br />
                    <asp:TextBox ID="txtCompName" runat="server" class="form-control" placeholder="Your Company Name" required="" ReadOnly="true"></asp:TextBox>
                </div>
                <br />
                <div class="col-md-12">
                    <label class="labels">Start Date</label><br />
                    <asp:TextBox ID="txtStartDate" runat="server" class="form-control" TextMode="Date" ReadOnly="true"></asp:TextBox>
                </div>
                <br />
                <div class="col-md-12">
                    <label class="labels">Speciality</label><br />
                    <asp:TextBox ID="txtSpeciality" runat="server" class="form-control" placeholder="Type of Farming" ReadOnly="true"></asp:TextBox>
                </div>
                <br />
                <div class="col-md-12">
                    <label class="labels">Description</label>
                    <asp:TextBox ID="txtDescr" runat="server" class="form-control input-md" placeholder="Short description of your company" Height="200px" ReadOnly="true" TextMode="MultiLine" MaxLength="110"></asp:TextBox>
                </div><br />
                <div class="mt-5 text-center">
                    <asp:Button ID="btnAddASPartner" runat="server" OnClick="btnAddASPartner_Click" class="btn btn-primary profile-button" Text="Enroll As Partner" Width="144px"/>
                </div>
            </div>
        </div>
  
    </div>
</div>


</asp:Content>
