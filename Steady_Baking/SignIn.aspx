<%@ Page Title="" Language="C#" MasterPageFile="~/SignIn.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Steady_Baking.SignIn1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="SocialMediaButton.css" />
    <style type="text/css">
        .content-box{
            margin-right:40px;
            background-color:white;
            padding:10px 10px 10px 10px;
            border-radius:20px 20px;
            height:500px;
            width:500px;
        }
        .auto-style1 {
            width: 100%;
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
        .auto-style15 {
            height: 22px;
            width: 777px;
        }
        .auto-style17 {
            width: 777px;
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:60px; width:100%">
        <div style="display:flex; flex-direction:row"></div>
        <div class="content-box">
            <h1 class="auto-style5">&nbsp;&nbsp; Sign In</h1>
            <table class="auto-style1">
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
                        <asp:TextBox ID="pwdBox" runat="server" Width="187px"></asp:TextBox><a href="ForgotPassword.aspx">Forgot Password</a>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" BackColor="#FFB905" BorderStyle="Solid" ForeColor="White" OnClick="Button1_Click" Text="Sign in" Height="29px" Width="83px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                </td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <font size="3">or sign in with other accounts?</font></td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="Assets/Facebook%20logo.png" class="auto-style10" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"><font size="3">Don't have an account? </font><a href="registrationPage.aspx">Click here to sign up</a> </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
