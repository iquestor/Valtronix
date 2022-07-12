<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="R1O1_Trays_Not_Scanned.aspx.cs" Inherits="Valtronics.Pages.R1O1_Trays_Not_Scanned" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="SELECT [MailTrayID], [PalletID], [Half], [Scanned], [DT], [Sequence] FROM [tray]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MailTrayID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" ShowHeaderWhenEmpty="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="MailTrayID" HeaderText="MailTrayID" ReadOnly="True" SortExpression="MailTrayID" />
                <asp:BoundField DataField="PalletID" HeaderText="PalletID" SortExpression="PalletID" />
                <asp:BoundField DataField="Half" HeaderText="Half" SortExpression="Half" />
                <asp:BoundField DataField="Scanned" HeaderText="Scanned" SortExpression="Scanned" />
                <asp:BoundField DataField="DT" HeaderText="DT" SortExpression="DT" />
                <asp:BoundField DataField="Sequence" HeaderText="Sequence" SortExpression="Sequence" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
        </asp:Timer>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </form>
</body>
</html>
