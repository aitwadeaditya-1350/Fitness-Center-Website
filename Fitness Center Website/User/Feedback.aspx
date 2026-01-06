<%@ Page Title="" Language="C#" MasterPageFile="~/Member/Membermaster.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Member_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        width: 287px;
        text-align: center;
    }
    .auto-style6 {
        text-align: center;
    }
    .auto-style7 {
        width: 287px;
        text-align: center;
        height: 33px;
    }
    .auto-style8 {
        height: 33px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style6" colspan="2">
            <h2><strong>&nbsp;Feedback&nbsp;</strong></h2>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Username :</td>
        <td>
            <asp:TextBox ID="m_username" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Date :</td>
        <td>
            <asp:TextBox ID="f_date" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Subject :</td>
        <td>&nbsp;
            <asp:DropDownList ID="f_subject" runat="server" Width="161px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Rating :</td>
        <td class="auto-style8">&nbsp;
            <asp:DropDownList ID="rating" runat="server" Width="160px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Comment :</td>
        <td>
            <asp:TextBox ID="comment" runat="server" Height="113px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" />
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

