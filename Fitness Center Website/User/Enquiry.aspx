<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Enquiry.aspx.cs" Inherits="User_Enquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            height: 34px;
        }
        .auto-style5 {
        }
        .auto-style6 {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="5" class="auto-style3">
        <tr>
            <td class="auto-style4" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp; Enquiry Form&nbsp;</strong></td>
        </tr>
        <tr>
            <td class="auto-style5">Name</td>
            <td>
                <asp:TextBox ID="Name" runat="server" OnTextChanged="txtName_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Email</td>
            <td>
                <asp:TextBox ID="Email" runat="server" OnTextChanged="txtEmail_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Phone No</td>
            <td class="auto-style4">
                <asp:TextBox ID="Phone" runat="server" OnTextChanged="txtPhone_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Subject</td>
            <td>
                <asp:TextBox ID="Subject" runat="server" OnTextChanged="txtSubject_TextChanged" width="232px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Message</td>
            <td>
                <asp:TextBox ID="Message" runat="server" TextMode="MultiLine" OnTextChanged="txtMessage_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Submit" Width="76px" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Reset" Width="73px" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

