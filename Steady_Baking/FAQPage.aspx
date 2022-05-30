<%@ Page Title="" Language="C#" MasterPageFile="~/Content.Master" AutoEventWireup="true" CodeBehind="FAQPage.aspx.cs" Inherits="Steady_Baking.FAQPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Hello! We’re here to assist you :)</h1>
    <p></p>
    <asp:BulletedList ID="BulletedList1" runat="server">
        <asp:ListItem>Why do my cookies always turn out flat?</asp:ListItem>
    </asp:BulletedList>
</asp:Content>
