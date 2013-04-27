<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GarageInfo.aspx.cs" Inherits="NewProject.GarageInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Calendar ID="Calendar1" runat="server" ShowGridLines="True" OnSelectionChanged="Calendar1_SelectionChanged" SelectedDate="04/19/2013 15:10:12"></asp:Calendar>


    
        <asp:LinkButton ID="lnkBtnNorthGarage"  CommandName="NorthGarage" CommandArgument="NorthGarage" OnCommand="lnkButton_Command" runat="server" Visible="False" OnClick="lnkBtnNorthGarage_Click" >LinkButton</asp:LinkButton>
        <asp:LinkButton ID="lnkBtnSouthGarage"  CommandName="SouthGarage" CommandArgument="SouthGarage" OnCommand="lnkButton_Command" runat="server" Visible="False" OnClick="lnkBtnSouthGarage_Click" >LinkButton</asp:LinkButton>
        <asp:LinkButton ID="lnkBtnWestGarage"  CommandName="WestGarage" CommandArgument="WestGarage" OnCommand="lnkButton_Command" runat="server" Visible="False" OnClick="lnkBtnWestGarage_Click" >LinkButton</asp:LinkButton>
        <br />
        <asp:Table ID="Table1" runat="server" GridLines="Both" Width="686px">
            <asp:TableRow ID="TableRow1" runat="server">
                <asp:TableCell ID="TableCell1" runat="server" Font-Bold="True">S. No</asp:TableCell>
                <asp:TableCell ID="TableCell2" runat="server" Font-Bold="True">Garage Name</asp:TableCell>
                <asp:TableCell ID="TableCell3" runat="server" Font-Bold="True">Address</asp:TableCell>
                <asp:TableCell ID="TableCell4" runat="server" Font-Bold="True">Number of Available Space</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow2" runat="server">
                <asp:TableCell ID="TableCell5" runat="server">1</asp:TableCell>
                <asp:TableCell ID="TableCell6" runat="server">North Garage</asp:TableCell>
                <asp:TableCell ID="TableCell7" runat="server">XXXXXXXX</asp:TableCell>
                <asp:TableCell ID="TableCell8" runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow3" runat="server">
                <asp:TableCell ID="TableCell9" runat="server">2</asp:TableCell>
                <asp:TableCell ID="TableCell10" runat="server">South Garage</asp:TableCell>
                <asp:TableCell ID="TableCell11" runat="server">YYYYYYYYYY</asp:TableCell>
                <asp:TableCell ID="TableCell12" runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow4" runat="server">
                <asp:TableCell ID="TableCell13" runat="server">3</asp:TableCell>
                <asp:TableCell ID="TableCell14" runat="server">West Garage</asp:TableCell>
                <asp:TableCell ID="TableCell15" runat="server">ZZZZZZZZZ</asp:TableCell>
                <asp:TableCell ID="TableCell16" runat="server"></asp:TableCell>
            </asp:TableRow>
        </asp:Table>


    
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <asp:Label ID="Label1" runat="server" Text="Hi all...."></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Hello World"></asp:Label>



</asp:Content>
