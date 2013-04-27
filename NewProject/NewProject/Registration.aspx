<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="NewProject.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style92 {
        font-size: large;
        text-align: center;
    }
    .auto-style93 {
        width: 87%;
        margin-left: 174px;
    }
    .auto-style94 {
        text-align: right;
        width: 282px;
    }
    .auto-style95 {
        width: 282px;
    }
    .auto-style96 {
        text-align: right;
        width: 282px;
        height: 26px;
    }
    .auto-style97 {
        height: 26px;
    }
    .auto-style98 {
        width: 191px;
    }
    .auto-style99 {
        height: 26px;
        width: 191px;
    }
    #Reset1 {
        text-align: right;
        width: 60px;
    }
    .auto-style100 {
        text-align: right;
        width: 282px;
        height: 30px;
    }
    .auto-style101 {
        width: 191px;
        height: 30px;
    }
    .auto-style102 {
        height: 30px;
    }
    .auto-style103 {
        text-align: right;
        width: 282px;
        height: 32px;
    }
    .auto-style104 {
        width: 191px;
        height: 32px;
    }
    .auto-style105 {
        height: 32px;
    }
    .auto-style109 {
        text-align: right;
        width: 282px;
        height: 33px;
    }
    .auto-style110 {
        width: 191px;
        height: 33px;
    }
    .auto-style111 {
        height: 33px;
    }
    .auto-style112 {
        text-align: right;
        width: 282px;
        height: 35px;
    }
    .auto-style113 {
        width: 191px;
        height: 35px;
    }
    .auto-style114 {
        height: 35px;
    }
    .auto-style115 {
        font-size: x-large;
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style115">
    <strong>Registration</strong></p>
<table class="auto-style93">
    <tr>
        <td class="auto-style103">User Name</td>
        <td class="auto-style104">
            <asp:TextBox ID="TextBoxUN" runat="server" MaxLength="15" Width="180px"></asp:TextBox>
        </td>
        <td class="auto-style105">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="Please Enter User Name" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style96">Password</td>
        <td class="auto-style99">
            <asp:TextBox ID="TextBoxPass" runat="server" MaxLength="15" TextMode="Password" Width="180px"></asp:TextBox>
        </td>
        <td class="auto-style97">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style94">Retype Password</td>
        <td class="auto-style98">
            <asp:TextBox ID="TextBoxRePass" runat="server" MaxLength="15" TextMode="Password" Width="180px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxRePass" ErrorMessage="Please Enter confirmation Password" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxRePass" ErrorMessage="Passwords Dont Match!!" ForeColor="Red"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style94">Email ID</td>
        <td class="auto-style98">
            <asp:TextBox ID="TextBoxEmail" runat="server" MaxLength="50" Width="180px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Please Enter Email Id" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Please Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style94">First Name</td>
        <td class="auto-style98">
            <asp:TextBox ID="TextBoxFN" runat="server" MaxLength="50" Width="180px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxFN" ErrorMessage="Please Enter First Name" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style112">Last Name</td>
        <td class="auto-style113">
            <asp:TextBox ID="TextBoxLN" runat="server" MaxLength="50" Width="180px"></asp:TextBox>
        </td>
        <td class="auto-style114">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxLN" ErrorMessage="Please Enter Last Name" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style109">Security Question</td>
        <td class="auto-style110">
            <asp:TextBox ID="TextBoxSQ" runat="server" MaxLength="50" Width="180px"></asp:TextBox>
        </td>
        <td class="auto-style111">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxSQ" ErrorMessage="Please Enter a Question" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style94">Security Answer</td>
        <td class="auto-style98">
            <asp:TextBox ID="TextBoxSA" runat="server" MaxLength="50" Width="180px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxSA" ErrorMessage="Please provide an answer" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style100">Type </td>
        <td class="auto-style101">
            <asp:DropDownList ID="DropDownListType" runat="server" Height="22px" Width="187px">
                <asp:ListItem Selected="True">Select</asp:ListItem>
                <asp:ListItem>Student</asp:ListItem>
                <asp:ListItem>Staff</asp:ListItem>
                <asp:ListItem>Visitor</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style102">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownListType" ErrorMessage="Select Type" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style95">&nbsp;</td>
        <td class="auto-style98">
            <asp:Button ID="Register" runat="server" OnClick="Register_Click" Text="Register" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input id="Reset1" type="reset" value="Reset" /></td>
        <td>&nbsp;</td>
    </tr>
</table>
<p class="auto-style92">
    &nbsp;</p>
</asp:Content>
