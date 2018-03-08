<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Master1.master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Food2Go.Admin.AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2 {
            width: 664px;
        }

        .style3 {
            width: 186px;
        }

        .style4 {
            text-align: right;
            color: #fff;
            font-size: medium;
            height: 35px;
            width: 186px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl" style="width: 100%">
        <tr>
            <td class="tblhead" style="color:white">ADD NEW PRODUCT</td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style2">
                    <tr>
                        <td class="style3">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">&nbsp;</td>
                        <td class="lbl" style="text-align: right;color:white">Category :&nbsp;
                        </td>
                        <td style="text-align: left">
                            <asp:DropDownList ID="drpcate" runat="server" CssClass="txt"
                                ForeColor="#006600">
                                <asp:ListItem>Select Food</asp:ListItem>
                                <asp:ListItem>Mexican</asp:ListItem>
                                <asp:ListItem>Chinese</asp:ListItem>
                                <asp:ListItem>Italian</asp:ListItem>
                                <asp:ListItem>Indian</asp:ListItem>
                                <asp:ListItem>Thai</asp:ListItem>
                                <asp:ListItem>Mediterranean</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">&nbsp;</td>
                        <td class="lbl" style="text-align: right;color:white">Name :&nbsp;&nbsp;
                        </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtname" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">&nbsp;</td>
                        <td class="lbl" style="text-align: right;color:white">Price :&nbsp;&nbsp;
                        </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtprice" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">&nbsp;</td>
                        <td class="lbl" style="text-align: right;color:white">Image :&nbsp;&nbsp;
                        </td>
                        <td style="text-align: left">
                            <asp:FileUpload ID="fupImage" runat="server" CssClass="txt" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">&nbsp;</td>
                        <td class="lbl" style="text-align: right;color:white">Detail :&nbsp; 
                        </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtdetail" runat="server" CssClass="txt" Height="45px"
                                TextMode="MultiLine" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">&nbsp;</td>
                        <td class="lbl">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td style="text-align: left">
                            <asp:Button ID="btnAddProduct" runat="server" CssClass="btn" Text="ADD PRODUCT" OnClick="btnAddProduct_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td style="text-align: left">
                            <asp:Label ID="lblmsg" runat="server" ForeColor="Yellow"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
