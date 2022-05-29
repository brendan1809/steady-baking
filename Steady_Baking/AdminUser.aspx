<%@ Page Title="" Language="C#" MasterPageFile="~/CMS.Master" AutoEventWireup="true" CodeBehind="AdminUser.aspx.cs" Inherits="Steady_Baking.AdminUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <style>
      h5{
          margin:0;
          color:#FFB905;
      }
      h3{
          color:#FFB905;
      }
      .AddButton{
          height: 43px;
          width:196px;
          border:0px;
          background-color:#FFB905;
          color:white;
      }
    </style>
    <div style="margin-left:60px; width:100%">
          <h5>User Management</h5>
           <div style="flex-direction:row; display:flex; justify-content:space-between; align-items:center;">
          <h3><u>User Management</u></h3>    
               <asp:Button CssClass="AddButton" ID="AddUser" runat="server" Text="Add New Customer" onClick="AddUser_Click"/>

           </div>
    </div>

</asp:Content>


