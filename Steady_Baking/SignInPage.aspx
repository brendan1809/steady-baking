﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SignIn.Master" AutoEventWireup="true" CodeBehind="SignInPage.aspx.cs" Inherits="Steady_Baking.SignInPage" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <style>
        .center-view{
            flex-direction:row;
            display:flex;
            align-items:center;   
        }
        .right-view{
            margin-right:30px;
            flex-direction:row;
            display:flex;
            align-items:center;
            justify-content:space-between;
        }
        .message{
            width:20px;
            height:20px;
            padding-left:5px;
            padding-right:5px;
        }
        .notification{
            width:15px;
            height:17px;
            padding-left:5px;
            padding-right:10px;
        }
        .logo{
            width:180px;
            height:60px;
        }
        .search-icon{
            width:25px;
            height:25px;
            padding-left:5px;
            padding-right:5px;
        }
        .username-role-view{
            height:40px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        p{
            margin:0;
        }
    </style>
    <title>Steady Baking</title>
    <asp:ContentPlaceHolder ID="head" runat="server">

    </asp:ContentPlaceHolder>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-top:100px; flex-direction:row; display:flex;">

                <div style="width:150px; height:400px; background-color:lightgrey; border-radius:10px; margin-right:15px;">
                    <p>Dashboard</p>
                    <p>User</p>
                    <p>Recipe</p>
                    <p>Chat</p>
                    <p>Feedback</p>
                </div>
            <div style=" background-color:lightgray;">
                <asp:ContentPlaceHolder ID="ContentPlaceHolder1" runat="server">
                </asp:ContentPlaceHolder>
            </div>
        </div>
    </form>
    <header>
        <div style="display:flex; flex-direction:row; justify-content:space-between; width:100vw; position: fixed; top: 0; background-color:white;">
        <%-- Start Logo Image--%>
        <img class="logo" src="Assets/Logo.png" />
        <%-- End Logo Image--%>


        <%-- Start of Search Bar --%>
        <div class="center-view">
            <img class="search-icon" src="Assets/Search.png" />
            <input id="Search" type="search" placeholder="Quick Search"/>
        </div>
        <%-- End of Search Bar --%>

         <%-- Start of Header Right--%>
        <div class="right-view">
        <img src="Assets/Message.png" class="message"/>
        <img src="Assets/Notification.png" class="notification"/>
            <div class="username-role-view">
                <p class="header-username">Michael Jordan</p>
                <p class="header-role" style="font-size:13px; color:lightgrey;">Admin</p>
            </div>
        </div>
         <%-- End of Header Right--%>
        </div>
    </header>
    <div style="height:100vh;">
     </div>
<!-- Footer -->
<footer>
  <p style="font-family: 'times New Roman', Times, serif; text-align: center;">Copyright © Steady Bakery. All Rights Reserved</p>
</footer>

</body>

</html>
