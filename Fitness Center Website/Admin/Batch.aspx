<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Batch.aspx.cs" Inherits="Admin_Batch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            text-align: left;
            width: 102px;
        }
        .auto-style7 {
            width: 102px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style5" colspan="2">Batch</td>
        </tr>
        <tr>
            <td class="auto-style6">Batch id:</td>
            <td>&nbsp;
                <asp:TextBox ID="B_id" runat="server" Enabled="False" Width="173px"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Batch Name:</td>
            <td>&nbsp;&nbsp;
                <asp:DropDownList ID="C_name" runat="server" DataSourceID="SqlDataSource3" DataTextField="Cname" DataValueField="Cname" Width="185px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Cname] FROM [Course]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Batch Time:</td>
            <td>&nbsp;&nbsp;
                <asp:DropDownList ID="b_time" runat="server" Width="185px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Trainer:</td>
            <td>&nbsp;&nbsp;
                <asp:DropDownList ID="t_name" runat="server" DataSourceID="SqlDataSource1" DataTextField="Tname" DataValueField="Tname" Width="184px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Tname] FROM [Trainer]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add New" />
&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Save" />
&nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update" />
&nbsp;<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Delete" />
&nbsp;<asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Cancel" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;<asp:GridView ID="GridView12" runat="server" AutoGenerateColumns="False" DataKeyNames="B_id" DataSourceID="SqlDataSource2" Width="473px">
                <Columns>
                    <asp:BoundField DataField="B_id" HeaderText="B_id" ReadOnly="True" SortExpression="B_id" />
                    <asp:BoundField DataField="C_name" HeaderText="C_name" SortExpression="C_name" />
                    <asp:BoundField DataField="b_time" HeaderText="b_time" SortExpression="b_time" />
                    <asp:BoundField DataField="t_name" HeaderText="t_name" SortExpression="t_name" />
                </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Batch]"></asp:SqlDataSource>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

