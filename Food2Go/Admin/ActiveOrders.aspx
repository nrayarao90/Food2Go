<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.master" AutoEventWireup="true" CodeBehind="ActiveOrders.aspx.cs" Inherits="Food2Go.Admin.ActiveOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl" style="width:100%">
        <tr>
            <td class="tblhead">Active Orders
                <asp:Label ID="lbll" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
              <table class="style2" style="text-align: center; width: 100%">
                    <tr>
                        <td style="width: 30%"></td>
            <td style="text-align:center">
                <asp:GridView ID="gvActiceOrders" runat="server" AutoGenerateColumns="False"
                    DataKeyNames="oid"
                    Width="938px" OnRowCommand="gvActiceOrders_RowCommand">
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
                        <asp:TemplateField HeaderText="Dispatch">
                            <ItemTemplate>
                                <asp:LinkButton Text="Dispatch" runat="server" ID="lnkclear" CommandArgument='<%#Eval("oid") %>' ForeColor="Blue"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
                        </tr>
                  </table>
                </td>
        </tr>
    </table>
</asp:Content>
