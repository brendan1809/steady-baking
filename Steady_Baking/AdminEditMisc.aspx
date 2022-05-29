<%@ Page Title="" Language="C#" MasterPageFile="~/CMS.Master" AutoEventWireup="true" CodeBehind="AdminEditMisc.aspx.cs" Inherits="Steady_Baking.AdminMisc" %>
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
          height:600px;
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
      
        .auto-style1 {
            width: 100%;
            height: 465px;
        }
      
        .auto-style2 {
            width: 100%;
        }
      
    </style>
    <div style="margin-left:60px; width:100%">
        <h5><span style ="color:#BDB6AA">Miscellaneous /  </span>Miscellaneous Management</h5>
        <h3><u>Management</u></h3>
        <div style="display:flex; flex-direction:row">
            <div class="content-box">
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Contact Us"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br>
                            <asp:Label ID="Label2" runat="server" Text="Email" ForeColor="#6E7376"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        <asp:TextBox ID="TotalTime" runat="server" BorderColor="#B0B0B0" BorderStyle="Solid" BorderWidth="1px" Height="20px" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br>
                            <asp:Label ID="Label3" runat="server" Text="Facebook Name" ForeColor="#6E7376"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        <asp:TextBox ID="TotalTime0" runat="server" BorderColor="#B0B0B0" BorderStyle="Solid" BorderWidth="1px" Height="20px" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br>
                            <asp:Label ID="Label4" runat="server" Text="Facebook URL" ForeColor="#6E7376"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        <asp:TextBox ID="TotalTime1" runat="server" BorderColor="#B0B0B0" BorderStyle="Solid" BorderWidth="1px" Height="20px" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br>
                            <asp:Label ID="Label5" runat="server" Text="Instagram Name" ForeColor="#6E7376"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        <asp:TextBox ID="TotalTime2" runat="server" BorderColor="#B0B0B0" BorderStyle="Solid" BorderWidth="1px" Height="20px" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br>
                            <asp:Label ID="Label6" runat="server" Text="Instagram URL" ForeColor="#6E7376"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        <asp:TextBox ID="TotalTime3" runat="server" BorderColor="#B0B0B0" BorderStyle="Solid" BorderWidth="1px" Height="20px" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="position:relative; left:20px; top:30px;">
                            <asp:Button ID="SaveChanges" runat="server" Text="Save Changes" BackColor="#FFB905" BorderStyle="None" ForeColor="White" Height="25px" OnClick="Button1_Click" Width="130px" />
                            </div>
                        </td>
                    </tr>
                </table>
            </div>

             <div class="content-box">
                 <table class="auto-style2">
                     <tr>
                         <td>About Us</td>
                     </tr>
                     <tr>
                         <td>
                             <br>
                             <asp:TextBox ID="TotalTime4" runat="server" BorderColor="#B0B0B0" BorderStyle="Solid" BorderWidth="1px" Height="200px" Width="380px"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td>
                            <div style="position:relative; left:100px; top:30px;">
                            <asp:Button ID="SaveChanges0" runat="server" Text="Save Changes" BackColor="#FFB905" BorderStyle="None" ForeColor="White" Height="25px" OnClick="Button1_Click" Width="130px" />
                            </div>
                         </td>
                     </tr>
                 </table>
            </div>
        </div>      
    </div>

</asp:Content>
