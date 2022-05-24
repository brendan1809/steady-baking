<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignInPage.aspx.cs" Inherits="Steady_Baking.SignInPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style1 {
            height: 278px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 250px;
        }
        .auto-style4 {
            width: 250px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div><p class="auto-style1">Sign In<table class="auto-style2">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label2" runat="server" Text="Password: "></asp:Label>
                </td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
        </p>
    </div>


</asp:Content>

