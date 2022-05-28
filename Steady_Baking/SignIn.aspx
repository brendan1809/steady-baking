<%@ Page Title="" Language="C#" MasterPageFile="~/SignIn.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Steady_Baking.SignIn1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 256px;
        }
        .auto-style3 {
            width: 256px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 256px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            width: 777px;
        }
        .auto-style8 {
            height: 23px;
            width: 777px;
        }
        .auto-style9 {
            height: 26px;
            width: 777px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style8">
                <asp:Label ID="emailLabel" runat="server" Text="Email: "></asp:Label>
            </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style9">
                <asp:TextBox ID="emailBox" runat="server" BorderColor="#FFB905" Width="186px"></asp:TextBox>
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label1" runat="server" Text="Password: "></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox1" runat="server" Width="187px"></asp:TextBox>
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" BackColor="#FFB905" BorderStyle="Solid" ForeColor="White" OnClick="Button1_Click" Text="Sign In" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
