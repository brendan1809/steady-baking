<%@ Page Title="" Language="C#" MasterPageFile="~/CMS.Master" AutoEventWireup="true" CodeBehind="AdminAddFAQ.aspx.cs" Inherits="Steady_Baking.AdminFAQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        
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
            height:600px;
            width:500px;
        }
        .auto-style1 {
            width: 100%;
        }
        .TitleStyle {
             display: block;
             font-size: .83em;
             margin:0;
             font-weight: bold;
             color:#FFB905;
        }
        .DescriptionStyle{
              display: block;
              font-size: 1.17em;
              margin-top: 1em;
              margin-bottom: 1em;
              margin-left: 0;
              margin-right: 0;
              font-weight: bold;
              color:#FFB905;
        }
    </style>
        <div style="margin-left:60px; width:100%">
             <div style="flex-direction:row; display:flex; align-items:center;">
        <h5><span style ="color:#BDB6AA">FAQ Management/  </span></h5>  <asp:Label ID="TitleText" runat="server" Text="Label" CssClass="TitleStyle"/>
        </div>
        <asp:Label ID="DesciptionText" runat="server" Text="Label" CssClass="DescriptionStyle"/>
            <div style="display:flex; flex-direction:row"></div>
            <div class="content-box">
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Question" ForeColor="#6E7376"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="Question" runat="server" BorderColor="#B0B0B0" BorderStyle="Solid" BorderWidth="1px" Height="100px" Width="300px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Question" EnableClientScript="False" ErrorMessage="This field is required." ForeColor="#D93F31"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br>
                            <asp:Label ID="Label2" runat="server" Text="Answer" ForeColor="#6E7376"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="Answer" runat="server" BorderColor="#B0B0B0" BorderStyle="Solid" BorderWidth="1px" Height="100px" Width="300px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Answer" EnableClientScript="False" ErrorMessage="This field is required." ForeColor="#D93F31"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="position:relative; left:90px; top:40px;">
                            <asp:Button ID="AddFAQ" runat="server" BackColor="#FFB905" BorderStyle="None" ForeColor="White" Height="25px" Text="Add New FAQ" Width="120px" OnClick="AddFAQ_Click" />
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>

</asp:Content>
