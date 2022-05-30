<%@ Page Title="" Language="C#" MasterPageFile="~/Content.Master" AutoEventWireup="true" CodeBehind="FAQPage.aspx.cs" Inherits="Steady_Baking.FAQPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Hello! We’re here to assist you :)</h1>
    <br />
    <asp:BulletedList ID="BulletedList1" runat="server" OnClick="BulletedList1_Click1">
        <asp:ListItem>Why do my cookies always turn out flat?</asp:ListItem>
    </asp:BulletedList>
    <br />
    <asp:BulletedList ID="BulletedList2" runat="server" OnClick="BulletedList2_Click2">
        <asp:ListItem>What is different about Dutch-process cocoa than regular cocoa powder?</asp:ListItem>
    </asp:BulletedList>
    <br />
    <asp:BulletedList ID="BulletedList3" runat="server" OnClick="BulletedList3_Click3">
        <asp:ListItem>Why does my cake cave in the middle after it’s baked?</asp:ListItem>
    </asp:BulletedList>
    <br />
    <asp:BulletedList ID="BulletedList4" runat="server" OnClick="BulletedList4_Click4">
        <asp:ListItem>How do I need to alter a recipe if I am using a convection oven?</asp:ListItem>
    </asp:BulletedList>
     <br />
    <asp:BulletedList ID="BulletedList5" runat="server" OnClick="BulletedList5_Click5">
        <asp:ListItem>Can I use regular salted butter instead of unsalted butter?</asp:ListItem>
    </asp:BulletedList>
    <meta charset="utf-8" />
    <span style="white-space:pre-wrap;">We are definitely recommend using unsalted butter in baked goods, because you can control the total amount of salt in the recipe. However, if you do not have unsalted butter and don’t want to make a trip to the store, simply use your salted butter, but omit the salt in the recipe.</span><br />
    <br />
    <asp:BulletedList ID="BulletedList6" runat="server" OnClick="BulletedList6_Click6">
        <asp:ListItem>Can I just grease the sheet instead lining a baking sheet with parchment paper or a silicone baking mat?</asp:ListItem>
    </asp:BulletedList>
    <br />
    <asp:BulletedList ID="BulletedList7" runat="server" OnClick="BulletedList7_Click7">
        <asp:ListItem>Can I make my own buttermilk?</asp:ListItem>
    </asp:BulletedList>

</asp:Content>
