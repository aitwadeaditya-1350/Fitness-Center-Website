<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Admin_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style4 {
        text-align: center;
        height: 26px;
    }
    .auto-style5 {
    }
    .auto-style6 {
        width: 346px;
    }
        .auto-style11 {
            height: 33px;
        width: 230px;
        text-align: center;
    }
        .auto-style12 {
            width: 346px;
            height: 33px;
        }
        .auto-style13 {
            height: 29px;
        width: 230px;
        text-align: center;
    }
        .auto-style14 {
            width: 346px;
            height: 29px;
        }
    .auto-style18 {
        height: 29px;
        width: 653px;
    }
    .auto-style20 {
        height: 33px;
        width: 653px;
            text-align: center;
        }
    .auto-style21 {
        width: 653px;
        text-align: center;
    }
        .style1
        {
            height: 43px;
        }
        .style2
        {
            width: 346px;
            height: 43px;
        }
        .style3
        {
            height: 38px;
        }
        .style4
        {
            width: 346px;
            height: 38px;
        }
        .auto-style23 {
            text-align: center;
        }
    .auto-style24 {
        text-align: center;
        height: 26px;
    }
    .auto-style25 {
        width: 653px;
        text-align: center;
        height: 26px;
    }
    .auto-style26 {
        width: 230px;
        text-align: center;
    }
    .auto-style27 {
        height: 43px;
        width: 230px;
        text-align: center;
    }
    .auto-style28 {
        height: 38px;
        width: 230px;
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style4" colspan="3">
            <h3>Product</h3>
        </td>
    </tr>
    <tr>
        <td class="auto-style13"><strong>Product ID:</strong></td>
        <td class="auto-style14">
            <asp:TextBox ID="Pid" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td class="auto-style18"></td>
    </tr>
    <tr>
        <td class="auto-style26"><strong>Product Category:</strong></td>
        <td class="auto-style6">
            <asp:DropDownList ID="Pcategory" runat="server" Height="34px" Width="166px" DataSourceID="SqlDataSource4" DataTextField="Cname" DataValueField="Cname">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Cname] FROM [Category]"></asp:SqlDataSource>
        </td>
        <td rowspan="3" class="auto-style21">
            <asp:Image ID="Image1" runat="server" Height="181px" Width="336px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style27"><strong>Product Name:</strong></td>
        <td class="style2">
            <asp:TextBox ID="Pname" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style28"><strong>Product Price:</strong></td>
        <td class="style4">
            <asp:TextBox ID="Pprice" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style26"><strong>Product Stock:</strong></td>
        <td class="auto-style6">
            <asp:TextBox ID="Pstock" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style21">
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="auto-style11"><strong>Product Specification:</strong></td>
        <td class="auto-style12">
            <asp:TextBox ID="Pspecs" runat="server" TextMode="MultiLine" Height="94px" Width="219px"></asp:TextBox>
        </td>
        <td class="auto-style20">
            <asp:Button ID="Image" runat="server" Text="Upload" Width="96px" OnClick="Button6_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3"></td>
    </tr>
        <tr>
        <td class="auto-style24" colspan="3">&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Add New" OnClick="Button1_Click" />
            &nbsp;
            <asp:Button ID="Button2" runat="server" Text="Save" Width="80px" OnClick="Button2_Click" />
&nbsp;
            <asp:Button ID="Button3" runat="server" Text="Update" Width="82px" OnClick="Button3_Click" />
&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Text="Delete" Width="80px" OnClick="Button4_Click" />
&nbsp;&nbsp;
            <asp:Button ID="Button5" runat="server" Text="Cancel" Width="90px" OnClick="Button5_Click" />
        </td>
        </tr>
    <tr>
        <td class="auto-style5" colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style23" colspan="3"><strong>&nbsp;Product Details&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;</strong></td>
    </tr>
    <tr>
        <td class="auto-style24" colspan="2"></td>
        <td class="auto-style25"></td>
    </tr>
    <tr>
        <td class="auto-style23" colspan="3">
            <asp:GridView ID="GridView11" runat="server" AutoGenerateColumns="False" DataKeyNames="Pid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView11_SelectedIndexChanged" Width="100%" Height="100%">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Pid" HeaderText="Pid" ReadOnly="True" SortExpression="Pid" />
                    <asp:BoundField DataField="Pcategory" HeaderText="Pcategory" SortExpression="Pcategory" />
                    <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                    <asp:BoundField DataField="Pprice" HeaderText="Pprice" SortExpression="Pprice" />
                    <asp:BoundField DataField="Pstock" HeaderText="Pstock" SortExpression="Pstock" />
                    <asp:BoundField DataField="Pspecs" HeaderText="Pspecs" SortExpression="Pspecs" />
                    <asp:BoundField DataField="Pimage" HeaderText="Pimage" SortExpression="Pimage" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
        </td>
    </tr>
    </table>
</asp:Content>

