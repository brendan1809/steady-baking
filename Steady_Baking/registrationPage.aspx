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
            width: 273px;
        }
        .auto-style3 {
            width: 273px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 1316px;
        }
        .auto-style6 {
            width: 273px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style8 {
            width: 273px;
            height: 30px;
        }
        .auto-style9 {
            height: 30px;
        }
        .auto-style10 {
            margin-right: 40px;
            background-color: white;
            padding: 10px 10px 10px 10px;
            border-radius: 20px 20px;
            height: 500px;
            width: 636px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style10">
    <h1 class="auto-style5">&nbsp; Sign Up</h1>
    
    <table class="auto-style1">
        
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:Label ID="Label4" runat="server" Text="Phone No."></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:TextBox ID="name" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;
                <br>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" EnableClientScript="False" ErrorMessage="Please enter a name." ForeColor="#D93F31"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="phoneNo" runat="server"></asp:TextBox>
                <br>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Plase enter phone number." ForeColor="#D93F31" ControlToValidate="phoneNo" EnableClientScript="False"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            
            <td class="auto-style2">
                <br>
                <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:TextBox ID="email" runat="server"></asp:TextBox>
                <br>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="email" EnableClientScript="False" ErrorMessage="Please enter an email." ForeColor="#D93F31"></asp:RequiredFieldValidator>
                <br>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" EnableClientScript="False" ErrorMessage="Please enter a valid email address." ForeColor="#D93F31" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                </td>
            <td class="auto-style7">
                <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
                <br>
                <asp:TextBox ID="confirmPwd" runat="server"></asp:TextBox>
                <br>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="confirmPwd" ControlToValidate="pwd" EnableClientScript="False" ErrorMessage="Password entered don't match!" ForeColor="#D93F31"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <br>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:TextBox ID="pwd" runat="server"></asp:TextBox>
                <br>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="pwd" EnableClientScript="False" ErrorMessage="Please enter a password." ForeColor="#D93F31"></asp:RequiredFieldValidator>
                </td>
            <td class="auto-style7">
                <br>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <center><asp:Button ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" /></center>
            </td>
            <td class="auto-style9">
                <font size="3">Already have an Account? </font><a href="SignIn.aspx">Sign in</a></td>
        </tr>
        </table>
    </div>
</asp:Content>
