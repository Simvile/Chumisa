<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="WebApplication5.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container rounded bg-white">
         <center>
             <div class="d-flex justify-content-between align-items-center">

                 <div class="alert mt-auto ml-lg-3" style="width: 700px; height: 340px; background-color:aliceblue;">
                     <div class="alert bg-warning" style="margin-top:100px">
                         <center>
                             <h1 style="color: red !important; font-family: 'Times New Roman'; font: italic">Error 404</h1>
                             <br />
                             <p style="color: black !important; font-family: 'Times New Roman'; letter-spacing: 1px;">Page not found</p>
                         </center>
                     </div>
                 </div>
             </div>
         </center>
     </div>

</asp:Content>
