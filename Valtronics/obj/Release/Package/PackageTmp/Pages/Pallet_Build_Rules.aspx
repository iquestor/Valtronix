<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pallet_Build_Rules.aspx.cs" Inherits="Valtronics.Pages.Pallet_Build_Rules" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" ShowHeaderWhenEmpty="True" Font-Size="Small" PageSize="50" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="Index_Auto" OnDataBound="GridView1_DataBound" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="725px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Index_Auto" HeaderText="Index_Auto" SortExpression="Index_Auto" InsertVisible="False" ReadOnly="True" Visible="False" />
                <asp:BoundField DataField="CTM_ID" HeaderText="Pattern" SortExpression="CTM_ID" ReadOnly="True" />
                <asp:BoundField DataField="Fanuc #" HeaderText="Fanuc #" ReadOnly="True" SortExpression="Fanuc #" />
                <asp:CheckBoxField DataField="USenable" HeaderText="US Enable" SortExpression="USenable" />
                <asp:CheckBoxField DataField="CANenable" HeaderText="CAN Enable" SortExpression="CANenable" />
                <asp:CheckBoxField DataField="AUDenable" HeaderText="AUD Enable" SortExpression="AUDenable" />
                <asp:TemplateField HeaderText="Set">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="Update" Text="Set" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" BorderColor="Black" BorderStyle="Solid" Font-Size="X-Small" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="select Index_Auto, CTM_ID, (Select 'LP' + Convert(varchar(5),Fanuc_Num) + '-' + Convert(varchar(5),Filled_Full_Qty) + ' ' + Convert(varchar(5),Empty_Full_Qty) + ' ' + Convert(varchar(5),Filled_Half_Qty) + ' ' + Convert(varchar(5),Empty_Half_Qty) ) as [Fanuc #], USenable, CANenable, AUDenable from pattern order by CTM_ID" OnSelecting="SqlDataSource1_Selecting" UpdateCommand="UPDATE pattern SET USenable = @USEnable, CANenable = @CANenable, AUDenable = @AUDenable WHERE (Index_Auto = @Index_Auto)" >
            <UpdateParameters>
                <asp:Parameter Name="USEnable" />
                <asp:Parameter Name="CANenable" />
                <asp:Parameter Name="AUDenable" />
                <asp:Parameter Name="Index_Auto" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Timer ID="Timer1" runat="server" Interval="5000" OnTick="Timer1_Tick" Enabled="False">
        </asp:Timer>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </form>
</body>
</html>
