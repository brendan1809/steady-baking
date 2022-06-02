<%@ Page Title="" Language="C#" MasterPageFile="~/Content.Master" AutoEventWireup="true" CodeBehind="RecipePage.aspx.cs" Inherits="Steady_Baking.RecipePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
    .Banner{
        display:flex;
        padding:20px;
        width:90vw;
        flex-direction:column;
    }
    .img {
            border-radius: 8px;
            background-size: 100%;
        }
    .bannerImage {
         border-radius: 8px;
         background-size: 100%;
         margin-bottom:40px
    }
    </style>
    <div class="Banner">
  
    <asp:Image ID="Image1" CssClass="bannerImage" runat="server" ImageUrl="Assets/Frame%2035548%20(1).png" Width="1700" Height="350"/>

  
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
              <ItemTemplate>
                    
                    
                    <asp:ImageButton ID="ImageButton1" CssClass="img" runat="server" Height="400" ImageUrl='<%# Eval("Image") %>' Width="400" CommandArgument='<%# Eval("Id")%>' CommandName="viewdetails" />
                    
                    <asp:Label ID="titleLabel" runat="server" Font-Size="X-Large"  Text='<%# Eval("title") %>' CssClass="title-label"/>
                    <br />
                    <br />
                    
                </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [image], [title], [Id] FROM [Recipe] ORDER BY [created_at] DESC"></asp:SqlDataSource>
  </div>
</asp:Content>
