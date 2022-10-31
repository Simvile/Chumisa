<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AvailablePartners.aspx.cs" Inherits="WebApplication5.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- Page Hearder --%>

    <div class="container-fluid pb-5">
        <div class="row">
            <div class="container-fluid pb-5 col-md-7 border-right pt-3">
                <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="3" CellPadding="2">
                    <ItemTemplate>
                        <div class="card mb-3 ml-3" style="width:200px; height:300px;">
                            <div class="card-header">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Company_Name") %>'></asp:Label>
                            </div>
                            <div class="card-body">
                                <br />
                                <table>
                                    <tr>
                                        <td>
                                            <div class="carousel-item active">
                                                <asp:Label ID="Description" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="carousel-item active">
                                                <asp:Label ID="Speciality" runat="server" Text='<%# Eval("Speciality") %>'></asp:Label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="carousel-item active">
                                                <asp:Label ID="Time_Posted" runat="server" Text='<%# Eval("Time_Posted") %>'></asp:Label>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </div>
                            <div class="card-footer">
                                <asp:Button ID="btnSendRequest" runat="server" Class="btn btn-primary" OnClick="btnSendRequest_Click" Width="120px" Text="Send Request" />
                            </div>

                        </div>
                    </ItemTemplate>
                </asp:DataList>
                <br />
            </div>
            <div class="col-md-5" style="background-color:whitesmoke !important; margin-bottom:0; padding-top:50px; padding-bottom:50px; height:100vh; align-items:center; justify-items:center; text-align:center; letter-spacing:1px;">
                <h3>Parnership</h3>
                <hr />
                <p class="lead fw-normal text-black-50 mb-0">
                ICHUMISA iniphathela uqhangamshelwano phakathi kwabantu abanqwenela ukuzibandakanya kwiqhina lwezorhwebo ngenjongo zokuphuhlisa amashishini namafama asakhulayo.
                Amaqabane akho kwizwe lonke jikelele nezakhono ezahlukeneyo kwezoshishino nemibutho eyahlukeneyo. Sisebenzisana sonke ukwakhwa, ukuphuhlisa kwakunye nokuchumisa uluntu
                </p>
                <hr />
                <p class="font-italic">
                    ( CHUMISA Offers partnership to those who wishes to join together to trade, improve their developing businesses and farmers.
                    Our partners span the globe and represent a diverse range of organization and business. We work together to build, improve thriving communities. )
                </p>
            </div>
        </div>
    </div>
   
                          
    <!-- Veiw Partners End -->


</asp:Content>
