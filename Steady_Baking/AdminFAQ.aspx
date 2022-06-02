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
        
        .GridViewStyle{
          margin-top:30px;
          width:100%

        } 
        
        .SearchBoxStyle{
          margin-left:10px;
          margin-right:10px;
        }
        
        .RoleDropdownStyle{
              margin-left:10px
          }
        
        .AddButtonStyle{
          height: 43px;
          width:196px;
          border:0px;
          background-color:#FFB905;
          color:white;
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

        </style>
    
    <div style="margin-left:60px; width:100%">
        <h5>FAQ Management</h5>
        <div style="flex-direction:row; display:flex; justify-content:space-between; align-items:center;">
            <h3><u>FAQ Management</u></h3>
            <asp:Button CssClass="AddButtonStyle" ID="AddFAQ" runat="server" Text="Add New FAQ" onClick="AddFAQ_Click"/>
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
            <asp:Label ID="TotalFAQ" runat="server" Text="Label"></asp:Label>
            <div style="display:flex; align-items:center">
                <asp:GridView ID="GridView2" runat="server" CssClass="GridViewStyle" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="FAQDatabase" OnRowCommand="GridView2_RowCommand">
                    <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id"  ItemStyle-Width="200px">
                    </asp:BoundField>
                    <asp:BoundField DataField="created_at" HeaderText="created_at" SortExpression="created_at"  ItemStyle-Width="250px">
                    </asp:BoundField>
                    <asp:BoundField DataField="updated_at" HeaderText="updated_at" SortExpression="updated_at"  ItemStyle-Width="250px">
                    </asp:BoundField>
                    <asp:BoundField DataField="question" HeaderText="question" SortExpression="question"  ItemStyle-Width="250px">
                    </asp:BoundField>
                    <asp:BoundField DataField="answer" HeaderText="answer" SortExpression="answer"  ItemStyle-Width="250px">
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Action" ItemStyle-Width="250px" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:LinkButton CommandArgument='<%# Eval("Id") %>' CommandName="EditFAQ" ID="EditButton" runat="server" Text="Edit" />
                            <asp:LinkButton CommandArgument='<%# Eval("Id") %>' CommandName="Del" ID="DeleteButton" runat="server" Text="Delete" />
                        </ItemTemplate>                
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
  
            <asp:SqlDataSource ID="FAQDatabase" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [FAQ] WHERE Id = @Id" SelectCommand="SELECT * FROM [FAQ]">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32"/>
                </DeleteParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
