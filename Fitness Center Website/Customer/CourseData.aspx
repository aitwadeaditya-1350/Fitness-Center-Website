<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/customer.master" AutoEventWireup="true" CodeFile="CourseData.aspx.cs" Inherits="Customer_CustomerDatalist" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 54px;
        }
        .auto-style6 {
            width: 100%;
            height: 425px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style1">
        <tr>
            <td>
                <table align="center" class="auto-style6">
                    <tr>
                        <td>
                            <asp:DataList ID="DataList1" runat="server" DataKeyField="CId" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal">
                                <ItemTemplate>
                                    <table align="center" class="auto-style1">
                                        <tr>
                                            <td class="auto-style5" rowspan="4">
                                                <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("Cimage") %>' Height="180px" ImageUrl='<%# Eval("Cimage") %>' Width="137px" />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Cname") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Cdescription") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Rs.<asp:Label ID="Label3" runat="server" Text='<%# Eval("Cfee") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Button ID="Button1" runat="server" Text="Enroll now" />
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Course]"></asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

