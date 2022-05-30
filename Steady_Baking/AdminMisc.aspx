<%@ Page Title="" Language="C#" MasterPageFile="~/CMS.Master" AutoEventWireup="true" CodeBehind="AdminMisc.aspx.cs" Inherits="Steady_Baking.AdminMisc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        h1 {
            text-align:center;
        }

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
          <h5>Miscellaneous</h5>
          <h3><u>Miscellaneous</u></h3>
        <div style="display:flex; flex-direction:row">
            <div class="content-box">
                <h1>Contact Us</h1>
                <div style="position:relative; left:140px; top:80px;">
                </div>
            </div>
             <div class="content-box">
                <h1>About Us</h1>
                 <div style="position:relative; right:80px; top:200px;">
                     <asp:Button ID="Button2" runat="server" BackColor="#FFB905" BorderStyle="None" ForeColor="White" Height="40px" Text="Make Changes" Width="130px" OnClick="Button2_Click" />
                 </div>
            </div>
        </div>      
    </div>


</asp:Content>
