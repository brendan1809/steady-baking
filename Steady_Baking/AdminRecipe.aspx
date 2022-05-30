<%@ Page Title="" Language="C#" MasterPageFile="~/CMS.Master" AutoEventWireup="true" CodeBehind="AdminRecipe.aspx.cs" Inherits="Steady_Baking.AdminRecipe" %>
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
      .AddButton{
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

          <h5>Recipe Management</h5>
           <div style="flex-direction:row; display:flex; justify-content:space-between; align-items:center;">
          <h3><u>Recipe Management</u></h3>
               <asp:Button ID="AddRecipe" runat="server" Text="Add New Recipe" BackColor="#FFB905" BorderStyle="None" ForeColor="White" Height="40px" Width="150px" OnClick="AddRecipe_Click" />
           </div>
   
            <div style="background:white; margin-top:20px; padding:30px">
            <div style="flex-direction:row; display:flex; align-items:center">
                <p>Search By :</p>
                <asp:TextBox CssClass="SearchBoxStyle" ID="TextBox1" runat="server" placeholder="Quick Search"></asp:TextBox>
            </div>
            <div style="flex-direction:row; display:flex; align-items:center; justify-content:flex-end">
                <asp:Button ID="SearchButton" runat="server" Text="Search" CssClass="SearchButtonStyle" OnClick="SearchButton_Click"/>
                <asp:Button ID="ResetButton" runat="server" Text="Reset" CssClass="ResetButtonStyle"/>
            </div>
        </div>
         <div style="background:white; margin-top:20px; padding:30px">
            <asp:Label ID="TotalUser" runat="server" Text="Label"></asp:Label>
            <div style="display:flex; align-items:center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="RecipeDataSource"  OnRowCommand="GridView1_RowCommand1">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" ItemStyle-Width="200px"/>
                        <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" ItemStyle-Width="200px"/>
                        <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" ItemStyle-Width="200px"/>
                        <asp:BoundField DataField="created_at" HeaderText="created_at" SortExpression="created_at" ItemStyle-Width="200px"/>
                        <asp:BoundField DataField="updated_at" HeaderText="updated_at" SortExpression="updated_at" ItemStyle-Width="200px"/>
                         <asp:TemplateField HeaderText="Action" ItemStyle-Width="200px" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:LinkButton CommandArgument='<%# Eval("Id") %>' CommandName="EditRecipe" ID="EditButton" runat="server" Text="Edit" />
                                <asp:LinkButton CommandArgument='<%# Eval("Id") %>' CommandName="Del" ID="DeleteButton" runat="server" Text="Delete" />
                            </ItemTemplate>                
                           </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="RecipeDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [title], [author], [created_at], [updated_at] FROM [Recipe]" DeleteCommand="DELETE FROM [Recipe] WHERE [Id] = @Id">
                     <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32"/>
                    </DeleteParameters>
                </asp:SqlDataSource>
        </div>
         </div>
    </div>
</asp:Content>
