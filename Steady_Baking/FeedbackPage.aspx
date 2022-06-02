<%@ Page Title="" Language="C#" MasterPageFile="~/Content.Master" AutoEventWireup="true" CodeBehind="FeedbackPage.aspx.cs" Inherits="Steady_Baking.FeedbackPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .content-box{
            background-color:white;
            padding:10px 10px 10px 10px;
            border-radius:20px 20px;
            display:flex;
            width:100%;
            margin-bottom:40px;
            flex-direction:column;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 30px;
        }
        .text-box{
            border:2px solid #FFB800;
            outline:none;
            box-shadow:none;
            height:25px;
            margin-bottom:10px;
            width:95%;
        }
        .description-text{
            border:2px solid #FFB800;
            outline:none;
            box-shadow:none;
            margin-bottom:10px;
            width:95%;
        }
        h2{
            margin-bottom:5px;
        }
        .submit-button-style{
          border:0px;   
          margin-top:20px;
          background-color:#FFB905;
          color:white;
          height: 43px;
          width:200px;
          border-radius:10px;
        }
    </style>
    <div style="margin-left:40px; flex:1;display:flex;">
        <div class="content-box">
            <center><h1 style="color:#FFB905;">We value your feedback </h1></center>
            <center><font size="3" style="color:#FFB905;">Please complete the following form and help us improve our customer experience. </font></center>
            <table class="auto-style1">
                <tr>
                    <td>
                        <h2 style="color:#FFB905;">Name: </h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox CssClass="text-box" ID="TextBox3" runat="server"></asp:TextBox>
                    &nbsp;<asp:Label ID="Label6" runat="server" Text="This field is required" Visible="False"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                          <h2 style="color:#FFB905;">Email: </h2>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox  CssClass="text-box" ID="TextBox4" runat="server"></asp:TextBox>
                    &nbsp;<asp:Label ID="Label5" runat="server" Text="This field is required" Visible="False"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                          <h2 style="color:#FFB905;">Contact Number: </h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox  CssClass="text-box" ID="TextBox2" runat="server"></asp:TextBox>
                    &nbsp;<asp:Label ID="Label7" runat="server" Text="This field is required" Visible="False"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                         <h2 style="color:#FFB905;">Tell us how we can improve </h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox CssClass="description-text" ID="TextBox1" runat="server" Height="200px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <center>
                            
                            <asp:Button CssClass="submit-button-style" ID="Button1" runat="server" Text="Submit Feedback" OnClick="Button1_Click" /></center>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div style="display:flex; flex-direction:row; margin-top:40px;"></div>
</asp:Content>
