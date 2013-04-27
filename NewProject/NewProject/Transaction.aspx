<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Transaction.aspx.cs" Inherits="NewProject.Transaction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style92 {
            width: 93%;
            height: 164px;
        }
        .auto-style93 {
            width: 220px;
            text-align: right;
        }
        .auto-style94 {
            font-size: x-large;
        }
        .auto-style95 {
            width: 177px;
        }
    </style>
     <script type="text/javascript">
         function GetData() {

             var userName = '<%= TextBox1.ClientID %>';
      

            newwindow = window.open('LoginPopUp.aspx?UN=' + userName +  '', 'name', 'height=400,width=450');
            if (window.focus) {
                newwindow.focus()
            }
            return false;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:Label ID="Label1" runat="server" Visible="False">Welcome.....</asp:Label>
    <br />
    <span class="auto-style94"><strong>TRANSACTION PAGE</strong></span><br />
    <table class="auto-style92">
        <tr>
            <td class="auto-style93">User Name</td>
            <td class="auto-style95">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style95">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style95">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style95">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style95">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style95">&nbsp<asp:Button ID="btnGetData" Text="GetData" OnClientClick="javascript:return GetData();"
                        runat="server" />;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style95">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
<br />
<br />


</asp:Content>
