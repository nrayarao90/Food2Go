<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.master" AutoEventWireup="true" CodeBehind="MyCart.aspx.cs" Inherits="Food2Go.MyCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style3 {
            width: 151px;
        }

        .style4 {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl" style="width:100%">
        <tr>
            <td class="tblhead" colspan="3" style="color: #663300; background-color: #FFFFCC; font-weight: bold; font-size: medium">MY CART -
                            <asp:label id="lbl" runat="server"></asp:label>
            </td>
        </tr>
        <tr>
            <td class="style3">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width:30%">&nbsp;</td>
            <td class="style4" colspan="2">
                <asp:gridview id="gvMyCart" runat="server" autogeneratecolumns="False"
                    datakeynames="oid" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" onrowdeleting="gvMyCart_RowDeleting" 
                                onrowupdating="gvMyCart_RowUpdating">
                            <Columns>
                            <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                            <asp:Image runat="server" ID="imff" ImageUrl='<%#Eval("image") %>' Height="50px" Width="45px" />
                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="ProductName" DataField="pname" />
                            <asp:BoundField HeaderText="Price" DataField="price" />
                            <asp:TemplateField HeaderText="Qnt">
                            <ItemTemplate>
                            <asp:TextBox runat="server" ID="txtq" Text='<%#Eval("qnt") %>' Height="20px" Width="40px"></asp:TextBox>
                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="TotalPrice" DataField="totalprice" />
                            <asp:TemplateField HeaderText="Update">
                            <ItemTemplate>
                            <asp:LinkButton runat="server" Text="Update" ID="lnkupd" CommandName="update" ForeColor="Blue" CommandArgument='<%#Eval("oid") %>'></asp:LinkButton>

                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Remove">
                            <ItemTemplate>
                            <asp:LinkButton runat="server" Text="Remove" ID="lnkrem" CommandName="Delete" ForeColor="Red" CommandArgument='<%#Eval("oid") %>'></asp:LinkButton>
                            </ItemTemplate>
                            </asp:TemplateField>
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
        
                            </asp:gridview>
            </td>
        </tr>
        <tr>
            <td class="style3">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">&nbsp;</td>
            <td class="style4" style="text-align:left">
                <asp:button id="btnContinueShopping" runat="server" postbackurl="~/Home.aspx"
                    text="Continue Shopping" />
                &nbsp;<asp:button id="btnchckout" runat="server" text="CheckOut" OnClick="btnchckout_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
