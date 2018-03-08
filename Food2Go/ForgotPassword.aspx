<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Food2Go.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="regi">
       <table class="tbl" style="width:100%">
           <tr>
                 <td class="tblhead" style="text-align: center; color: #a85684">
                 Forgot Password</td>
           </tr>
           <tr>
               <td>
                   &nbsp;</td>
           </tr>
           <tr>
               <td>
               <table style="text-align: center; width: 100%" class="style1">
                       <tr>
                           <td class="style2">
                               &nbsp;</td>
                           <td class="lbl" style="text-align: right; width: 50%">
                               UserName :
                           </td>
                           <td style="text-align: left;width:10%">
                               <asp:TextBox ID="txtusername" runat="server" CssClass="txt"></asp:TextBox>
                           </td>
                          <td style="text-align: left">
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                   ControlToValidate="txtusername" ErrorMessage="??" ForeColor="Yellow" 
                                   SetFocusOnError="True"></asp:RequiredFieldValidator>
                           </td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="style2">
                               &nbsp;</td>
                           <td class="lbl" style="text-align: right; width: 50%">
                               Mobile No :
                           </td>
                            <td style="text-align: left">
                               <asp:TextBox ID="txtmobile" runat="server" CssClass="txt" style="text-align: left"></asp:TextBox>
                           </td>
                            <td style="text-align: left">
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                   ControlToValidate="txtmobile" ErrorMessage="??" ForeColor="Yellow" 
                                   SetFocusOnError="True"></asp:RequiredFieldValidator>
                           </td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="style3">
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="style3">
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                          <td style="text-align: left">
                               <asp:Button ID="btnlogin" runat="server" CssClass="btn" Height="35px" 
                                   Text="Get Password" Width="160px" OnClick="btnlogin_Click" />
                           </td>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="style3">
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                             <td style="text-align: left">
                               <asp:Label ID="lblmsg" runat="server" ForeColor="Yellow"></asp:Label>
                           </td>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="style3">
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                             <td style="text-align: left">
                               <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                   ForeColor="Yellow" PostBackUrl="~/Login.aspx">Login Now !</asp:LinkButton>
                           </td>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                       </tr>
                   </table>
               </td>
           </tr>
           <tr>
               <td>
                   &nbsp;</td>
           </tr>
       </table>
</div>
</asp:Content>
