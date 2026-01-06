<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="User_Registrattion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            height: 44px;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            width: 103px;
        }
        .auto-style7 {
            height: 44px;
            width: 103px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="6" class="auto-style3">
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <h3 class="auto-style5"><strong>Manage User Information</strong> &nbsp;</h3>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">User id&nbsp;&nbsp; 
                </td>
            <td> 
                <asp:TextBox ID="Uid" runat="server" OnTextChanged="id_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">User Name&nbsp;&nbsp;
                </td>
            <td class="auto-style4">
                <asp:TextBox ID="Uname" runat="server" OnTextChanged="Name_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Mobile No&nbsp;&nbsp;
                </td>
            <td>
                <asp:TextBox ID="Umobno" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            </td>
            <td class="auto-style4"> <asp:TextBox ID="Ucity" runat="server" OnTextChanged="City_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td>
                <asp:RadioButton ID="RBmale" runat="server" Text="Male" OnCheckedChanged="RBmale_CheckedChanged" />
&nbsp;
                <asp:RadioButton ID="RBfemale" runat="server" Text="Female" OnCheckedChanged="RBfemale_CheckedChanged" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">UserName&nbsp;&nbsp;
                </td>
            <td>
                <asp:TextBox ID="Username" runat="server" OnTextChanged="Username_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Password&nbsp;&nbsp;&nbsp;
                </td>
            <td>
                <asp:TextBox ID="Password" runat="server" OnTextChanged="Pass_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" Width="81px" OnClick="btnsubmit_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnreset" runat="server" Text="Reset" Width="81px" OnClick="btnreset_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Uid" HeaderText="Uid" SortExpression="Uid" />
                        <asp:BoundField DataField="Uname" HeaderText="Uname" SortExpression="Uname" />
                        <asp:BoundField DataField="Umobno" HeaderText="Umobno" SortExpression="Umobno" />
                        <asp:BoundField DataField="Ucity" HeaderText="Ucity" SortExpression="Ucity" />
                        <asp:BoundField DataField="Umale" HeaderText="Umale" SortExpression="Umale" />
                        <asp:BoundField DataField="Ufemale" HeaderText="Ufemale" SortExpression="Ufemale" />
                        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Registration]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

