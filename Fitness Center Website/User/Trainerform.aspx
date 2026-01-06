<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Trainerform.aspx.cs" Inherits="User_Trainerform" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            height: 19px;
            text-align: center;
        }
        .auto-style5 {
            height: 24px;
        }
        .auto-style6 {
            width: 301px;
        }
        .auto-style7 {
            height: 24px;
            width: 301px;
            text-align: center;
        }
        .auto-style8 {
            width: 408px;
        }
        .auto-style9 {
            width: 408px;
            text-align: center;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            width: 301px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style3">
        <tr>
            <td class="auto-style4" colspan="3">&nbsp; Trainer Form&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9" rowspan="6">
                <asp:Image ID="Image1" runat="server" Height="178px" Width="175px" />
            </td>
            <td class="auto-style11">id</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">Name</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style11">E-mail</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style11">Contact</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:FileUpload ID="FileUpload2" runat="server" />
            </td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Button ID="Button2" runat="server" Text="Upload" Width="83px" />
            </td>
            <td class="auto-style11">Speciality</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style11">Certification</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style11">Experience</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style11">Resume</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Upload" Width="90px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10" colspan="3">
                <asp:Button ID="Button3" runat="server" Text="Submit" Width="115px" />
            </td>
        </tr>
    </table>
</asp:Content>

