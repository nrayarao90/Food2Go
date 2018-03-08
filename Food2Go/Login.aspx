<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Food2Go.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="regi">
        <table class="tbl" style="width: 100%">
            <tr>
                <td class="tblhead" style="text-align: center; color: #a85684">
                    <h1>Login here</h1>
                </td>
            </tr>
            <tr>
                <td>&nbsp;

                </td>
            </tr>
            <tr>
                <td>
                    <table style="text-align: center; width: 100%" class="style1">
                        <tr>
                            <td class="style2">&nbsp;</td>
                            <td class="lbl" style="text-align: right; width: 50%">UserName :&nbsp;
                            </td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtusername" runat="server" CssClass="txt"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                    ControlToValidate="txtusername" ErrorMessage="??" ForeColor="Yellow"
                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">&nbsp;</td>
                            <td class="lbl" style="text-align: right">Password :&nbsp;&nbsp;
                            </td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtpassword" runat="server" CssClass="txt"
                                    TextMode="Password"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                    ControlToValidate="txtpassword" ErrorMessage="??" ForeColor="Yellow"
                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <br />
                            </td>
                        </tr>

                    </table>
                </td>
            </tr>
            <tr>

                <td style="text-align: center">
                    <asp:Button ID="btnlogin" runat="server" CssClass="btn" Height="35px"
                        Text="Login" Width="100px" OnClick="btnlogin_Click" />
                </td>

            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False"
                        Font-Underline="True" ForeColor="Yellow" PostBackUrl="~/RegistrationForm.aspx">New User?</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblmsg" runat="server" ForeColor="Yellow"></asp:Label>
                </td>

            </tr>
            <tr>

                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Yellow"
                        PostBackUrl="~/ForgotPassword.aspx" CausesValidation="False">Forgot Password ?</asp:LinkButton>

                </td>

            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
