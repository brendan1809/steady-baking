<%@ Page Title="" Language="C#" MasterPageFile="~/Content.Master" AutoEventWireup="true" CodeBehind="RecipePage.aspx.cs" Inherits="Steady_Baking.RecipePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
    .Banner{
        display:flex;
        padding:20px;
        width:90vw;
        justify-content:space-between;
    }
    </style>
    <div class="Banner">
  
    <asp:Image ID="Image1" runat="server" ImageUrl="Assets/Frame%2035548%20(1).png" Width="2000" Height="300"/>

    </div>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal">
         <ItemTemplate>
                    
                    <asp:Image ID="Image1" runat="server" Height="90%" ImageUrl='<%# Eval("Image") %>' Width="90%" />
                    <br />
                    
                    <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' CssClass="title-label"/>
                    <br />
                    <br />
                    
                </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [image], [title] FROM [Recipe] ORDER BY [created_at] DESC"></asp:SqlDataSource>
</asp:Content>
