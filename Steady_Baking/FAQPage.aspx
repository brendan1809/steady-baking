<%@ Page Title="" Language="C#" MasterPageFile="~/Content.Master" AutoEventWireup="true" CodeBehind="FAQPage.aspx.cs" Inherits="Steady_Baking.FAQPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
    .bannerImage {
         border-radius: 8px;
         background-size: 100%;
         margin-bottom:40px
    }
     .description-text{
          display: block;
          font-size: 25px;
          font-weight: bold;
          line-height: 50px;
          text-align:justify;
        }
    </style>
    <div style="margin-left:30px;">
        
   <asp:Image ID="Image1" CssClass="bannerImage" runat="server" ImageUrl="Assets/Frame%2035554.png" Width="1700" Height="350"/>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <h1 style="color:#FFB905;">Question: </h1>
                <asp:Label CssClass="description-text" ID="questionLabel" runat="server" Text='<%# Eval("question") %>' />
                <br />
                 <h1 style="color:#FFB905;">Answer: </h1>
                <asp:Label CssClass="description-text" ID="answerLabel" runat="server" Text='<%# Eval("answer") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [question], [answer] FROM [FAQ]"></asp:SqlDataSource>
    </div>
</asp:Content>
