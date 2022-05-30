<%@ Page Title="" Language="C#" MasterPageFile="~/CMS.Master" AutoEventWireup="true" CodeBehind="AdminFeedback.aspx.cs" Inherits="Steady_Baking.AdminFeedback" %>
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
      .SearchButtonStyle{
          margin-right:10px;
          border:0px;
          background-color:#FFB905;
          color:white;
          height: 43px;
          width:79px;
        }
        
        .ResetButtonStyle{
          border-color:lightgrey;
          background-color:white;
          height: 43px;
          width:79px;
        }
        .SearchBoxStyle{
          margin-left:10px;
          margin-right:10px;
        }
        

    </style>
    
    <div style="margin-left:60px; width:100%">
        <h5>Feedback Management</h5>
        <div style="flex-direction:row; display:flex; justify-content:space-between; align-items:center;">
            <h3><u>Feedback Management</u></h3>
        </div>


        <div style="background:white; margin-top:20px; padding:30px">
            <div style="flex-direction:row; display:flex; align-items:center">
                <p>Search By :</p>
                <asp:TextBox CssClass="SearchBoxStyle" ID="TextBox1" runat="server" placeholder="Quick Search"></asp:TextBox>
            </div>
            <div style="flex-direction:row; display:flex; align-items:center; justify-content:flex-end">
                <asp:Button ID="SearchButton" runat="server" Text="Search" CssClass="SearchButtonStyle" />
                <asp:Button ID="ResetButton" runat="server" Text="Reset" CssClass="ResetButtonStyle"/>
            </div>
        </div>
        

         <div style="background:white; margin-top:20px; padding:30px">
            <asp:Label ID="TotalFeedback" runat="server" Text="Label"></asp:Label>
            <div style="display:flex; align-items:center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id"  ItemStyle-Width="250px"/>
                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name"  ItemStyle-Width="250px"/>
                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email"  ItemStyle-Width="250px"/>
                        <asp:BoundField DataField="message" HeaderText="Message" SortExpression="message"  ItemStyle-Width="250px"/>
                        <asp:BoundField DataField="created_at" HeaderText="Created At" SortExpression="created_at"  ItemStyle-Width="250px"/>
                        <asp:BoundField DataField="updated_at" HeaderText="Updated At" SortExpression="updated_at"  ItemStyle-Width="250px"/>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Feedback]"></asp:SqlDataSource>
                </div>
         </div>
    </div>

    
</asp:Content>
