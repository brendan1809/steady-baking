<%@ Page Title="" Language="C#" MasterPageFile="~/Content.Master" AutoEventWireup="true" CodeBehind="ContactUsPage.aspx.cs" Inherits="Steady_Baking.ContactUsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
    .bannerImage {
         border-radius: 8px;
         background-size: 100%;
         margin-bottom:40px
    }

    </style>
     <div style="margin-left:30px;">
        
   <asp:ImageButton ID="Image1" CssClass="bannerImage" runat="server" ImageUrl="Assets/Frame%2035547.png" Width="1700" Height="350" OnClick="Image1_Click"/>
    
          <div style="flex-direction:row; justify-content:space-between; display:flex;">
              
          <asp:ImageButton ID="ImageButton1" CssClass="bannerImage" runat="server" ImageUrl="Assets/image%2016.png" Width="250" Height="250" OnClick="ImageButton1_Click"/>

          <asp:ImageButton ID="ImageButton2" CssClass="bannerImage" runat="server" ImageUrl="Assets/image%2017.png" Width="250" Height="250" OnClick="ImageButton2_Click"/>

          <asp:ImageButton ID="ImageButton3" CssClass="bannerImage" runat="server" ImageUrl="Assets/image%2018.png" Width="250" Height="250" OnClick="ImageButton3_Click"/>
          </div>
    </div>
</asp:Content>
