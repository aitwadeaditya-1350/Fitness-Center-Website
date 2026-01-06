<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ManageAdmin.aspx.cs" Inherits="Admin_ManageAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        width: 171px;
    }
    .auto-style6 {
        margin-top: 20px;
    }
    .auto-style7 {
        text-align: left;
        height: 38px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <table class="auto-style1">
    <tr>
        <td class="auto-style4" colspan="2">
            <h3><strong>Manage Admin</strong></h3>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Admin Name:-</td>
        <td>
            <asp:TextBox ID="adminname" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Password:-</td>
        <td>
            <asp:TextBox ID="adminpassword" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Retype Password:-</td>
        <td>
            <asp:TextBox ID="adminrepassword" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7" colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />
&nbsp;<asp:Button ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridView8" runat="server" Width="100%" AutoGenerateColumns="False" CssClass="auto-style6" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView8_SelectedIndexChanged" Height="100%">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Adminname" HeaderText="Adminname" SortExpression="Adminname" />
                    <asp:BoundField DataField="Adminpassword" HeaderText="Adminpassword" SortExpression="Adminpassword" />
                    <asp:BoundField DataField="Adminrepassword" HeaderText="Adminrepassword" SortExpression="Adminrepassword" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ManageAdmin]"></asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

