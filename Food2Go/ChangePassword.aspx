<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Food2Go.ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1 {
            width: 434px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl" style="width: 100%">
        <tr>
            <td style="color: #663300; background-color: #FFFFCC; font-weight: bold; font-size: medium"
                class="tblhead">Change Password</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style1" style="width: 100%">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl" style="text-align: right; width: 50%">Enter New Password :
                        </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtnewpass" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td style="text-align: left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="txtnewpass" ErrorMessage="??" ForeColor="Yellow"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl" style="text-align: right; width: 50%">Confirm Password :
                        </td>
                        <td style="text-align: left;width:10%">
                            <asp:TextBox ID="txtcpass" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td style="text-align: left">
                            <asp:CompareValidator ID="CompareValidator1" runat="server"
                                ControlToCompare="txtcpass" ControlToValidate="txtnewpass" ErrorMessage="??"
                                ForeColor="Yellow" SetFocusOnError="True"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="text-align:left">
                            <asp:Button ID="btnChangePwd" runat="server" CssClass="btn"
                                Text="Change Password" OnClick="btnChangePwd_Click" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="text-align:left">
                            <asp:Label ID="lbl" runat="server" ForeColor="Yellow"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
