<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pallet_Build_History.aspx.cs" Inherits="Valtronics.Pages.Pallet_Build_History" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 68%;
            background-color: #008080;
        }
        .auto-style2 {
            text-align: center;
            width: 510px;
        }
        .auto-style3 {
            width: 141px;
        }
        .auto-style4 {
            width: 150px;
        }
        .auto-style5 {
            width: 116px;
        }
        .auto-style6 {
            width: 263px;
        }
        .auto-style7 {
            width: 147px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" OnClick="Button1_Click" Text="Refresh " UseSubmitBehavior="False" />
                    </td>
                    <td class="auto-style4">
                        <asp:CheckBox ID="CheckBox2" runat="server" Font-Names="Microsoft Sans Serif" Font-Size="Small" ForeColor="White" OnCheckedChanged="CheckBox2_CheckedChanged" Text="  Auto Update" />
                    </td>
                    <td class="auto-style5">
                        <asp:CheckBox ID="CheckBox1" runat="server" Font-Names="Microsoft Sans Serif" Font-Size="Small" ForeColor="White" OnCheckedChanged="CheckBox1_CheckedChanged" Text="   Last 100 " />
                    </td>
                    <td valign="Middel" class="auto-style2">&nbsp;<asp:Label ID="Label1" runat="server" Font-Names="Microsoft Sans Serif" Font-Size="Small" ForeColor="White" Text="Search For:   "></asp:Label>
                        <asp:TextBox ID="txtSearchFor" runat="server" Font-Names="Microsoft Sans Serif" Font-Size="Small" Height="27px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="Label2" runat="server" Font-Names="Microsoft Sans Serif" Font-Size="Small" ForeColor="White" Text="In:   "></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="35px">
                            <asp:ListItem>Station</asp:ListItem>
                            <asp:ListItem Value="SlaveID">Slave Board ID</asp:ListItem>
                            <asp:ListItem Value="PalletID">Pallet ID</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style7">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Go!" />
                    </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Clear" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PalletID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" ShowHeaderWhenEmpty="True" Font-Size="Small"  AllowPaging="True" PageSize="250" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="TimeStamp" HeaderText="TimeStamp" SortExpression="TimeStamp" />
                <asp:BoundField DataField="Station" HeaderText="Station" SortExpression="Station" />
                <asp:BoundField DataField="PalletID" HeaderText="PalletID" ReadOnly="True" SortExpression="PalletID" />
                <asp:BoundField DataField="Canadian" HeaderText="Canadian" SortExpression="Canadian" />
                <asp:BoundField DataField="Wrap" HeaderText="Wrap" SortExpression="Wrap" />
                <asp:BoundField DataField="TopCap" HeaderText="TopCap" SortExpression="TopCap" />
                <asp:BoundField DataField="Strap" HeaderText="Strap" SortExpression="Strap" />
                <asp:BoundField DataField="SlaveID" HeaderText="SlaveID" SortExpression="SlaveID" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="Full" HeaderText="Full" SortExpression="Full" />
                <asp:BoundField DataField="Half" HeaderText="Half" SortExpression="Half" />
                <asp:BoundField DataField="Placard" HeaderText="Placard" SortExpression="Placard" />
                <asp:BoundField DataField="ManLabel" HeaderText="ManLabel" SortExpression="ManLabel" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="SELECT [DT] as [TimeStamp], [Station], [PalletID], [Canadian], [OuterWrap] as [Wrap], [TopCap], [Strap], [SlaveID], [Status], [FullTrayCount] as [Full], [HalfTrayCount] as Half,  [Placard], [ManLabel] FROM [palletheader] ORDER BY [DT] DESC" ></asp:SqlDataSource>
        <asp:Timer ID="Timer1" runat="server" Interval="5000" OnTick="Timer1_Tick" Enabled="False">
        </asp:Timer>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </form>
</body>
</html>
