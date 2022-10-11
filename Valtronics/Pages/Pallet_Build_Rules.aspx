<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pallet_Build_Rules.aspx.cs" Inherits="Valtronics.Pages.Pallet_Build_Rules" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" ShowHeaderWhenEmpty="True" Font-Size="Small" PageSize="50" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="CTM_ID" HeaderText="CTM_ID" SortExpression="CTM_ID" />
                <asp:BoundField DataField="Fanuc_Num" HeaderText="Fanuc_Num" SortExpression="Fanuc_Num" />
                <asp:BoundField DataField="Filled_Full_Qty" HeaderText="Filled_Full_Qty" SortExpression="Filled_Full_Qty" />
                <asp:BoundField DataField="Empty_Full_Qty" HeaderText="Empty_Full_Qty" SortExpression="Empty_Full_Qty" />
                <asp:BoundField DataField="Filled_Half_Qty" HeaderText="Filled_Half_Qty" SortExpression="Filled_Half_Qty" />
                <asp:BoundField DataField="Empty_Half_Qty" HeaderText="Empty_Half_Qty" SortExpression="Empty_Half_Qty" />
                <asp:CheckBoxField DataField="USenable" HeaderText="USenable" SortExpression="USenable" />
                <asp:CheckBoxField DataField="CANenable" HeaderText="CANenable" SortExpression="CANenable" />
                <asp:CheckBoxField DataField="AUDenable" HeaderText="AUDenable" SortExpression="AUDenable" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="Black" BorderColor="Black" BorderStyle="Solid" Font-Size="X-Small" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select CTM_ID, Fanuc_Num, Filled_Full_Qty, Empty_Full_Qty, Filled_Half_Qty, Empty_Half_Qty, USenable, CANenable, AUDenable from pattern order by CTM_ID" OnSelecting="SqlDataSource1_Selecting" ></asp:SqlDataSource>
        <asp:Timer ID="Timer1" runat="server" Interval="5000" OnTick="Timer1_Tick" Enabled="False">
        </asp:Timer>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </form>
</body>
</html>
