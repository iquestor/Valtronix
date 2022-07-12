<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="R1O1_Solved_Patterns.aspx.cs" Inherits="Valtronics.Pages.R1O1_Solved_Patterns" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="autoindex" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" ShowHeaderWhenEmpty="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="autoindex" HeaderText="autoindex" InsertVisible="False" ReadOnly="True" SortExpression="autoindex" />
                <asp:BoundField DataField="Station_Num" HeaderText="Station_Num" SortExpression="Station_Num" />
                <asp:BoundField DataField="Fanuc_Num" HeaderText="Fanuc_Num" SortExpression="Fanuc_Num" />
                <asp:BoundField DataField="Fanuc_Num_M" HeaderText="Fanuc_Num_M" SortExpression="Fanuc_Num_M" />
                <asp:BoundField DataField="PalletID" HeaderText="PalletID" SortExpression="PalletID" />
                <asp:BoundField DataField="CTM_ID" HeaderText="CTM_ID" SortExpression="CTM_ID" />
                <asp:BoundField DataField="DT" HeaderText="DT" SortExpression="DT" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="SELECT * FROM [solved_patterns]"></asp:SqlDataSource>
        <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
        </asp:Timer>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </form>
</body>
</html>
