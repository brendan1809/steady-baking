<%@ Page Title="" Language="C#" MasterPageFile="~/CMS.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="Steady_Baking.AdminDashboard" %>
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
      .content-box{
          margin-right:40px;
          background-color:white;
          padding:10px 10px 10px 10px;
          border-radius:20px 20px;
          height:200px;
          width:400px;
          justify-content:space-between;
          flex-direction:column;
      }
      .text-label{
            display: block;
            font-size: 2em;
            margin-top: 0.67em;
            margin-bottom: 0.67em;
            margin-left: 0;
            margin-right: 0;
            font-weight: bold;
      }
      
    </style>
    <div style="margin-left:60px; width:100%">
          <h5>Dashboard</h5>
          <h3><u>Dashboard</u></h3>
        <div style="display:flex; flex-direction:row">
            <div class="content-box">
                <h1>Total New User (Daily)</h1>
                 <asp:Label ID="DailyUser" runat="server" CssClass="text-label" Text="user"></asp:Label>
            </div>
             <div class="content-box">
                <h1>Total New User (Weekly)</h1>
                <asp:Label ID="WeeklyUser" runat="server" CssClass="text-label" Text="user"></asp:Label>
            </div>
        </div>      
    </div>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [data_created] FROM [User]"></asp:SqlDataSource>

</asp:Content>


