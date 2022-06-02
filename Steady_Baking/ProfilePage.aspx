<%@ Page Title="" Language="C#" MasterPageFile="~/Content.Master" AutoEventWireup="true" CodeBehind="ProfilePage.aspx.cs" Inherits="Steady_Baking.ProfilePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .content-box{
            margin-right:40px;
            background-color:white;
            padding:10px 10px 10px 10px;
            border-radius:20px 20px;
            height:80%;
            }
        .input-container{
            margin-top:10px;
            margin-bottom:10px;
            justify-content:space-between;
        }
        .text-box{
            border:2px solid #FFB800;
            outline:none;
            box-shadow:none;
            height:20px;
            width:300px;
        }
    </style>
    <div style="margin-left:60px; width:100%">
        <div style="display:flex; flex-direction:row"></div>
        <div class="content-box">
            <h1>Account</h1>
            
            <div class="input-container">
                    <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
                    <asp:TextBox CssClass="text-box" ID="usernameBox" runat="server"></asp:TextBox>
            </div>
             <div class="input-container">
                    <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label>
                    <asp:TextBox CssClass="text-box" ID="emailBox" runat="server"></asp:TextBox>
             </div>    
                <div class="input-container">
                    <asp:Label ID="Label5" runat="server" Text="Phone Number:"></asp:Label>
                    <asp:TextBox CssClass="text-box" ID="phoneNoBox" runat="server"></asp:TextBox>
                </div>
             <asp:Button ID="Button1" runat="server" Text="Edit Profile" OnClick="Button1_Click" />
             <asp:Label ID="Message" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>
