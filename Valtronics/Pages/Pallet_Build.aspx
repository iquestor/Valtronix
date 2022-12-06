<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pallet_Build.aspx.cs" Inherits="Valtronix.Pages.Pallet_Build" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style52 {
            height: 41px;
            color: #FFFFFF;
            font-size: large;
            width: 339px;
            font-family: Arial, Helvetica, sans-serif;
            background-color: #0000FF;
        }
        .auto-style54 {
            width: 339px;
        }
        .auto-style63 {
            width: 339px;
            height: 64px;
        }
        .auto-style66 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style67 {
            width: 339px;
            height: 64px;
            text-align: left;
        }
        .auto-style71 {
            font-size: large;
            font-weight: normal;
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style76 {
            height: 41px;
            color: #FFFFFF;
            font-size: large;
            width: 338px;
            font-family: Arial, Helvetica, sans-serif;
            background-color: #0000FF;
        }
        .auto-style77 {
            width: 338px;
            height: 64px;
        }
        .auto-style78 {
            width: 338px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>           
            <table style="width:47%; class="auto-style38">
                <tr bgcolor="#507486">
                    <td align="Center" class="auto-style52">Robot 1 Outfeed 1</td>
                    <td align="Center" class="auto-style52">Robot 1 Outfeed 2</td>
                    <td align="Center" class="auto-style76">Robot 2 Outfeed 1</td>
                    <td align="Center" class="auto-style76">Robot 2 Outfeed 2</td>
                </tr>
                <tr bgcolor="#507486">
                    <td align="Center" colspan="4" class="auto-style71"><font color="White">Current Order Number</font></td>
                </tr>
                <tr>
                    <td valign="Top" class="auto-style67">
                        <asp:GridView ID="viewStation1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="1px" PageSize="1" ShowHeaderWhenEmpty="True" Width="119px" HorizontalAlign="Center" Font-Size="Large" CssClass="auto-style66">
                            <Columns>
                                <asp:BoundField DataField="PalletID" HeaderText="PalletID" SortExpression="PalletID" />
                            </Columns>
                            <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <HeaderStyle BackColor="#F0F0F0" Font-Size="Medium" Font-Bold="False" Font-Names="Arial" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:GridView>
                    </td>
                    <td valign="Top"  class="auto-style63">
                        <asp:GridView ID="viewStation2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Height="1px" PageSize="1" ShowHeaderWhenEmpty="True" Width="118px" HorizontalAlign="Center" CssClass="auto-style66" Font-Size="Large">
                            <Columns>
                                <asp:BoundField DataField="PalletID" HeaderText="PalletID" SortExpression="PalletID" />
                            </Columns>
                            <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <HeaderStyle BackColor="#F0F0F0" Font-Size="Medium" Font-Names="Arial" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:GridView>
                    </td>
                    <td valign="Top" class="auto-style77">
                        <asp:GridView ID="viewStation3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Height="1px" PageSize="1" ShowHeaderWhenEmpty="True" Width="113px" HorizontalAlign="Center" CssClass="auto-style66" Font-Size="Large">
                            <Columns>
                                <asp:BoundField DataField="PalletID" HeaderText="PalletID" SortExpression="PalletID" />
                            </Columns>
                            <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <HeaderStyle BackColor="#F0F0F0" Font-Size="Medium" Font-Names="Arial" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:GridView>
                    </td>
                    <td valign="Top" class="auto-style77">
                        <asp:GridView ID="viewStation4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" Height="1px" PageSize="1" ShowHeaderWhenEmpty="True" Width="112px" HorizontalAlign="Center" CssClass="auto-style66" Font-Size="Large">
                            <Columns>
                                <asp:BoundField DataField="PalletID" HeaderText="PalletID" SortExpression="PalletID" />
                            </Columns>
                            <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <HeaderStyle BackColor="#F0F0F0" Font-Size="Medium" Font-Names="Arial" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr bgcolor="#507486">
                     <td align="Center" colspan="4" class="auto-style71"><font color="White"><font color="White">Trays Unscanned</font></td>
                </tr>
                <tr>
                    <td align="Center" valign="Top" class="auto-style54">
                        <asp:Label ID="lblR1O1_Unscanned" runat="server" Font-Names="Arial" Font-Size="Small"></asp:Label>
                    </td>
                    <td align="Center" valign="Top" class="auto-style54">
                        <asp:Label ID="lblR1O2_Unscanned" runat="server" Font-Names="Arial" Font-Size="Small"></asp:Label>
                    </td>
                    <td align="Center" valign="Top" class="auto-style78">
                        <asp:Label ID="lblR2O1_Unscanned" runat="server" Font-Names="Arial" Font-Size="Small"></asp:Label>
                    </td>
                    <td align="Center" valign="Top" class="auto-style78">
                        <asp:Label ID="lblR2O2_Unscanned" runat="server" Font-Names="Arial" Font-Size="Small"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td valign="Top" class="auto-style54">
                        <asp:GridView ID="viewStation5" runat="server" AutoGenerateColumns="False" DataKeyNames="MailTrayID" DataSourceID="SqlDataSource5" Height="16px" PageSize="1" ShowHeaderWhenEmpty="True" HorizontalAlign="Center" CssClass="auto-style66" Font-Size="Medium" Width="170px" OnDataBound="viewStation5_DataBound">
                            <AlternatingRowStyle ForeColor="#0066FF" />
                            <Columns>
                                <asp:BoundField DataField="MailTrayID" HeaderText="MailTrayID" ReadOnly="True" SortExpression="MailTrayID" />
                                <asp:BoundField DataField="Half" HeaderText="Half" SortExpression="Half" />
                            </Columns>
                            <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <HeaderStyle BackColor="#F0F0F0" Font-Size="Medium" />
                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:GridView>
                    </td>
                    <td valign="Top" class="auto-style54">
                        <asp:GridView ID="viewStation6" runat="server" AutoGenerateColumns="False" DataKeyNames="MailTrayID" DataSourceID="SqlDataSource6" Height="16px" PageSize="1" ShowHeaderWhenEmpty="True" Width="170px" HorizontalAlign="Center" CssClass="auto-style66" Font-Size="Medium" OnDataBound="viewStation6_DataBound">
                            <AlternatingRowStyle ForeColor="#0066FF" />
                            <Columns>
                                <asp:BoundField DataField="MailTrayID" HeaderText="MailTrayID" ReadOnly="True" SortExpression="MailTrayID" />
                                <asp:BoundField DataField="Half" HeaderText="Half" SortExpression="Half" />
                            </Columns>
                            <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <HeaderStyle BackColor="#F0F0F0" Font-Size="Medium" />
                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:GridView>
                    </td>
                    <td valign="Top" class="auto-style78">
                        <asp:GridView ID="viewStation7" runat="server" AutoGenerateColumns="False" DataKeyNames="MailTrayID" DataSourceID="SqlDataSource7" Height="18px" PageSize="1" ShowHeaderWhenEmpty="True" HorizontalAlign="Center" CssClass="auto-style66" Font-Size="Medium" Width="171px" OnDataBound="viewStation7_DataBound">
                            <AlternatingRowStyle ForeColor="#0066FF" />
                            <Columns>
                                <asp:BoundField DataField="MailTrayID" HeaderText="MailTrayID" ReadOnly="True" SortExpression="MailTrayID" />
                                <asp:BoundField DataField="Half" HeaderText="Half" SortExpression="Half" />
                            </Columns>
                            <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <HeaderStyle BackColor="#F0F0F0" Font-Size="Medium" />
                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:GridView>
                    </td>
                    <td valign="Top" class="auto-style78">
                        <asp:GridView ID="viewStation8" runat="server" AutoGenerateColumns="False" DataKeyNames="MailTrayID" DataSourceID="SqlDataSource8" Height="21px" PageSize="1" ShowHeaderWhenEmpty="True" Width="170px" HorizontalAlign="Center" CssClass="auto-style66" Font-Size="Medium" OnDataBound="viewStation8_DataBound">
                            <AlternatingRowStyle ForeColor="#0066FF" />
                            <Columns>
                                <asp:BoundField DataField="MailTrayID" HeaderText="MailTrayID" ReadOnly="True" SortExpression="MailTrayID" />
                                <asp:BoundField DataField="Half" HeaderText="Half" SortExpression="Half" />
                            </Columns>
                            <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <HeaderStyle BackColor="#F0F0F0" Font-Size="Medium" />
                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr bgcolor="#507486">
                     <td align="Center" colspan="4" class="auto-style71"><font color="White"><font color="White">Solved Patterns</font></td>
                </tr>
                <tr>
                    <td valign="Top" class="auto-style54">
                        <asp:GridView ID="viewStation9" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource9" Height="16px" PageSize="1" ShowHeaderWhenEmpty="True" HorizontalAlign="Center" CssClass="auto-style66" Font-Size="Medium">
                            <AlternatingRowStyle ForeColor="#0066FF" />
                            <Columns>
                                <asp:BoundField DataField="Layer-#" HeaderText="Layer-#" SortExpression="Layer-#" />
                                <asp:BoundField DataField="Mirrored" HeaderText="Mirrored" SortExpression="Mirrored" />
                            </Columns>
                            <HeaderStyle BackColor="#F0F0F0" Font-Size="Medium" />
                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:GridView>
                    </td>
                    <td valign="Top" class="auto-style54">
                        <asp:GridView ID="viewStation10" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource10" Height="16px" PageSize="1" ShowHeaderWhenEmpty="True" HorizontalAlign="Center" CssClass="auto-style66" Font-Size="Medium">
                            <AlternatingRowStyle ForeColor="#0066FF" />
                            <Columns>
                                <asp:BoundField DataField="Layer-#" HeaderText="Layer-#" SortExpression="Layer-#" />
                                <asp:BoundField DataField="Mirrored" HeaderText="Mirrored" SortExpression="Mirrored" />
                            </Columns>
                            <HeaderStyle BackColor="#F0F0F0" Font-Size="Medium" />
                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:GridView>
                    </td>
                    <td valign="Top" class="auto-style78">
                        <asp:GridView ID="viewStation11" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource11" Height="16px" PageSize="1" ShowHeaderWhenEmpty="True" HorizontalAlign="Center" CssClass="auto-style66" Font-Size="Medium">
                            <AlternatingRowStyle ForeColor="#0066FF" />
                            <Columns>
                                <asp:BoundField DataField="Layer-#" HeaderText="Layer-#" SortExpression="Layer-#" />
                                <asp:BoundField DataField="Mirrored" HeaderText="Mirrored" SortExpression="Mirrored" />
                            </Columns>
                            <HeaderStyle BackColor="#F0F0F0" Font-Size="Medium" />
                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:GridView>
                    </td>
                    <td valign="Top" class="auto-style78">
                        <asp:GridView ID="viewStation12" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource12" Height="16px" PageSize="1" ShowHeaderWhenEmpty="True" HorizontalAlign="Center" CssClass="auto-style66" Font-Size="Medium">
                            <AlternatingRowStyle ForeColor="#0066FF" />
                            <Columns>
                                <asp:BoundField DataField="Layer-#" HeaderText="Layer-#" SortExpression="Layer-#" />
                                <asp:BoundField DataField="Mirrored" HeaderText="Mirrored" SortExpression="Mirrored" />
                            </Columns>
                            <HeaderStyle BackColor="#F0F0F0" Font-Size="Medium" />
                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
            <br />
        <asp:Timer ID="Timer1" runat="server" Interval="5000" OnTick="Timer1_Tick">
        </asp:Timer>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="SELECT PalletID FROM current_pallet WHERE (Station_Num = 1)" ></asp:SqlDataSource>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select mailtrayid as MailTrayID, half as Half from tray where palletid = (select palletid from current_pallet where station_num = 1) and scanned = 0;" ></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select mailtrayid as MailTrayID, half as Half from tray where palletid = (select palletid from current_pallet where station_num = 2) and scanned = 0;" ></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select mailtrayid as MailTrayID, half as Half from tray where palletid = (select palletid from current_pallet where station_num = 3) and scanned = 0;" ></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select mailtrayid as MailTrayID, half as Half from tray where palletid = (select palletid from current_pallet where station_num = 4) and scanned = 0;" ></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select fanuc_num as [Layer-#], fanuc_num_m as Mirrored from solved_patterns where palletid = (select palletid from current_pallet where station_num = 1)" ></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select fanuc_num as [Layer-#], fanuc_num_m as Mirrored from solved_patterns where palletid = (select palletid from current_pallet where station_num = 2)" ></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select palletid as PalletID from current_pallet where station_num = 4" ></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select fanuc_num as [Layer-#], fanuc_num_m as Mirrored from solved_patterns where palletid = (select palletid from current_pallet where station_num = 3)" ></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select palletid as PalletID from current_pallet where station_num = 2" ></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select palletid as PalletID from current_pallet where station_num = 3" ></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select fanuc_num as [Layer-#], fanuc_num_m as Mirrored from solved_patterns where palletid = (select palletid from current_pallet where station_num = 4)" ></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
