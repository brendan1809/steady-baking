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
        .auto-style12 {
            width: 777px;
            height: 43px;
        }
        .auto-style15 {
            height: 22px;
            width: 777px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:60px; width:100%">
        <div style="display:flex; flex-direction:row"></div>
        <div class="content-box">
            <h1 style="color:#FFB905;">Sign In </h1>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="emailLabel" runat="server" Text="Email: "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:TextBox ID="emailBox" runat="server" BorderColor="#FFB905" Width="186px" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label8" runat="server" Text="Email address not found" Visible="False"></asp:Label>
                        <br>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter email to continue!" ControlToValidate="emailBox" EnableClientScript="False" ForeColor="#D93F31"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Label ID="Label1" runat="server" Text="Password: "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:TextBox ID="pwdBox" runat="server" Width="187px" BorderColor="#FFB905" BorderStyle="Solid" BorderWidth="1px" TextMode="Password"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
                        <br>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter password!" ControlToValidate="pwdBox" EnableClientScript="False" ForeColor="#D93F31"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" BackColor="#FFB905" BorderStyle="Solid" ForeColor="White" OnClick="Button1_Click" Text="Sign in" Height="29px" Width="83px" BorderColor="White" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                </td>
                </tr>
                <tr>
                    <td class="auto-style7"><font size="3">Don't have an account? </font><a href="registrationPage.aspx">Click here to sign up</a> </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
