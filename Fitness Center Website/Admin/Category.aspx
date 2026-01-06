<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Admin_Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        width: 293px;
        text-align: left;
    }
    .auto-style6 {
        height: 76px;
        text-align: center;
    }
    .auto-style7 {
        text-align: left;
    }
    .auto-style8 {
        text-align: center;
        height: 13px;
    }
    .auto-style9 {
        width: 293px;
        text-align: left;
        height: 13px;
    }
    .auto-style10 {
        text-align: center;
        height: 60px;
    }
    .auto-style11 {
        width: 293px;
        text-align: left;
        height: 60px;
    }
    .auto-style12 {
        text-align: left;
        height: 33px;
    }
    .auto-style13 {
        width: 293px;
        text-align: left;
        height: 33px;
    }
    .auto-style15 {
        width: 293px;
        text-align: left;
        height: 29px;
    }
        .auto-style16 {
            text-align: center;
            height: 29px;
        }
        .auto-style17 {
            text-align: center;
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1" style="text-align: center">
    <tr>
        <td class="auto-style6" colspan="3">
            <h3>&nbsp;Manage Category&nbsp;</h3>
        </td>
    </tr>
    <tr>
        <td class="auto-style10"><strong>Category ID:</strong></td>
        <td class="auto-style11">
            <asp:TextBox ID="Cid" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
        </td>
        <td rowspan="2" class="auto-style4">
            <asp:Image ID="Image3" runat="server" Height="182px" Width="168px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style8"></td>
        <td class="auto-style9"></td>
    </tr>
    <tr>
        <td class="auto-style16"><strong>Category Name:</strong></td>
        <td class="auto-style15">
            <asp:TextBox ID="Cname" runat="server" ontextchanged="Cname_TextChanged"></asp:TextBox>
        </td>
        <td class="auto-style16">
            <asp:FileUpload ID="FileUpload24" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="auto-style12"></td>
        <td class="auto-style13"></td>
        <td class="auto-style17">
            <asp:Button ID="Image2" runat="server" Text="Upload" Width="88px" OnClick="Image2_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="3"></td>
    </tr>
    <tr>
        <td class="auto-style7" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Add New " OnClick="Button1_Click" />
            &nbsp;<asp:Button ID="Button2" runat="server" Text="Save" Width="76px" OnClick="Button2_Click" />
&nbsp;<asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
&nbsp;<asp:Button ID="Button4" runat="server" Text="Delete" Width="75px" OnClick="Button4_Click" />
&nbsp;<asp:Button ID="Button5" runat="server" Text=" Cancel" Width="80px" style="text-align: center" OnClick="Button5_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="3">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" DataKeyNames="Cid" DataSourceID="SqlDataSource4" Width="100%" Height="100%">
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="Cid" HeaderText="Cid" ReadOnly="True" SortExpression="Cid" />
        <asp:BoundField DataField="Cname" HeaderText="Cname" SortExpression="Cname" />
        <asp:BoundField DataField="Images" HeaderText="Images" SortExpression="Images" />
    </Columns>
</asp:GridView>


            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>


            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
    </tr>
</table>
</asp:Content>

