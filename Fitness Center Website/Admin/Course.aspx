<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Course.aspx.cs" Inherits="Admin_Course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style4 {
        width: 100%;
        border: 2px solid #FFFFFF;
    }
    .auto-style5 {
        text-align: center;
    }
    .auto-style6 {
        width: 358px;
        text-align: center;
    }
    .auto-style7 {
        text-align: left;
    }
    .auto-style8 {
        width: 358px;
        text-align: left;
    }
    .auto-style9 {
        text-align: left;
        height: 29px;
    }
    .auto-style10 {
        width: 358px;
        text-align: left;
        height: 29px;
    }
        .auto-style11 {
            text-align: center;
            height: 33px;
            width: 160px;
        }
        .auto-style12 {
            width: 358px;
            text-align: left;
            height: 33px;
        }
        .auto-style13 {
            text-align: center;
            height: 33px;
        }
        .auto-style14 {
            text-align: center;
            height: 29px;
        }
        .auto-style15 {
            text-align: left;
            width: 160px;
        }
        .auto-style16 {
        text-align: center;
        height: 29px;
        width: 160px;
    }
        .auto-style17 {
            text-align: center;
            width: 160px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style4">
    <tr>
        <td colspan="3" style="text-align: center">
            <h3>Course</h3>
        </td>
    </tr>
    <tr>
        <td class="auto-style17"><strong>Course id</strong>:</td>
        <td class="auto-style8">
            <asp:TextBox ID="Cid" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td class="auto-style5">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style17"><strong>Course Name :</strong></td>
        <td class="auto-style8">
            <asp:TextBox ID="Cname" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style5">&nbsp;&nbsp;&nbsp; <strong>Thumbail Image&nbsp;</strong></td>
    </tr>
    <tr>
        <td class="auto-style17"><strong>Course Category:</strong></td>
        <td class="auto-style8">
            <asp:TextBox ID="Ccategory" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style5" rowspan="3">
            <asp:Image ID="Image5" runat="server" Height="138px" Width="278px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style17"><strong>Description:</strong></td>
        <td class="auto-style8">
            <asp:TextBox ID="Cdescription" runat="server" Height="111px" TextMode="MultiLine" Width="208px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style16"><strong>Duration:</strong></td>
        <td class="auto-style10">
            <asp:TextBox ID="Cduration" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style16"><strong>Fee Structure:</strong></td>
        <td class="auto-style10">
            <asp:TextBox ID="Cfee" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style14">
            <asp:FileUpload ID="FileUpload5" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="auto-style11"><strong>Trainer:</strong></td>
        <td class="auto-style12">
            <asp:DropDownList ID="Ctrainer" runat="server" Width="133px" DataSourceID="SqlDataSource3" DataTextField="Tname" DataValueField="Tname">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Tname] FROM [Trainer]"></asp:SqlDataSource>
        </td>
        <td class="auto-style13">
            <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click1" />
        </td>
    </tr>
    <tr>
        <td class="auto-style16"><strong>Schedule:</strong></td>
        <td class="auto-style10">
            <asp:TextBox ID="Cschedule" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style9"></td>
    </tr>
    <tr>
        <td class="auto-style17"><strong>Maximum Participants:</strong></td>
        <td class="auto-style8">
            <asp:TextBox ID="Cparticipants" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style7">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style15">&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5" colspan="3">
            <asp:Button ID="Button2" runat="server" Text="Add New" OnClick="Button2_Click" />
&nbsp;<asp:Button ID="Button3" runat="server" Text="Save" Width="80px" OnClick="Button3_Click" />
&nbsp;<asp:Button ID="Button4" runat="server" Text="Update" Width="92px" OnClick="Button4_Click" />
&nbsp;<asp:Button ID="Button5" runat="server" Text="Delete" Width="82px" OnClick="Button5_Click" />
&nbsp;<asp:Button ID="Button6" runat="server" Text="Cancel" Width="86px" OnClick="Button6_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5" colspan="3">
            <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" DataKeyNames="CId" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="100%">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="CId" HeaderText="CId" ReadOnly="True" SortExpression="CId" />
                    <asp:BoundField DataField="Cname" HeaderText="Cname" SortExpression="Cname" />
                    <asp:BoundField DataField="Ccategory" HeaderText="Ccategory" SortExpression="Ccategory" />
                    <asp:BoundField DataField="Cdescription" HeaderText="Cdescription" SortExpression="Cdescription" />
                    <asp:BoundField DataField="Cduration" HeaderText="Cduration" SortExpression="Cduration" />
                    <asp:BoundField DataField="Cfee" HeaderText="Cfee" SortExpression="Cfee" />
                    <asp:BoundField DataField="Ctranier" HeaderText="Ctranier" SortExpression="Ctranier" />
                    <asp:BoundField DataField="Cschedule" HeaderText="Cschedule" SortExpression="Cschedule" />
                    <asp:BoundField DataField="Cpraticipants" HeaderText="Cpraticipants" SortExpression="Cpraticipants" />
                    <asp:BoundField DataField="Cimage" HeaderText="Cimage" SortExpression="Cimage" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Course]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Course]"></asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

