<%@ Page Title="" Language="C#" MasterPageFile="~/CMS.Master" AutoEventWireup="true" CodeBehind="AdminFAQ.aspx.cs" Inherits="Steady_Baking.AdminFAQ1" %>
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

        </style>
        <div style="margin-left:60px; width:100%">
            <h5>FAQ Management</h5>
            <div style="flex-direction:row; display:flex; justify-content:space-between; align-items:center;">
            <h3><u>FAQ Management</u></h3>
                <p>
                    <asp:Button ID="AddFAQ" runat="server" BackColor="#FFB905" BorderStyle="None" ForeColor="White" Height="40px" OnClick="AddFAQ_Click" Text="Add New FAQ" Width="150px" />
                </p>
            </div>
        </div>

</asp:Content>
