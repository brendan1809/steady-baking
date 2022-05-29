<%@ Page Title="" Language="C#" MasterPageFile="~/SignIn.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Steady_Baking.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
        }

        btn {
            position:fixed;
            left:220px;
            top:610px;
        }
        </style>
    <div style="margin-left:60px; width:100%">
        <div style="display:flex; flex-direction:row"></div>
        <div class="content-box">
            <center><h1>Forgot Password</h1></center>
            <center><font size="3">Enter your email address and we'll send you an email with instructions to reset your password </font></center>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="382px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <center><asp:Button ID="Button1" runat="server" Text="Forgot Password" OnClick="Button1_Click" Width="119px" /></center>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
