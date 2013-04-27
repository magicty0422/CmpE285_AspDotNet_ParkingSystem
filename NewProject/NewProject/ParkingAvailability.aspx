<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ParkingAvailability.aspx.cs" Inherits="NewProject.ParkingAvailability" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <asp:Label ID="lblDisplayHeader" runat="server" Text="Label" Font-Bold="True"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="slotAvailableGrid" runat="server" AutoGenerateColumns="False" EmptyDataText="There are no data records to display." Width="961px">
          <Columns>
            <asp:BoundField DataField="Location_id" HeaderText="ParkingSlot" ReadOnly="True" />
            <asp:BoundField DataField="Floor" HeaderText="Floor" ReadOnly="True" />
            <asp:TemplateField HeaderText="0-2">
              <ItemTemplate>
                <asp:Checkbox runat="server" enabled=true name ="Checkbox1" 
                 AutoPostBack="true"
                 OnCheckedChanged="Checkbox2_CheckedChanged"
                 
                 ID="Checkbox2" 
                 Checked = '<%# (bool) DataBinder.Eval(Container.DataItem, "c3")?true:false  %>' >
                 </asp:Checkbox>
             </ItemTemplate>
            </asp:TemplateField> 

            <asp:TemplateField HeaderText="2-4">
              <ItemTemplate>
                <asp:Checkbox runat="server" enabled="true" name ="Checkbox2" 
                 AutoPostBack="true"
                 OnCheckedChanged="Checkbox2_CheckedChanged"
                 ID="Checkbox3" 
                 Checked = '<%# (bool) DataBinder.Eval(Container.DataItem, "c4")?true:false  %>' >
                 </asp:Checkbox>
             </ItemTemplate>
            </asp:TemplateField>  

            <asp:TemplateField HeaderText="4-6">
              <ItemTemplate>
                <asp:Checkbox runat="server" enabled="true" name ="Checkbox3" 
                 AutoPostBack="true"
                 OnCheckedChanged="Checkbox2_CheckedChanged"
                 ID="Checkbox4" 
                 Checked = '<%# (bool) DataBinder.Eval(Container.DataItem, "c5")?true:false  %>' >
                 </asp:Checkbox>
             </ItemTemplate>
            </asp:TemplateField> 

            <asp:TemplateField HeaderText="6-8">
              <ItemTemplate>
                <asp:Checkbox runat="server" enabled="true" name ="Checkbox4" 
                 AutoPostBack="true"
                 OnCheckedChanged="Checkbox2_CheckedChanged"
               
                 ID="Checkbox5" 
                 Checked = '<%# (bool) DataBinder.Eval(Container.DataItem, "c6")?true:false  %>' >
                 </asp:Checkbox>
             </ItemTemplate>
            </asp:TemplateField> 

            <asp:TemplateField HeaderText="8-10">
              <ItemTemplate>
                <asp:Checkbox runat="server" enabled="true" name ="Checkbox5" 
                 AutoPostBack="true"
                 OnCheckedChanged="Checkbox2_CheckedChanged"
                 ID="Checkbox6" 
                 Checked = '<%# (bool) DataBinder.Eval(Container.DataItem, "c7")?true:false  %>' >
                 </asp:Checkbox>
             </ItemTemplate>
            </asp:TemplateField> 

            <asp:TemplateField HeaderText="10-12">
              <ItemTemplate>
                <asp:Checkbox runat="server" enabled="true" name ="Checkbox6" 
                 AutoPostBack="true"
                 OnCheckedChanged="Checkbox2_CheckedChanged"
                 ID="Checkbox7" 
                 Checked = '<%# (bool) DataBinder.Eval(Container.DataItem, "c8")?true:false  %>' >
                 </asp:Checkbox>
             </ItemTemplate>
            </asp:TemplateField> 

            <asp:TemplateField HeaderText="12-14">
              <ItemTemplate>
                <asp:Checkbox runat="server" enabled="true" name ="Checkbox7" 
                 AutoPostBack="true"
                 OnCheckedChanged="Checkbox2_CheckedChanged"
                 ID="Checkbox8" 
                 Checked = '<%# (bool) DataBinder.Eval(Container.DataItem, "c9")?true:false  %>' >
                 </asp:Checkbox>
             </ItemTemplate>
            </asp:TemplateField> 

            <asp:TemplateField HeaderText="14-16">
              <ItemTemplate>
                <asp:Checkbox runat="server" enabled="true" name ="Checkbox8" 
                 AutoPostBack="true"
                 OnCheckedChanged="Checkbox2_CheckedChanged"
                 ID="Checkbox9" 
                 Checked = '<%# (bool) DataBinder.Eval(Container.DataItem, "c10")?true:false  %>' >
                 </asp:Checkbox>
             </ItemTemplate>
            </asp:TemplateField> 

            <asp:TemplateField HeaderText="16-18">
              <ItemTemplate>
                <asp:Checkbox runat="server" enabled="true" name ="Checkbox9" 
                 AutoPostBack="true"
                 OnCheckedChanged="Checkbox2_CheckedChanged"
                 ID="Checkbox10" 
                 Checked = '<%# (bool) DataBinder.Eval(Container.DataItem, "c11")?true:false  %>' >
                 </asp:Checkbox>
             </ItemTemplate>
            </asp:TemplateField> 

            <asp:TemplateField HeaderText="18-20">
              <ItemTemplate>
                <asp:Checkbox runat="server" enabled="true" name ="Checkbox10" 
                 AutoPostBack="true"
                 OnCheckedChanged="Checkbox2_CheckedChanged"
                 ID="Checkbox11" 
                 Checked = '<%# (bool) DataBinder.Eval(Container.DataItem, "c12")?true:false  %>' >
                 </asp:Checkbox>
             </ItemTemplate>
            </asp:TemplateField> 

            <asp:TemplateField HeaderText="20-22">
              <ItemTemplate>
                <asp:Checkbox runat="server" enabled="true" name ="Checkbox11" 
                 AutoPostBack="true"
                 OnCheckedChanged="Checkbox2_CheckedChanged"
                 ID="Checkbox12" 
                 Checked = '<%# (bool) DataBinder.Eval(Container.DataItem, "c13")?true:false  %>' >
                 </asp:Checkbox>
             </ItemTemplate>
            </asp:TemplateField> 

            <asp:TemplateField HeaderText="22-24">
              <ItemTemplate>
                <asp:Checkbox runat="server" enabled="true" name ="Checkbox12" 
                 AutoPostBack="true"
                 OnCheckedChanged="Checkbox2_CheckedChanged"
                 ID="Checkbox13" 
                 Checked = '<%# (bool) DataBinder.Eval(Container.DataItem, "c14")?true:false  %>' >
                 </asp:Checkbox>
             </ItemTemplate>
            </asp:TemplateField> 



          </Columns>
        </asp:GridView>
    
    
        <asp:Panel ID="Panel1" runat="server" Direction="RightToLeft" Height="30px" style="margin-left: 802px" Width="157px">
            <asp:Button ID="Button1" runat="server" Text="Book" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </asp:Panel>
</asp:Content>
