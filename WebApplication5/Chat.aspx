<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="WebApplication5.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <figure class="mb-4" style="background-color: transparent !important; height:100vh; padding-top:15px; ">
        <div class="container rounded bg-transparent mt-5 mb-5"">
            <div class="row">
                <div class="col-md-3">
                </div>
                <div class="col-md-6 messagebox">
                    <div class="card">
                        <div class="card-header">
                            <div class="panel-heading top-bar">
                                <div class="col-md-8 col-xs-8">
                                    <h3 class="panel-title"><span>SEND TO:</span>
                                        <asp:TextBox runat="server" ID="txtSendTo" placeholder="12345" reuired=""></asp:TextBox>
                                    </h3>
                                </div>
                                <div class="col-md-4 col-xs-4" style="text-align: right;">
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <contenttemplate>
                                    <asp:DataList ID="DataList1" runat="server">
                                        <itemtemplate>
                                            <div class="row">
                                                <div class="col-md-5">
                                                    <div class="messages msg_receive border">
                                                        <asp:Label ID="lblSender" runat="server" Text='<%# Eval("Message") %>'></asp:Label>
                                                        <br />
                                                        <asp:Label runat="server" Text='<%# Eval("Sender_ID") %>' style="color: red; width: 200px;"></asp:Label>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <hr />
                                                    <center>
                                                        <asp:Label ID="lblTime2" runat="server" Text='<%# Eval("Time") %>'></asp:Label>
                                                    </center>
                                                </div>
                                            </div>
                                        </itemtemplate>
                                    </asp:DataList>
                                </contenttemplate>
                            </asp:UpdatePanel>
                        </div>
                <div class="card-footer">
                    <div class="input-group">
                        <asp:TextBox ID="btnSend_input" runat="server" class="form-control input-sm chat_input" placeholder="Write your message here..."></asp:TextBox>
                        <span class="input-group-btn">
                            <asp:Button class="btn btn-primary btn-sm" ID="btnSend_chat" runat="server" OnClick="btnSend_chat_Click" Text="Send" />
                        </span>
                    </div>
                </div>
                </div>
            </div>
            <div class="col-md-3">
                </div>
            </div>
        </div>
    </figure>




</asp:Content>
