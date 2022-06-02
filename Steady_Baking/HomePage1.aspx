<%@ Page Title="" Language="C#" MasterPageFile="~/Content.Master" AutoEventWireup="true" CodeBehind="HomePage1.aspx.cs" Inherits="Steady_Baking.HomePage1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="HomePage1.css" rel="stylesheet" />
    <div>
        <div style="display:flex; flex-direction:column">
            <div class="fixedcontent-box">
                <img class="img-cakeheader" src="Assets/CakeHeader.jpg" alt="Welcome Picture">
                <asp:Label ID="Label1" runat="server" CssClass="welcomeheader" Text="<b>Welcome to <p>Steady Baking!"></asp:Label>              
            </div>
        </div>

            <br>
            <br>
        <div style="display:flex; flex-direction:row;justify-content:center; margin-left:100px;">
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" RepeatColumns="3" Width="1522px">
                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Justify" VerticalAlign="Middle" />
                <ItemTemplate>
                    
                    <asp:Image ID="Image1" CssClass="img" runat="server" Height="400" ImageUrl='<%# Eval("Image") %>' Width="400" />
                    <br />
                    
                    <asp:Label ID="titleLabel" runat="server" Font-Size="X-Large"  Text='<%# Eval("title") %>' CssClass="title-label"/>
                    <br />
                    <br />
                    
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [image], [title] FROM [Recipe]"></asp:SqlDataSource>
        </div>      
    </div>
</asp:Content>
