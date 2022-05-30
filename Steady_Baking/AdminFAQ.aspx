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
    <div style="background:white; margin-top:20px; padding:30px">
        <asp:Label ID="TotalUser" runat="server" Text="Label"></asp:Label>
        <div style="display:flex; align-items:center">
            <asp:GridView ID="GridView2" runat="server" CssClass="GridViewStyle" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="FAQDatabase" OnRowCommand="GridView2_RowCommand">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id"  ItemStyle-Width="200px">
<ItemStyle Width="200px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="created_at" HeaderText="created_at" SortExpression="created_at"  ItemStyle-Width="200px">
<ItemStyle Width="200px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="updated_at" HeaderText="updated_at" SortExpression="updated_at"  ItemStyle-Width="200px">
<ItemStyle Width="200px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="question" HeaderText="question" SortExpression="question"  ItemStyle-Width="200px">
<ItemStyle Width="200px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="answer" HeaderText="answer" SortExpression="answer"  ItemStyle-Width="200px">
<ItemStyle Width="200px"></ItemStyle>
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Action" ItemStyle-Width="200px" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:LinkButton CommandArgument='<%# Eval("Id") %>' CommandName="EditUser" ID="EditButton" runat="server" Text="Edit" OnClick="EditButton_Click"/>
                            <asp:LinkButton CommandArgument='<%# Eval("Id") %>' CommandName="Del" ID="DeleteButton" runat="server" Text="Delete" OnClick="DeleteButton_Click"/>
                        </ItemTemplate>                
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="FAQDatabase" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [FAQ]"></asp:SqlDataSource>
        </div>
    </div>

</asp:Content>
