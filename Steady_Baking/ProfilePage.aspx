<%@ Page Title="" Language="C#" MasterPageFile="~/CMS.Master" AutoEventWireup="true" CodeBehind="ProfilePage.aspx.cs" Inherits="Steady_Baking.ProfilePage" %>
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
            height:500px;
            width:400px;
        }
        
        .auto-style1 {
            width: 100%;
        }

        btn {
            position:fixed;
            left:220px;
            top:610px;
        }
        .auto-style2 {
            height: 42px;
        }
    </style>
    <div style="margin-left:60px; width:100%">
        <h5><span style ="color:#BDB6AA">User Management/  </span>Add New User</h5>
        <h3>Add New User</h3>
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
                    <td>
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
                            <asp:ListItem>Professional</asp:ListItem>
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
                        <btn><asp:Button ID="AddUser" runat="server" BorderStyle="None" ForeColor="White" Text="Add User" BackColor="#FFB905" BorderColor="White" Height="25px" Width="80px" OnClick="AddUser_Click" /></btn>
                    </td>
                </tr>
            </table>
            </div>
        </div>
    <div style="display:flex; flex-direction:row; margin-top:40px;"></div>
</asp:Content>
