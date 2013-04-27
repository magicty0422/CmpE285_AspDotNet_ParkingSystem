<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BookForPass.aspx.cs" Inherits="NewProject.BookForPass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Table ID="Table1" runat="server" BorderColor="#996600" BorderStyle="Solid" BorderWidth="1px" CellPadding="1" CellSpacing="1" Width="250px" HorizontalAlign="Center">
            <asp:TableRow ID="TableRow1" runat="server">
                <asp:TableCell ID="TableCell1" runat="server">User Name</asp:TableCell>
                <asp:TableCell ID="TableCell2" runat="server">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow2" runat="server">
                <asp:TableCell ID="TableCell3" runat="server">Type Of Pass</asp:TableCell>
                <asp:TableCell ID="TableCell4" runat="server">                    
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="monthly">Monthly</asp:ListItem>
                        
<asp:ListItem Value="yearly">Yearly</asp:ListItem>
                        
<asp:ListItem Value="fiveyearly">Five Yearly</asp:ListItem>
                    
</asp:DropDownList>
                
</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    
    </div>
        <div style="margin-left: 160px">
&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="#FFCCCC" BorderColor="Black" BorderStyle="Groove" Font-Bold="True" ForeColor="#660066" Text="Proceed" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" Width="50px"></asp:Label>
        </div>
</asp:Content>
