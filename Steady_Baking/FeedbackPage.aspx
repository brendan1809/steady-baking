<%@ Page Title="" Language="C#" MasterPageFile="~/Content.Master" AutoEventWireup="true" CodeBehind="FeedbackPage.aspx.cs" Inherits="Steady_Baking.FeedbackPage" %>
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
        .auto-style2 {
            height: 30px;
        }
    </style>
    <div style="margin-left:60px; width:100%">
        <div style="display:flex; flex-direction:row"></div>
        <div class="content-box">
            <center><h2>We value your feedback </h2></center>
            <center><font size="3">Please complete the following form and help us improve our customer experience. </font></center>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Name:"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" Text="This field is required" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Text="This field is required" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Contact Number"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label7" runat="server" Text="This field is required" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Tell us how we can improve"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="44px" Width="377px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <center><asp:Button ID="Button1" runat="server" Text="Submit Feedback" Width="115px" OnClick="Button1_Click" /></center>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div style="display:flex; flex-direction:row; margin-top:40px;"></div>
</asp:Content>
