<%@ Page Title="" Language="C#" MasterPageFile="~/Member/Membermaster.master" AutoEventWireup="true" CodeFile="PaymentDetails.aspx.cs" Inherits="Member_PaymentDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            text-align: center;
            height: 29px;
        }
        .auto-style4 {
        width: 188px;
    }
        .auto-style5 {
            width: 188px;
            height: 24px;
        }
        .auto-style6 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3" colspan="2"><strong>&nbsp;Payment Details&nbsp;</strong></td>
        </tr>
        <tr>
            <td class="auto-style4">Member Username :</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Full Name :</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Paymment id :</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Order id :</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Payment Date :</td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Total Amount :</td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">GST :</td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Net amount :</td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Payment Mode :</td>
            <td class="auto-style6">
                <asp:RadioButton ID="RadioButton1" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" Text="COD" />
&nbsp;<asp:RadioButton ID="RadioButton2" runat="server" Text="Online" />
&nbsp;<asp:RadioButton ID="RadioButton3" runat="server" Text="UPI" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Bank Name :</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="165px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Card Number :</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Expiry Date :</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">CVV :</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>

