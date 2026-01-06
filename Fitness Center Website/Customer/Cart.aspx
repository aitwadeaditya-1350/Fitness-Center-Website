<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Customer_Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 142px;
        }
        .auto-style6 {
            width: 142px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="2">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="Pid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="4" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="Pname" runat="server" Text='<%# Eval("Pname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Image ID="Image1" runat="server" Height="94px" ImageUrl='<%# Eval("Pimage") %>' Width="102px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">Price:</td>
                                <td class="auto-style7">
                                    <asp:Label ID="Pprice" runat="server" Text='<%# Eval("Pprice") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">Category:</td>
                                <td>
                                    <asp:Label ID="Pcategory" runat="server" Text='<%# Eval("Pcategory") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">Quantity:</td>
                                <td>
                                    <asp:DropDownList ID="Quantity" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                        <asp:ListItem>Select Quantity</asp:ListItem>
                                        <asp:ListItem Value="1"></asp:ListItem>
                                        <asp:ListItem Value="2"></asp:ListItem>
                                        <asp:ListItem Value="3"></asp:ListItem>
                                        <asp:ListItem Value="4"></asp:ListItem>
                                        <asp:ListItem Value="5"></asp:ListItem>
                                        <asp:ListItem Value="6"></asp:ListItem>
                                        <asp:ListItem Value="7"></asp:ListItem>
                                        <asp:ListItem Value="8"></asp:ListItem>
                                        <asp:ListItem Value="9"></asp:ListItem>
                                        <asp:ListItem Value="10"></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">Stock:</td>
                                <td>
                                    <asp:Label ID="Pstock" runat="server" Text='<%# Eval("Pstock") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">Total:</td>
                                <td>
                                    <asp:Label ID="Total" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Button ID="Button2" runat="server" Text="Add to Cart" OnClick="Button2_Click1" />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

