<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication5.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <div class="row">
            <div class="col-lg-8">
                    <!-- Post header-->
                    <header class="mb-4">
                        <!-- Post title-->
                        <h1 class="fw-bolder mb-1" style="color:white !important;">Welcome to Chumisa!</h1>
                        <!-- Post categories-->
                    </header>
                    <!-- Preview image figure-->
                    <figure class="mb-4" style="background-color:white !important; height:340px; padding-left:2px;">
                        <asp:DataList ID="DataList1" runat="server">
                            <ItemTemplate>
                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <asp:Label ID="lblNewsTopic" Class="NewsTopic" runat="server" Text='<%# Eval("Topic") %>'></asp:Label><br />
                                            </div>
                                            <div class="col-md-5">
                                                <asp:Image ID="Image1" runat="server" Class="newsimage" ImageUrl='<%#"data:Image/png;base64,"+ Convert.ToBase64String((byte[])Eval("Image"))%>' Width="313px" Height="200px" />
                                            </div>
                                            <div class="col-md-7">
                                                <asp:Label runat="server" Class="lblMessage" Text='<%# Eval("Description")  %>'></asp:Label>
                                            </div>
                                            <div class="col-md-5">
                                                <asp:Label ID="Label2" runat="server" Text="Posted on :"></asp:Label>
                                                <asp:Label ID="Label1" Class="NewsTimePosted" runat="server" Text='<%# Eval("Time") %>'></asp:Label><br />
                                            </div>
                                            <div class="col-md-7">
                                                <asp:HyperLink runat="server" CssClass="newsUrl" NavigateUrl='<%# Eval("Link") %>' Text='<%# Eval("Link") %>' Target="_blank"></asp:HyperLink>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </ItemTemplate>
                        </asp:DataList>
                    </figure>
                    <!-- Post content-->
                <div class="row gx-4 gx-lg-5">
                    <div class="col-md-6 mb-5">
                        <div class="card h-100">
                            <div class="card-body">
                                <h2 class="card-title" style="color: black !important;">Partnerships
                                    <span>
                                        <asp:Label ID="lblalertPartner" Class="alert_" runat="server" Width="40px" Height="40px"></asp:Label>
                                    </span>
                                </h2>
                                <img src="images/negotiation.png" class="card-img" />
                            </div>
                            <div class="card-footer">
                                <asp:HyperLink ID="HyperLink2" class="btn btn-primary btn-sm" NavigateUrl="~/AvailablePartners.aspx" runat="server">More Info</asp:HyperLink>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 mb-5">
                        <div class="card h-100">
                            <div class="card-body">
                                <h2 class="card-title" style="color: black !important;">Sponsorships
                                    <span>
                                        <asp:Label ID="lblalertSpons" Class="alert_" runat="server" Width="40px" Height="40px"></asp:Label>
                                    </span>
                                </h2>
                                <img src="images/Sponsor.png" class="card-img" />
                            </div>
                            <div class="card-footer">
                                <asp:HyperLink ID="HyperLink1" class="btn btn-primary btn-sm" NavigateUrl="~/AvailableSponsors.aspx" runat="server">More Info</asp:HyperLink>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Side widgets-->
            <div class="col-lg-4">
                <!-- Search widget-->

                <!-- Categories widget-->
                <div class="card mb-4 _Tip">
                    <div class="card-header">Tip of the day</div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="col-md-12">
                                    <asp:Label ID="lblDidYouKnow" runat="server" ></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Side widget-->
                <div class="card mb-4 _Widget2">
                    <div class="card-header">Side Widget</div>
                    <div class="card-body">You can put anything you want inside of these side widgets. They are easy to use, and feature the Bootstrap 5 card component!</div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
