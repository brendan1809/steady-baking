<%@ Page Title="" Language="C#" MasterPageFile="~/SignIn.Master" AutoEventWireup="true" CodeBehind="registrationPage.aspx.cs" Inherits="Steady_Baking.registrationPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .content-box{
            margin-right:40px;
            background-color:white;
            padding:10px 10px 10px 10px;
            border-radius:20px 20px;
            height:500px;
            width:400px;
        }
        .auto-style1 {
            width: 100%;
            height: 149px;
        }
        .auto-style2 {
            width: 242px;
        }
        .auto-style3 {
            width: 242px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 1316px;
        }
        .auto-style6 {
            width: 242px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style8 {
            width: 242px;
            height: 30px;
        }
        .auto-style9 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="auto-style5">&nbsp; Sign Up</h1>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Phone No."></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style9">
                <asp:Button ID="Button1" runat="server" Text="Sign Up" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4">&nbsp;<font size="3">Already have an Account </font><a href="SignIn.aspx">Sign in</a></td>
        </tr>
    </table>
</asp:Content>
