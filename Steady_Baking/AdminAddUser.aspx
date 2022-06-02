<%@ Page Title="" Language="C#" MasterPageFile="~/CMS.Master" AutoEventWireup="true" CodeBehind="AdminAddUser.aspx.cs" Inherits="Steady_Baking.AdminAddUser1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">        
        .content-box{
            margin-right:40px;
            background-color:white;
            padding:10px 10px 10px 10px;
            border-radius:20px 20px;
            height:500px;
            width:400px;
        }
        
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            height: 42px;
        }
        .auto-style3 {
            height: 32px;
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
        <h5><span style ="color:#BDB6AA">User Management/  </span></h5>  <asp:Label ID="TitleText" runat="server" Text="Label" CssClass="TitleStyle"/>
        </div>
        <asp:Label ID="DesciptionText" runat="server" Text="Label" CssClass="DescriptionStyle"/>
        <div style="display:flex; flex-direction:row"></div>
        <div class="content-box">
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Name" ForeColor="#6E7376"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="Name" runat="server" BorderColor="#B0B0B0" BorderStyle="Solid" BorderWidth="1px" Height="20px" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" EnableClientScript="False" ErrorMessage="This field is required." ForeColor="#D93F31"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <br>
                        <asp:Label ID="Label2" runat="server" Text="Phone Number" ForeColor="#6E7376"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="PhoneNumber" runat="server" BorderColor="#B0B0B0" BorderStyle="Solid" BorderWidth="1px" Height="20px" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PhoneNumber" EnableClientScript="False" ErrorMessage="This field is required." ForeColor="#D93F31"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br>
                        <asp:Label ID="Label3" runat="server" Text="Email" ForeColor="#6E7376"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="Email" runat="server" BorderColor="#B0B0B0" BorderStyle="Solid" BorderWidth="1px" Height="20px" Width="200px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" EnableClientScript="False" ErrorMessage="Please enter a valid email." ForeColor="#D93F31" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Email" EnableClientScript="False" ErrorMessage="This Field is required." ForeColor="#D93F31"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br>
                        <asp:Label ID="Label4" runat="server" Text="Role" ForeColor="#6E7376"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="100px">
                            <asp:ListItem>Users</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br>
                        <asp:Label ID="Label5" runat="server" Text="Password" ForeColor="#6E7376"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="Password" runat="server" BorderColor="#B0B0B0" BorderStyle="Solid" BorderWidth="1px" Height="20px" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br>
                        <asp:Label ID="Label6" runat="server" Text="Confirm Password" ForeColor="#6E7376"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="ConfirmPassword" runat="server" BorderColor="#B0B0B0" BorderStyle="Solid" BorderWidth="1px" Height="20px" Width="200px"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="ConfirmPassword" ControlToValidate="Password" EnableClientScript="False" ErrorMessage="Password entered don't match." ForeColor="#D93F31"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br><br>
                        <div style="position:relative; left:80px; top:2px;">
                            <asp:Button ID="Submit" runat="server" BorderStyle="None" ForeColor="White" Text="Submit" BackColor="#FFB905" BorderColor="White" Height="25px" Width="80px" OnClick="Button1_Click" />
                        </div>
                    </td>
                </tr>
            </table>
            </div>
        </div>
    <div style="display:flex; flex-direction:row; margin-top:40px;"></div>
</asp:Content>
