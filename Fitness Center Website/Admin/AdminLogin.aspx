<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Admin_AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style4 {        width: 166px;
    }
    .auto-style5 {
        text-align: center;
        height: 31px;
    }
    .auto-style6 {
        text-align: left;
    }
    .auto-style7 {
        text-align: left;
        width: 166px;
    }
        .auto-style8 {
            text-align: left;
            width: 166px;
            height: 31px;
        }
        .auto-style9 {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="2" class="auto-style1">
    <tr>
        <td class="auto-style5" colspan="2">
            <h3>&nbsp;&nbsp; Admin Login&nbsp;</h3>
        </td>
    </tr>
    <tr>
        <td class="auto-style8"><strong>Admin UserName</strong></td>
        <td class="auto-style9">
            <asp:TextBox ID="Adminusername" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Password</strong></td>
        <td>
            <asp:TextBox ID="Adminpassword" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6" colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Login" Font-Bold="True" style="text-align: center" Width="88px" OnClick="Button1_Click" />
        &nbsp;&nbsp;
            <asp:Button ID="Button7" runat="server" Text="Cancel" />
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

