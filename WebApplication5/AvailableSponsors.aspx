<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AvailableSponsors.aspx.cs" Inherits="WebApplication5.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <!-- Header-->
        <header class="bg-light py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-black">
                    <h1 class="display-4 fw-bolder">Sponsorship</h1>
                    <p class="lead fw-normal text-grey-50 mb-0">
                        Ezolimo ziyaqhubeka ukubalukhetho olunomtsalane koosomashishini abanezakhono ezifunekayo ukufikelela kumathuba enkxaso-mali yezolimo. Ngokutshintsha kwemozulu, amafama ase Mzantsi Afrika angavelisa yonke into ukusukela kwimfuyo ukuya kwinkozo kunye nee siriyeli, iswekile, iziqhamo kunye nemifuno, nezinye ezingakhankanywanga.
                    </p>
                <hr />
                    <p class="font-italic">
                        ( Agriculture continues to be an attractive option for entrepreneurs with the necessary skills access to agriculture funding opportunities. With the climate, South African farmers can produce everything from livestock to grains and cereals, wine, suger, fruit and veg etc. )
                    </p>
                </div>
            </div>
        </header>
    <!-- Section-->
    <section>
        <div class="container px-4 px-lg-5 mt-5">
            <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4">
                <div class="col mb-5">
                    <asp:DataList ID="DataList1" runat="server" RepeatColumns="1" width="1090px" height="100px" CellPadding="2">
                        <ItemTemplate>
                            <div class="card h-700">
                                <!-- Product image-->
                                <asp:Label ID="Label2" runat="server" class="fw-bolder text-center" Text='<%# Eval("Company_Name") %>' BackColor="Red" ForeColor="White" Font-Size="20px"></asp:Label><br />
                               
                                <!-- Product details-->
                               
                                <div class="card-body p-4" style="background-color:white;">
                                    <center>
                                    <div>
                                        <table>
                                            <tr>
                                                <td>
                                                    <h6>Posted :</h6>
                                                </td>
                                                <td>
                                                    <!-- Company name-->
                                                    <asp:Label ID="Name" runat="server" class="fw-bolder" Text='<%# Eval("Time_Posted") %>'></asp:Label><br />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><h6>Catergory :</h6></td>
                                                <td>
                                                    <!-- Catergory -->
                                                    <asp:Label ID="Catergory" runat="server" class="fw-bolder" Text='<%# Eval("Catagory") %>'></asp:Label><br />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <h6>Amount :</h6>
                                                </td>
                                                <td>
                                                    <!-- Amount name-->
                                                    <asp:Label ID="Label1" runat="server" class="fw-bolder" Text='<%# Eval("Amount") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <h6>About :</h6>
                                                </td>
                                                <td>
                                                    <!-- Time Posted -->
                                                    <asp:Label ID="Label3" runat="server" class="fw-bolder" Text='<%# Eval("Description") %>'></asp:Label><br />
                                                </td>
                                            </tr>
                                            </table>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <asp:Button ID="BTNApply" runat="server" class="btn btn-outline-warning mt-auto m-auto " OnClick="BTNApply_Click" Text="Apply" width="600px" ForeColor="Black"/>
                                                </div>
                                            </div>
                                       </div>
                                        </center>
                                </div>
                                <!-- Product actions-->
                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                    <div class="text-center">
                                        
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
  
            </div>
        </div>
    </section>

</asp:Content>
