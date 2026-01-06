<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="trainer.aspx.cs" Inherits="Admin_trainer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 200px;
        }
        .auto-style6 {
            width: 69px;
        }
        .auto-style8 {
            text-align: center;
            height: 38px;
        }
        .auto-style9 {
            width: 200px;
            height: 28px;
        text-align: center;
    }
        .auto-style10 {
            width: 69px;
            height: 28px;
        }
        .auto-style11 {
            height: 28px;
        }
        .auto-style12 {
            width: 200px;
            height: 29px;
        text-align: center;
    }
        .auto-style13 {
            width: 69px;
            height: 29px;
        }
        .auto-style14 {
            height: 29px;
        }
    .auto-style15 {
        width: 200px;
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4" colspan="3">
                <h3><strong>&nbsp;Trainer Information&nbsp;</strong></h3>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Trainer id</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="Tid" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td class="auto-style4">&nbsp;<strong>Trainer Image&nbsp;</strong></td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Trainer Name:-</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="Tname" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style4" rowspan="2">
                <asp:Image ID="Image7" runat="server" Height="123px" Width="224px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Trainer Age:-</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="Tage" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Trainer E-mail:-</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="Temail" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:FileUpload ID="FileUpload7" runat="server" Width="210px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Trainer Mob.No:-</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="Tphno" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style5" OnClick="Button1_Click" Text="Upload" Width="92px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Trainer Experience:-</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="Texp" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Trainer Specification:-</strong></td>
            <td class="auto-style13">
                <asp:TextBox ID="Tspecs" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Trainer Available:-</strong></td>
            <td class="auto-style10">
                <asp:TextBox ID="Tavailable" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8" colspan="3">&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add New" />
                &nbsp;
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Save" />
&nbsp;<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Update" />
&nbsp;<asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Delete" />
&nbsp;<asp:Button ID="Button6" runat="server" Text="Cancel" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" DataKeyNames="Tid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView7_SelectedIndexChanged" Width="100%" Height="100%">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Tid" HeaderText="Tid" ReadOnly="True" SortExpression="Tid" />
                        <asp:BoundField DataField="Tname" HeaderText="Tname" SortExpression="Tname" />
                        <asp:BoundField DataField="Tage" HeaderText="Tage" SortExpression="Tage" />
                        <asp:BoundField DataField="Temail" HeaderText="Temail" SortExpression="Temail" />
                        <asp:BoundField DataField="Tphno" HeaderText="Tphno" SortExpression="Tphno" />
                        <asp:BoundField DataField="Texp" HeaderText="Texp" SortExpression="Texp" />
                        <asp:BoundField DataField="Tspecs" HeaderText="Tspecs" SortExpression="Tspecs" />
                        <asp:BoundField DataField="Tavailable" HeaderText="Tavailable" SortExpression="Tavailable" />
                        <asp:BoundField DataField="Timage" HeaderText="Timage" SortExpression="Timage" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Trainer]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

