<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Customer_CustomerDatalist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        width: 429px;
    }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 413px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style3">
        <tr>
            <td class="auto-style4">
                <asp:DataList ID="DataList2" runat="server" DataKeyField="Cid" DataSourceID="SqlDataSource2" >
                    <ItemTemplate>
                        <br />
                        <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("Cname") %>' OnClick="Button1_Click" Text='<%# Eval("Cname") %>' />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="Pid" DataSourceID="SqlDataSource1"  RepeatColumns="5" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table align="center" class="auto-style3">
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Pname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("Pimage") %>' Width="130px" Height="130px" />
                                </td>
                            </tr>
                            <tr>
                                <td>Rs<asp:Label ID="Label2" runat="server" Text='<%# Eval("Pprice") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([Pcategory] = @Pcategory)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Pcategory" SessionField="Cname" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

