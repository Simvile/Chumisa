<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddNews.aspx.cs" Inherits="WebApplication5.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container rounded bg-white mt-5 mb-5">
    <div class="row">
        <div class="col-md-2 border-right">
        </div>
        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
                <center>
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h3 class="text-right">
                            <b>Add News</b>
                        </h3>
                    </div>
                </center>
                <hr />
                <div class="row mt-3">
                    <div class="col-md-12">
                        <label class="labels">Topic</label>
                        <asp:TextBox ID="txtTopic" runat="server" class="form-control" placeholder="News Topic" required=""></asp:TextBox>
                    </div>
                    <div class="col-md-12">
                        <label class="labels">Link</label>
                        <asp:TextBox ID="txtLinkAddress" runat="server" class="form-control" placeholder="Enter Link Address" TextMode="Url"></asp:TextBox>
                    </div>
                    <div class="col-md-12">
                        <label class="labels">Description</label>
                        <asp:TextBox ID="txtDescrp" runat="server" class="form-control" placeholder="News body" required="" Height="300px" TextMode="MultiLine" MaxLength="620"></asp:TextBox>
                    </div>
                    <div class="col-md-12">
                        <label class="labels">Upload Image</label>
                        <asp:FileUpload ID="FileUpload1" Class="btn btn-default" runat="server" />
                    </div>
                    <div class="col-md-6">
                        <center>
                            <br />
                            <asp:Button ID="btnNews" runat="server" Text="Submit" class="btn btn-primary profile-button" OnClick="btnNews_Click" Width="150px" />
                        </center>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3 border-right">
            <div class="p-3 py-5">
                <center>
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h3 class="text-right"><b>Add a Tip</b></h3>
                    </div>
                </center>
                <hr />
                <div class="col-md-12">
                    <label class="labels">Tip of the day</label>
                    <div class="col-md-12">
                    <asp:TextBox ID="txtDidYouKnow" runat="server" class="form-control" placeholder="Message body" TextMode="MultiLine" MaxLength="200" Height="300px"></asp:TextBox>
                    </div>
                    <div class="col-md-12">
                        <center>
                        <br /><asp:Button ID="AddDidYouKnow" CssClass="btn btn-primary" runat="server" Text="Upload" OnClick="AddDidYouKnow_Click" Width="150px" />
                        </center>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-2 border-right">

        </div>
    </div>




</asp:Content>
