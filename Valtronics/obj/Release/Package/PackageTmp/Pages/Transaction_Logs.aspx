<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transaction_Logs.aspx.cs" Inherits="Valtronics.Pages.Transaction_Logs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #008080;
        }
        .auto-style2 {
            margin-right: 1756px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" OnClick="Button1_Click" Text="Refresh " UseSubmitBehavior="False" />
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBox2" runat="server" Font-Names="Microsoft Sans Serif" Font-Size="Small" ForeColor="White" OnCheckedChanged="CheckBox2_CheckedChanged" Text="  Auto Update" />
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" Font-Names="Microsoft Sans Serif" Font-Size="Small" ForeColor="White" OnCheckedChanged="CheckBox1_CheckedChanged" Text="   Last 100 " />
                    </td>
                    <td>&nbsp;<asp:Label ID="Label1" runat="server" Font-Names="Microsoft Sans Serif" Font-Size="Small" ForeColor="White" Text="Search  "></asp:Label>
                        <asp:TextBox ID="txtSearchFor" runat="server" Font-Names="Microsoft Sans Serif" Font-Size="Small" Height="27px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Font-Names="Microsoft Sans Serif" Font-Size="Small" ForeColor="White" Text="In:   "></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="35px">
                            <asp:ListItem>Carton_ID</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" ShowHeaderWhenEmpty="True" Font-Size="Small"  AllowPaging="True" PageSize="50" CssClass="auto-style2" DataKeyNames="id" Width="1024px" Font-Names="Arial">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" ReadOnly="True" InsertVisible="False" />
                <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                <asp:BoundField DataField="date_stamp" HeaderText="date_stamp" SortExpression="date_stamp" />
                <asp:BoundField DataField="time_stamp" HeaderText="time_stamp" SortExpression="time_stamp" />
                <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
                <asp:BoundField DataField="source" HeaderText="source" SortExpression="source" />
                <asp:BoundField DataField="carton_id" HeaderText="carton_id" SortExpression="carton_id" />
                <asp:BoundField DataField="DT" HeaderText="DT" SortExpression="DT" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="SELECT * FROM [syslog] ORDER BY [DT] DESC" OnSelecting="SqlDataSource1_Selecting" ></asp:SqlDataSource>
        <asp:Timer ID="Timer1" runat="server" Interval="5000" OnTick="Timer1_Tick" Enabled="False">
        </asp:Timer>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </form>
</body>
</html>
