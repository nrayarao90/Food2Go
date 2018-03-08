<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.master" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="Food2Go.RegistrationForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1 {
            width: 613px;
            text-align: left;
        }

        .style2 {
            text-align: right;
            color: #fff;
            font-size: 20px;
            height: 35px;
            width: 84px;
        }

        .style3 {
            width: 84px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="regi">
        <table class="tbl"  style="width:100%">
            <tr>
                <td class="tblhead" style="text-align: center;color:#a85684">
                    <h1>Register here</h1>
                </td>
            </tr>
            <tr>
                <td>&nbsp;
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <table align="center" class="style1">
                        <tr>
                            <td class="style2">&nbsp;</td>
                            <td class="lbl">First Name :&nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="txtfname" runat="server" CssClass="txt"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                    ControlToValidate="txtfname" ErrorMessage="??" ForeColor="Yellow"
                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">&nbsp;</td>
                            <td class="lbl">Last Name :&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="txtlname" runat="server" CssClass="txt"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                    ControlToValidate="txtlname" ErrorMessage="??" ForeColor="Yellow"
                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">&nbsp;</td>
                            <td class="lbl">Mobile :&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="txtmobile" runat="server" CssClass="txt"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                    ControlToValidate="txtmobile" ErrorMessage="??" ForeColor="Yellow"
                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator1" runat="server"
                                    ControlToValidate="txtmobile" ErrorMessage="invalid mobile" ForeColor="Yellow"
                                    MaximumValue="9999999999" MinimumValue="1000000000" SetFocusOnError="True"
                                    Type="Double"></asp:RangeValidator>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">&nbsp;</td>
                            <td class="lbl">Gender :&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:RadioButton ID="rdomale" runat="server" ForeColor="White" Text="Male"
                                    GroupName="a" Checked="True" />
                                <asp:RadioButton ID="rdofemale" runat="server" ForeColor="White"
                                    Text="Female" GroupName="a" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">&nbsp;</td>
                            <td class="lbl">Address :&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="txtadd" runat="server" CssClass="txt"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">&nbsp;</td>
                            <td class="lbl">City :&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="txtcity" runat="server" CssClass="txt"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                    ControlToValidate="txtcity" ErrorMessage="??" ForeColor="Yellow"
                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">&nbsp;</td>
                            <td class="lbl">Pincode :&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="txtpincode" runat="server" CssClass="txt"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                                    ControlToValidate="txtpincode" ErrorMessage="??" ForeColor="Yellow"
                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator2" runat="server"
                                    ControlToValidate="txtpincode" ErrorMessage="invalid pincode"
                                    ForeColor="Yellow" MaximumValue="999999" MinimumValue="100000"
                                    SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">&nbsp;</td>
                            <td class="lbl">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">&nbsp;</td>
                            <td class="lbl">Email :&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="txtemail" runat="server" CssClass="txt"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                    ControlToValidate="txtemail" ErrorMessage="??" ForeColor="Yellow"
                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                    ControlToValidate="txtemail" ErrorMessage="invalid email" ForeColor="Yellow"
                                    SetFocusOnError="True"
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">&nbsp;</td>
                            <td class="lbl">Password :&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="txtpass" runat="server" CssClass="txt"
                                    TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                                    ControlToValidate="txtpass" ErrorMessage="??" ForeColor="Yellow"
                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">&nbsp;</td>
                            <td class="lbl">Confirm - Pass :&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="txtconfirmpass" runat="server" CssClass="txt"
                                    TextMode="Password"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server"
                                    ControlToCompare="txtpass" ControlToValidate="txtconfirmpass"
                                    ErrorMessage="not same" ForeColor="Yellow"></asp:CompareValidator>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Label ID="lblmsg" runat="server" ForeColor="#FFCC00"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="btnRegister" runat="server" CssClass="btn" Height="35px"
                                    Text="Register Now" Width="140px" OnClick="btnRegister_Click" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td style="color: #FFFF66">Already Register, please login
                                    <asp:LinkButton ID="lbtnLogin" runat="server" CausesValidation="False" 
                                   Font-Strikeout="False" Font-Underline="True" ForeColor="Yellow" 
                                   PostBackUrl="~/Login.aspx">HERE</asp:LinkButton>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
