<%@ Page Title="" Language="C#" MasterPageFile="~/Member/Membermaster.master" AutoEventWireup="true" CodeFile="CartDetails.aspx.cs" Inherits="Member_Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            width: 289px;
        }
        .auto-style6 {
            width: 406px;
        }
        .auto-style7 {
            text-align: center;
            height: 26px;
        }
        .auto-style8 {
            width: 406px;
            height: 29px;
        }
        .auto-style9 {
            width: 289px;
            height: 29px;
        }
        .auto-style10 {
            width: 263px;
        }
        .auto-style11 {
            height: 29px;
            width: 263px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4">
                <asp:GridView ID="GridView1CartDetails" runat="server" AutoGenerateColumns="False" DataKeyNames="Pid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1CartDetails_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="Pid" HeaderText="Pid" ReadOnly="True" SortExpression="Pid" />
                        <asp:BoundField DataField="Pcategory" HeaderText="Pcategory" SortExpression="Pcategory" />
                        <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                        <asp:BoundField DataField="Pprice" HeaderText="Pprice" SortExpression="Pprice" />
                        <asp:BoundField DataField="Pstock" HeaderText="Pstock" SortExpression="Pstock" />
                        <asp:BoundField DataField="Pspecs" HeaderText="Pspecs" SortExpression="Pspecs" />
                        <asp:BoundField DataField="Pimage" HeaderText="Pimage" SortExpression="Pimage" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style7" colspan="2">Shipping Details</td>
                        <td class="auto-style7" colspan="2">Order Details</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Name:</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="custname" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style11">Order id:</td>
                        <td class="auto-style2">
                            <asp:Label ID="orderId" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">Address:</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="custaddress" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style10">Member Name:</td>
                        <td>
                            <asp:Label ID="membername" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">City:</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="custcity" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style10">Order Date:</td>
                        <td>
                            <asp:Label ID="orderDate" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Pin Code:</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="custpincode" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style11">Total Amount:</td>
                        <td class="auto-style2">
                            <asp:Label ID="total" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Contact:</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="custcontact" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style11">Order Time:</td>
                        <td class="auto-style2">
                            <asp:Label ID="ordertime" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" class="auto-style7">
                            <asp:Button ID="confirmorder" runat="server" Text="Confirm Order" OnClick="Button1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

