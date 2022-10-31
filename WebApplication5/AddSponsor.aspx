<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddSponsor.aspx.cs" Inherits="WebApplication5.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid content_">
        <div class="row">
            <div class="col-md-2 border-right" style="background-color:transparent;"></div>
            <div class="col-md-8 border-right">
                <center>
                    <h2>Add Sponsorship</h2>
                    <hr />
                </center>
                <section id="businessHub">
                    <div class="row">
                        <div class="col-md-4">
                            <table>
                                <tr>
                                    <td>
                                        <p>Refrence Number<span class="star">*</span></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" class="form-control input-md" ID="txtRefNum" required="" PlaceHolder="Refrence Number"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </section>
                <hr />
                <section id="Address&Contact">
                    <h2>Sponsorship Information</h2>
                    <br />
                    <div class="row">
                        <div class="col-md-4">
                            <table>
                                <tr>
                                    <td>
                                        <p>Company Name<span>*</span></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" class="form-control input-md" ID="txtCName" required="" placeholder="Company Name"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-4">
                            <table>
                                <tr>
                                    <td>
                                        <p>Catergory<span>*</span></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:DropDownList runat="server" ID="drpCatergory" class="form-control input-md" required="">
                                            <asp:ListItem>-- Select Catergory --</asp:ListItem>
                                            <asp:ListItem>Animal husbandry</asp:ListItem>
                                            <asp:ListItem>Crop</asp:ListItem>
                                            <asp:ListItem>Agriculture cooperative</asp:ListItem>
                                            <asp:ListItem>Dairy </asp:ListItem>
                                            <asp:ListItem Value="Commercial Agriculture">Commercial</asp:ListItem>
                                            <asp:ListItem>Aquaculture</asp:ListItem>
                                            <asp:ListItem>Dairy farming</asp:ListItem>
                                            <asp:ListItem>Arable land</asp:ListItem>
                                            <asp:ListItem>Poultry farming</asp:ListItem>
                                            <asp:ListItem>Hobby farm</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                        </div>

                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4">
                            <table>
                                <tr>
                                    <td>
                                        <p>Amount<span>*</span></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" class="form-control input-md" ID="txtAmount" required="" placeholder="Amount"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="column">
                            <table>
                                <tr>
                                    <td>
                                        <p Style="margin-left:19px;">Description<span>*</span></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" class="form-control input-md" ID="txtDescr" required="" placeholder="About the Sponsorship" Height="150px" Width="600px" TextMode="MultiLine" MaxLength="300" Style="margin-left:19px;"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </section>
                <hr />
                <section id="Declare">
                    <h2>Declaration and Submission</h2>
                    <div>
                        <table>
                            <tr>
                                <td>
                                    <asp:CheckBox runat="server" Class="txtInput" Text="I hereby warrant that. The provided information here in is true and correct to
							the best knowledge. I understand that this declaration is binding me on my conscience, and that any 
							inaccurance or misinterpretation is on me" />
                                </td>
                            </tr>
                        </table>
                        <asp:Button runat="server" ID="BtnSubmit" Class="btn btn-success" Width="100px" OnClick="BtnSubmit_Click" Text="Submit" />
                    </div>
                </section>
                <br />
                <br />
            </div>
            <div class="col-md-2" style="background-color:transparent;"></div>
        </div>
    </div>

</asp:Content>
