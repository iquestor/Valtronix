<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Device_scans.aspx.cs" Inherits="Valtronics.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="device" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" ShowHeaderWhenEmpty="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="device" HeaderText="device" ReadOnly="True" SortExpression="device" />
                <asp:BoundField DataField="LastData" HeaderText="LastData" SortExpression="LastData" />
                <asp:BoundField DataField="Port" HeaderText="Port" SortExpression="Port" />
                <asp:BoundField DataField="TS" HeaderText="TS" SortExpression="TS" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick">
        </asp:Timer>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="SELECT [device], [LastData], [Port], [TS] FROM [scanners]"></asp:SqlDataSource>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </form>
</body>
</html>
