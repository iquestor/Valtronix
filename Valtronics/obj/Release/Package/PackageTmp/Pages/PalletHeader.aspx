<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PalletHeader.aspx.cs" Inherits="Valtronics.Pages.PalletHeader" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PalletID" DataSourceID="SqlDataSource1" EnableTheming="True" Font-Bold="True" Font-Italic="False" Font-Names="Calibri Light" ForeColor="Black" ShowHeaderWhenEmpty="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="LastUpdate" HeaderText="LastUpdate" SortExpression="LastUpdate" />
                <asp:BoundField DataField="Station" HeaderText="Station" SortExpression="Station" />
                <asp:BoundField DataField="PalletID" HeaderText="PalletID" ReadOnly="True" SortExpression="PalletID" />
                <asp:BoundField DataField="Canadian" HeaderText="Canadian" SortExpression="Canadian" />
                <asp:BoundField DataField="OuterWrap" HeaderText="OuterWrap" SortExpression="OuterWrap" />
                <asp:BoundField DataField="TopCap" HeaderText="TopCap" SortExpression="TopCap" />
                <asp:BoundField DataField="Strap" HeaderText="Strap" SortExpression="Strap" />
                <asp:BoundField DataField="Placard" HeaderText="Placard" SortExpression="Placard" />
                <asp:BoundField DataField="CGroup" HeaderText="CGroup" SortExpression="CGroup" />
                <asp:BoundField DataField="OrderCount" HeaderText="OrderCount" SortExpression="OrderCount" />
                <asp:BoundField DataField="SlaveID" HeaderText="SlaveID" SortExpression="SlaveID" />
                <asp:BoundField DataField="FullTrayCount" HeaderText="FullTrayCount" SortExpression="FullTrayCount" />
                <asp:BoundField DataField="HalfTrayCount" HeaderText="HalfTrayCount" SortExpression="HalfTrayCount" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#CCCCCC" BorderStyle="Groove" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="SELECT [DT] as LastUpdate, [Station], [PalletID], [Canadian], [OuterWrap], [TopCap], [Strap], [Placard], [CGroup], [OrderCount], [SlaveID], [FullTrayCount], [HalfTrayCount] FROM [palletheader]
Where status in (0,1,2,3,69)"></asp:SqlDataSource>
        <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
        </asp:Timer>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </form>
</body>
</html>
