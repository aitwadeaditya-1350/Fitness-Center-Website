<%@ Page Title="" Language="C#" MasterPageFile="~/Member/Membermaster.master" AutoEventWireup="true" CodeFile="Enrollmentform.aspx.cs" Inherits="Member_Enrollmentform" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        height: 26px;
        text-align: center;
    }
    .auto-style4 {
        height: 26px;
    }
    .auto-style7 {
        height: 26px;
        width: 214px;
    }
    .auto-style8 {
        width: 214px;
    }
    .auto-style12 {
        width: 214px;
        height: 65px;
    }
    .auto-style14 {
        height: 65px;
    }
    .auto-style15 {
        width: 214px;
        height: 45px;
    }
    .auto-style17 {
        height: 45px;
    }
    .auto-style18 {
        height: 29px;
        width: 214px;
    }
    .auto-style21 {
        height: 26px;
        width: 306px;
    }
    .auto-style22 {
        width: 306px;
    }
    .auto-style23 {
        height: 29px;
        width: 306px;
    }
    .auto-style24 {
        width: 306px;
        height: 45px;
    }
    .auto-style25 {
        width: 306px;
        height: 65px;
    }
    .auto-style26 {
        height: 26px;
        width: 293px;
    }
    .auto-style27 {
        width: 293px;
    }
    .auto-style28 {
        height: 29px;
        width: 293px;
    }
    .auto-style29 {
        width: 293px;
        height: 45px;
    }
    .auto-style30 {
        width: 293px;
        height: 65px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style3" colspan="4">Enrollment Form</td>
    </tr>
    <tr>
        <td class="auto-style7">id</td>
        <td class="auto-style26">
            <asp:TextBox ID="Enroll_id" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style21">&nbsp;DOB&nbsp;</td>
        <td class="auto-style4">
            <asp:TextBox ID="dob" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Enter Name</td>
        <td class="auto-style27">
            <asp:TextBox ID="Enroll_name" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style22">&nbsp;Age&nbsp;</td>
        <td>
            <asp:TextBox ID="age" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style18">Gender</td>
        <td class="auto-style28">
            <asp:RadioButton ID="rbmale" runat="server" Text="Male" />
&nbsp;&nbsp;
            <asp:RadioButton ID="rbfemale" runat="server" Text="Female" />
        </td>
        <td class="auto-style23">Weight</td>
        <td class="auto-style2">
            <asp:TextBox ID="weight" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Enter Contact</td>
        <td class="auto-style27">
            <asp:TextBox ID="contact" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style22">Enter Email</td>
        <td>
            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15">Enter Address</td>
        <td class="auto-style29">
            <asp:TextBox ID="address" runat="server" Height="127px" TextMode="MultiLine" Width="232px"></asp:TextBox>
        </td>
        <td class="auto-style24">Enter City</td>
        <td class="auto-style17">
            <asp:TextBox ID="city" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style27">&nbsp;</td>
        <td class="auto-style22">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">Course</td>
        <td class="auto-style26">
            <asp:Label ID="course" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="auto-style21">Course Duration</td>
        <td class="auto-style4">
            <asp:DropDownList ID="duration" runat="server" Width="167px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style27">&nbsp;</td>
        <td class="auto-style22">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">Do you have any health issues ?</td>
        <td class="auto-style30">
            <asp:TextBox ID="issues" runat="server" Height="122px" TextMode="MultiLine" Width="222px"></asp:TextBox>
        </td>
        <td class="auto-style25">Do you Want a Personal Trainer?</td>
        <td class="auto-style14">
            <asp:RadioButton ID="tyes" runat="server" Text="Yes" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="tno" runat="server" Text="No" />
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style27">&nbsp;</td>
        <td class="auto-style22">Fees</td>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Occuption</td>
        <td class="auto-style27">
            <asp:TextBox ID="occuption" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style22">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style27">&nbsp;</td>
        <td class="auto-style22">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="4">
            <asp:Button ID="Button1" runat="server" Text="Submit" Width="108px" OnClick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style27">&nbsp;</td>
        <td class="auto-style22">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

