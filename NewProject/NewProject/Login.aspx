<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="NewProject.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style92 {
            width: 76%;
            margin-left:10px;
            height: 121px;
        }
        .auto-style94 {
            width: 112px;
        }
        .auto-style95 {
            width: 161px;
        }
        .auto-style96 {
            width: 514px;
        }
        .auto-style97 {
            width: 112px;
            height: 26px;
        }
        .auto-style98 {
            width: 161px;
            height: 26px;
        }
        .auto-style99 {
            width: 514px;
            height: 26px;
        }
        .auto-style100 {
            width: 112px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="font-weight: 700; font-size: x-large; text-align: center">
        User Login</p>
   
        <p> <asp:Label ID="Label1" runat="server" style="font-size: medium; margin-left:10px" Visible="False"></asp:Label></p>
    
    <table class="auto-style92">
        <tr>
            <td class="auto-style100">User Name</td>
            <td class="auto-style95">
                <asp:TextBox ID="TextBox1" runat="server" MaxLength="15" Width="147px"></asp:TextBox>
            </td>
            <td class="auto-style96">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter a User Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style100">Password</td>
            <td class="auto-style95">
                <asp:TextBox ID="TextBox2" runat="server" MaxLength="15" TextMode="Password" Width="147px"></asp:TextBox>
            </td>
            <td class="auto-style96">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter  a Password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style95">
                <asp:Button ID="Button1" runat="server" Text="Login" Width="58px" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Register" />
            </td>
            <td class="auto-style96">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97"></td>
            <td class="auto-style98"></td>
            <td class="auto-style99"></td>
        </tr>
    </table>
</asp:Content>
