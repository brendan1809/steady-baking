<%@ Page Title="" Language="C#" MasterPageFile="~/Content.Master" AutoEventWireup="true" CodeBehind="AboutPage.aspx.cs" Inherits="Steady_Baking.AboutPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .about-us-text{
          display: block;
          font-size: 25px;
          margin-top: 1em;
          margin-bottom: 1em;
          font-weight: bold;
          line-height: 50px;
          text-align:justify;
          margin-left:200px;
          margin-right:200px;
        }
        .about-image{
            justify-self:center;
            margin-left: 559px;
            margin-right: 0px;
        }
    </style>
   <div>
   <h1 style="margin-left:20px;">Get To Know Us!</h1>
    <asp:Label ID="Label1" runat="server" Text="Label" CssClass="about-us-text"></asp:Label>
     <asp:Image ID="Image1" CssClass="about-image" runat="server"  ImageUrl="https://media.istockphoto.com/photos/fresh-cakes-picture-id497959594?b=1&k=20&m=497959594&s=170667a&w=0&h=bARJnh0s5Udce7K30WPdeVnud23lVg5WngzD9Jral9w="/>
   </div>
</asp:Content>
