<%@ Page Title="" Language="C#" MasterPageFile="~/Content.Master" AutoEventWireup="true" CodeBehind="HomePage1.aspx.cs" Inherits="Steady_Baking.HomePage1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="HomePage1.css" rel="stylesheet" />
    <div style="margin-left:60px; width:100%">
        <div style="display:flex; flex-direction:column">
            <div class="fixedcontent-box">
                <img class="img-cakeheader" src="Assets/CakeHeader.jpg" alt="Welcome Picture">
                <asp:Label ID="Label1" runat="server" CssClass="welcomeheader" Text="<b>Welcome to <p>Steady Baking!"></asp:Label>              
            </div>
        </div>

            <br>
            <br>
        <div style="display:flex; flex-direction:row">
            <div class ="small-content-box">
                
                <asp:Label ID="Label2" runat="server" Text="Recipe"></asp:Label>
                
            </div>
            <div class ="small-content-box">
                <asp:Label ID="Label3" runat="server" Text="Recipe"></asp:Label>
            </div>
            <div class ="small-content-box">
                <asp:Label ID="Label4" runat="server" Text="Recipe"></asp:Label>
            </div>

        </div>      
    </div>
</asp:Content>
