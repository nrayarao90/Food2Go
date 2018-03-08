<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.master" AutoEventWireup="true" CodeBehind="MyOrder.aspx.cs" Inherits="Food2Go.MyOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1 {
            width: 1173px;
        }

        .style2 {
            width: 149px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl" style="width: 100%">
        <tr>
            <td class="tblhead"
                style="color: #663300; background-color: #FFFFCC; font-weight: bold; font-size: medium">MY ORDER -
                <asp:Label ID="lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;

            </td>
        </tr>
        <tr>
            <td>
                <table style="width: 100%">
                    <tr>
                        <td>
                            <table class="style1">
                                <tr>
                                    <td class="style2" style="width: 50%"></td>
                                    <td>
                                        <asp:GridView ID="gvMyOrders" runat="server" AutoGenerateColumns="False"
                                            DataKeyNames="oid" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                                            <Columns>
                                                <asp:BoundField DataField="Email" HeaderText="Email"
                                                    SortExpression="email">
                                                    <ItemStyle Width="250px" />
                                                </asp:BoundField>
                                                <asp:TemplateField HeaderText="Image">
                                                    <ItemTemplate>
                                                        <asp:Image ID="imgg" runat="server" ImageUrl='<%#Eval("Image") %>' Height="40px" Width="40px" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="pname" HeaderText="ProductName"
                                                    SortExpression="pname">
                                                    <ItemStyle Width="180px" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                                                <asp:BoundField DataField="Qnt" HeaderText="Qnt"
                                                    SortExpression="cname" />
                                                <asp:BoundField DataField="TotalPrice" HeaderText="totalprice"
                                                    SortExpression="cname" />
                                            </Columns>
                                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                            <RowStyle BackColor="White" ForeColor="#003399" />
                                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                                            <SortedDescendingHeaderStyle BackColor="#002876" />
                                        </asp:GridView>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

    </table>
</asp:Content>
