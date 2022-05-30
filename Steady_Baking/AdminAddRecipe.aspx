<%@ Page Title="" Language="C#" MasterPageFile="~/CMS.Master" AutoEventWireup="true" CodeBehind="AdminAddRecipe.aspx.cs" Inherits="Steady_Baking.AdminAddRecipe" %>
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
            height:900px;
            width:900px;
        }
        .auto-style1 {
            width: 100%;
        }
        
        btn {
            position:fixed;
            left:220px;
            top:820px;
        }
        
        .auto-style2 {
            height: 41px;
        }
        .auto-style3 {
            height: 28px;
        }
        
    </style>

    <div style="margin-left:60px; width:100%">
        <h5><span style ="color:#BDB6AA">Recipes Management/  </span>Add New Recipes</h5>
        <h3>Add New Recipes</h3>
        <div style="display:flex; flex-direction:row"></div>
        <div class="content-box">
            <table class="auto-style1">
                <tr>
                    <td>
                        <br>
                        <asp:Label ID="Label1" runat="server" Text="Page Title" ForeColor="#6E7376"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="PageTitle" runat="server" BorderColor="#B0B0B0" BorderStyle="Solid" BorderWidth="1px" Height="20px" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="PageTitle" EnableClientScript="False" ErrorMessage="This field is required." ForeColor="#D93F31"></asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td>
                        <br>
                        <asp:Label ID="Label2" runat="server" ForeColor="#6E7376" Text="Image"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" ForeColor="#6E7376" Text="Ingredients &amp; Tools"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="IngredientsTools" runat="server" BorderColor="#B0B0B0" BorderStyle="Solid" BorderWidth="1px" Height="200px" Width="500px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="IngredientsTools" EnableClientScript="False" ErrorMessage="This field is required." ForeColor="#D93F31"></asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td>
                        <br>
                        <asp:Label ID="Label3" runat="server" ForeColor="#6E7376" Text="Instructions"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="Instructions" runat="server" BorderColor="#B0B0B0" BorderStyle="Solid" BorderWidth="1px" Height="200px" Width="500px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Instructions" EnableClientScript="False" ErrorMessage="This field is required." ForeColor="#D93F31"></asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td>
                        <br>
                        <asp:Label ID="Label4" runat="server" ForeColor="#6E7376" Text="Total Time"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TotalTime" runat="server" BorderColor="#B0B0B0" BorderStyle="Solid" BorderWidth="1px" Height="20px" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TotalTime" EnableClientScript="False" ErrorMessage="This field is required." ForeColor="#D93F31"></asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <br>
                        <asp:Label ID="Label5" runat="server" ForeColor="#6E7376" Text="Serving"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="Serving" runat="server" BorderColor="#B0B0B0" BorderStyle="Solid" BorderWidth="1px" Height="20px" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Serving" EnableClientScript="False" ErrorMessage="This field is required." ForeColor="#D93F31"></asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td>
                        <div style="position:relative; left:200px; top:40px;">
                        <asp:Button ID="AddNewRecipe" runat="server" BackColor="#FFB905" BorderColor="White" BorderStyle="None" ForeColor="White" Height="25px" OnClick="Button1_Click" Text="Add New Recipe" Width="130px" />
                        </div>
                        </td>
                </tr>
            </table>
        </div>
    </div>
    <div style="display:flex; flex-direction:row; margin-top:40px;"></div>



</asp:Content>
