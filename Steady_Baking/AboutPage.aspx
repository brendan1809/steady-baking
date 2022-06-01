<%@ Page Title="" Language="C#" MasterPageFile="~/Content.Master" AutoEventWireup="true" CodeBehind="AboutPage.aspx.cs" Inherits="Steady_Baking.AboutPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .about-us-text{
          display: block;
          font-size: 1.5em;
          margin-top: 0.83em;
          margin-bottom: 0.83em;
          margin-left: 0;
          margin-right: 0;
          font-weight: bold;
          text-align:justify;
        }
    </style>
   <div>
   <h1>Get To Know Us!</h1>
    <asp:Label ID="Label1" runat="server" Text="Label" CssClass="about-us-text"></asp:Label>
   </div>
</asp:Content>
