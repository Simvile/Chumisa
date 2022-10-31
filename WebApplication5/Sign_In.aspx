<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign_In.aspx.cs" Inherits="WebApplication5.WebForm12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="CSS/LandingPage.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
                    <div>
                        <div class="row">
                            <div class="col-md-4"></div>
                            <div class="col-md-4 border-right border-bottom border-left border-top User_Sign">
                                <center>
                                    <img src="images/logo%20new.png" width="150px" height="150px" />
                                    <h3 style="color: black !important">Sign In</h3>
                                </center>
                                <div class="col-md-12">
                                    <p>User Type</p>
                                    <asp:DropDownList ID="drpSignIn" class="form-control" runat="server">
                                        <asp:ListItem>-- Select User Type --</asp:ListItem>
                                        <asp:ListItem>Farmer</asp:ListItem>
                                        <asp:ListItem>Sponsor</asp:ListItem>
                                        <asp:ListItem>External Officer</asp:ListItem>
                                    </asp:DropDownList><br />
                                </div>
                                <div class="col-md-12">
                                    <p>
                                        Email
                                    </p>
                                    <asp:TextBox ID="txtEmail" runat="server" class="form-control" TextMode="Email" required="" placeholder="Email"></asp:TextBox><br />
                                </div>
                                <div class="col-md-12">
                                    <p>Password</p>
                                    <asp:TextBox ID="txtPassword" runat="server" class="form-control" TextMode="Password" required="" placeholder="Password"></asp:TextBox>
                                </div><br />
                                <div class="col-md-2"></div>
                                <div class="col-md-8">
                                    <center>
                                    <hr />
                                        <asp:Button ID="btnSignIn" runat="server" class="btn btn-warning btn-md" OnClick="btnSignIn_Click" Text="Sign In" Width="200px" /><br />
                                        <asp:HyperLink ID="hplnSignUp" runat="server" NavigateUrl="~/Sign_Up.aspx">Don't have an account ?</asp:HyperLink><br />
                                    </center>
                                </div>
                                <div class="col-md-2"></div>
                            </div>
                            <br />
                            </div>
                        <div class="col-md-4"></div>
                    </div>
    </form>
</body>
</html>
