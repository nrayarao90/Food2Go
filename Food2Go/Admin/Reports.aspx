<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Master1.master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="Food2Go.Admin.Reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl" style="width: 100%">
        <tr>
            <td class="tblhead">VIEW REPORT</td>
        </tr>
        <tr>
            <td class="tblhead">Select User :
            <asp:DropDownList ID="drpemail" runat="server" CssClass="txt">
            </asp:DropDownList>
                <asp:Button ID="btnselect" runat="server" CssClass="btn"
                    OnClick="btnselect_Click" Text="Select" />
                &nbsp;</td>
        </tr>
        <tr>
            <td class="tblhead" style="width: 100%">
                <asp:Label ID="lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:GridView ID="gvReports" runat="server" AutoGenerateColumns="False"
                    DataKeyNames="oid"
                    Width="938px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
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
</asp:Content>
