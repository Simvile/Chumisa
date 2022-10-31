<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Messages.aspx.cs" Inherits="WebApplication5.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-sm-3 col-sm-offset-4 frame">
        <ul></ul>
        <div>
            <div class="msj-rta macro">
                <div class="text text-r" style="background: whitesmoke !important">
                    <asp:TextBox ID="TextBox1" runat="server" class="mytext" placeholder="Type a message"></asp:TextBox>
                </div>

            </div>
            <div style="padding: 10px;">
                <span class="glyphicon glyphicon-share-alt"></span>
            </div>
        </div>
    </div>

</asp:Content>
