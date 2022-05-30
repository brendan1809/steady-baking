<%@ Page Title="" Language="C#" MasterPageFile="~/CMS.Master" AutoEventWireup="true" CodeBehind="AdminUser.aspx.cs" Inherits="Steady_Baking.AdminUser" %>
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
      .AddButtonStyle{
          height: 43px;
          width:196px;
          border:0px;
          background-color:#FFB905;
          color:white;
      }
      .SearchBoxStyle{
          margin-left:10px;
          margin-right:10px;
      }
      .RoleDropdownStyle{
          margin-left:10px
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
      .GridViewStyle{
          margin-top:30px;
          width:100%
      } 

    </style>
    <div style="margin-left:60px; width:100%">
          <h5>User Management</h5>
           <div style="flex-direction:row; display:flex; justify-content:space-between; align-items:center;">
          <h3><u>User Management</u></h3>    
               <asp:Button CssClass="AddButtonStyle" ID="AddUser" runat="server" Text="Add New Customer" onClick="AddUser_Click"/>
           </div>

     
        <div style="background:white; margin-top:20px; padding:30px">
            <div style="flex-direction:row; display:flex; align-items:center">
                <p>Search By :</p>
                <asp:TextBox CssClass="SearchBoxStyle" ID="TextBox1" runat="server" placeholder="Quick Search"></asp:TextBox>

                <p>Role </p>
                <asp:DropDownList CssClass="RoleDropdownStyle" ID="DropDownList1" runat="server" Height="20px" Width="100px" placeholder="Select Role">
                            <asp:ListItem>Users</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                 </asp:DropDownList>
            </div>
            <div style="flex-direction:row; display:flex; align-items:center; justify-content:flex-end">
                <asp:Button ID="SearchButton" runat="server" Text="Search" CssClass="SearchButtonStyle" />
                <asp:Button ID="ResetButton" runat="server" Text="Reset" CssClass="ResetButtonStyle"/>
            </div>
        </div>


        <div style="background:white; margin-top:20px; padding:30px">
            <p>Total User:</p>
            <div style="display:flex; align-items:center">
                <asp:GridView ID="GridView1" runat="server" CssClass="GridViewStyle" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
                   
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" SortExpression="Id" ItemStyle-Width="200px">
<ItemStyle Width="200px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="user_name" HeaderText="Name" SortExpression="user_name" ItemStyle-Width="200px">
<ItemStyle Width="200px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="user_type" HeaderText="Role" SortExpression="user_type" ItemStyle-Width="200px">
<ItemStyle Width="200px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" ItemStyle-Width="200px">
<ItemStyle Width="200px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="phone_number" HeaderText="Phone Number" SortExpression="phone_number" ItemStyle-Width="200px">
<ItemStyle Width="200px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="password_hash" HeaderText="Password" SortExpression="password_hash" ItemStyle-Width="200px">
<ItemStyle Width="200px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="created_at" HeaderText="Created At" SortExpression="created_at" ItemStyle-Width="200px">
<ItemStyle Width="200px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="updated_at" HeaderText="Update At" SortExpression="updated_at" ItemStyle-Width="200px">
<ItemStyle Width="200px"></ItemStyle>
                        </asp:BoundField>
                          <asp:TemplateField HeaderText="Action" ItemStyle-Width="200px" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:LinkButton ID="ViewButton" runat="server" Text="View" OnClick="ViewButton_Click"/>
                                <asp:LinkButton ID="EditButton" runat="server" Text="Edit" OnClick="EditButton_Click"/>
                                <asp:LinkButton ID="DeleteButton" runat="server" Text="Delete" OnClick="DeleteButton_Click"/>
                            </ItemTemplate>                
                           </asp:TemplateField>
                    </Columns>
                   
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [UserInfo]"></asp:SqlDataSource>
            </div>
        </div>
        
    </div>
</asp:Content>


