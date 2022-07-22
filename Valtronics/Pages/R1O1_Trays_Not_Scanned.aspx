<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="R1O1_Trays_Not_Scanned.aspx.cs" Inherits="Valtronics.Pages.R1O1_Trays_Not_Scanned" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="R1O1" Width="178px" />
            <asp:Button ID="Button2" runat="server" Text="R1O2" Width="178px" />
            <asp:Button ID="Button3" runat="server" Text="R2O1" Width="178px" />
            <asp:Button ID="Button4" runat="server" Text="R2O2" Width="178px" />
            <br /><br /> <br />
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="SELECT [MailTrayID], [PalletID], [Half], [Scanned], [DT], [Sequence] FROM [tray]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MailTrayID" DataSourceID="SqlDataSource1" ForeColor="Black" ShowHeaderWhenEmpty="True" BackColor="White" BorderColor="#666666" BorderStyle="Solid" Caption="R1O1 Trays Not Scanned" CaptionAlign="Left" Font-Names="Arial">
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
            <HeaderStyle BackColor="#CCCCCC" Font-Bold="False" ForeColor="#333333" BorderColor="Black" BorderStyle="Solid" Font-Names="Arial" />
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
        <p>
            &nbsp;</p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="SELECT * FROM [solved_patterns]"></asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="autoindex" DataSourceID="SqlDataSource2" ForeColor="Black" ShowHeaderWhenEmpty="True" BackColor="White" BorderColor="#666666" BorderStyle="Solid" Caption="R1O1 Solved Patterns" CaptionAlign="Left" Font-Names="Arial">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="autoindex" HeaderText="autoindex" ReadOnly="True" SortExpression="autoindex" InsertVisible="False" />
                <asp:BoundField DataField="Station_Num" HeaderText="Station_Num" SortExpression="Station_Num" />
                <asp:BoundField DataField="Fanuc_Num" HeaderText="Fanuc_Num" SortExpression="Fanuc_Num" />
                <asp:BoundField DataField="Fanuc_Num_M" HeaderText="Fanuc_Num_M" SortExpression="Fanuc_Num_M" />
                <asp:BoundField DataField="PalletID" HeaderText="PalletID" SortExpression="PalletID" />
                <asp:BoundField DataField="CTM_ID" HeaderText="CTM_ID" SortExpression="CTM_ID" />
                <asp:BoundField DataField="DT" HeaderText="DT" SortExpression="DT" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#CCCCCC" Font-Bold="False" ForeColor="#333333" BorderColor="Black" BorderStyle="Solid" Font-Names="Arial" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <p>
            &nbsp;</p>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="SELECT [DT] as LastUpdate, [Station], [PalletID], [Canadian], [OuterWrap], [TopCap], [Strap], [Placard], [CGroup], [OrderCount], [SlaveID], [FullTrayCount], [HalfTrayCount] FROM [palletheader]
Where status in (0,1,2,3,69)"></asp:SqlDataSource>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PalletID" DataSourceID="SqlDataSource3" ForeColor="Black" ShowHeaderWhenEmpty="True" BackColor="White" BorderColor="#666666" BorderStyle="Solid" Caption="Pallet Header Information, All Stations" CaptionAlign="Left" Font-Names="Arial" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="LastUpdate" HeaderText="LastUpdate" SortExpression="LastUpdate" />
                <asp:BoundField DataField="Station" HeaderText="Station" SortExpression="Station" />
                <asp:BoundField DataField="PalletID" HeaderText="PalletID" SortExpression="PalletID" ReadOnly="True" />
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
            <HeaderStyle BackColor="#CCCCCC" Font-Bold="False" ForeColor="#333333" BorderColor="Black" BorderStyle="Solid" Font-Names="Arial" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </form>
</body>
</html>
