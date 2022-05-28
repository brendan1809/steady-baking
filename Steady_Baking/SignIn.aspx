<%@ Page Title="" Language="C#" MasterPageFile="~/SignIn.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Steady_Baking.SignIn1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="SocialMediaButton.css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            height: 23px;
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
        .auto-style10 {
            width: 35px;
            height: 35px;
        }
        .auto-style12 {
            width: 777px;
            height: 43px;
        }
        .auto-style13 {
            height: 43px;
        }
        .auto-style15 {
            height: 22px;
            width: 777px;
        }
        .auto-style16 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="emailLabel" runat="server" Text="Email: "></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:TextBox ID="emailBox" runat="server" BorderColor="#FFB905" Width="186px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="Label1" runat="server" Text="Password: "></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox1" runat="server" Width="187px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<a href="registrationPage.aspx">Click here to sign up</a>&nbsp;<img src="Assets/Facebook%20logo.png" class="auto-style10" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" BackColor="#FFB905" BorderStyle="Solid" ForeColor="White" OnClick="Button1_Click" Text="Sign In" />
            </td>
        </tr>
    </table>
</asp:Content>
