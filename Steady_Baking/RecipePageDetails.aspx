<%@ Page Title="Steady Baking" Language="C#" MasterPageFile="~/Content.Master" AutoEventWireup="true" CodeBehind="RecipePageDetails.aspx.cs" Inherits="Steady_Baking.RecipePageDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
     .description-text{
          display: block;
          font-size: 25px;
          font-weight: bold;
          line-height: 50px;
          text-align:justify;
        }
    </style>
    <div style="display:flex; flex-direction:column; margin-left:40px; width:100%; margin-bottom:60px;">
        <div style="padding:20px;">      
                <asp:Label ID="HeaderTitle" Font-Size="XX-Large" Font-Bold="true" ForeColor="#FEBD01" runat="server" Text="Title"></asp:Label>            
        </div>
        <div style="display:flex;flex-direction:row; ">
            <asp:Image ID="Image1" runat="server" Width="400" Height="400" />
            <div style="display:flex; flex:1; background-color:white; padding:20px; margin-left:40px; flex-direction:column">
                <asp:Label CssClass="description-text" ID="Label1" Font-Size="X-Large" Font-Bold="true" ForeColor="#FEBD01" runat="server" Text="Ingredients"></asp:Label> 
                 <asp:Label CssClass="description-text" ID="Recipe" Font-Size="Larger" Font-Bold="true" ForeColor="gray" runat="server" Text="Description"></asp:Label> 
                 <asp:Label CssClass="description-text" ID="Label2" Font-Size="X-Large" Font-Bold="true" ForeColor="#FEBD01" runat="server" Text="Instructions"></asp:Label> 
                 <asp:Label CssClass="description-text" ID="Details" Font-Size="Larger" Font-Bold="true" ForeColor="gray" runat="server" Text="Description"></asp:Label> 
            </div>
        </div>
    </div>
</asp:Content>
