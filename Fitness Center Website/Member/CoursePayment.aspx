<%@ Page Title="" Language="C#" MasterPageFile="~/Member/Membermaster.master" AutoEventWireup="true" CodeFile="CoursePayment.aspx.cs" Inherits="Member_Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        text-align: center;
    }
    .auto-style4 {
        width: 279px;
    }
    .auto-style5 {
        width: 279px;
        height: 26px;
    }
    .auto-style6 {
        height: 26px;
    }
    .auto-style7 {
        height: 26px;
        text-align: center;
    }
    .auto-style8 {
        width: 279px;
        height: 27px;
    }
    .auto-style9 {
        height: 27px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    p<table class="auto-style1">
    <tr>
        <td class="auto-style3" colspan="2">
            <h3><strong>&nbsp; Payment&nbsp;</strong></h3>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Payment id :</td>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Enrollment id :</td>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Payment Date :</td>
        <td class="auto-style6">
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Username :</td>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Full Name :</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Height="36px" Width="226px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Course&nbsp; :</td>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Duration :</td>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Total Amount :</td>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">GST :</td>
        <td>
            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Net Amount :</td>
        <td>
            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Select Payment Mode :</td>
        <td>
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Online" />
&nbsp;<asp:RadioButton ID="RadioButton2" runat="server" Text="UPI" />
        </td>
    </tr>
    <tr>
        <td class="auto-style5"></td>
        <td class="auto-style6"></td>
    </tr>
    <tr>
        <td class="auto-style5">Bank Name :</td>
        <td class="auto-style6">
            <asp:DropDownList ID="DropDownList1" runat="server" Width="138px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Card Number :</td>
        <td class="auto-style6">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Expiry Date :</td>
        <td class="auto-style6">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">CVV :</td>
        <td class="auto-style6">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8"></td>
        <td class="auto-style9"></td>
    </tr>
    <tr>
        <td class="auto-style7" colspan="2">
            <asp:Image ID="Image1" runat="server" Height="233px" ImageUrl="~/Images/QR Code.jpeg" Width="269px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style7" colspan="2">
            <asp:Button ID="Button1" runat="server" Text="Make Payment" />
        </td>
    </tr>
</table>
</asp:Content>

