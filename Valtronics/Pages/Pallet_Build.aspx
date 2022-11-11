<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pallet_Build.aspx.cs" Inherits="Valtronix.Pages.Pallet_Build" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style38 {
            width: 1360px;
        }
        .auto-style43 {
            height: 65px;
        }
        .auto-style44 {
            height: 64px;
        }
        .auto-style52 {
            height: 65px;
            color: #FFFFFF;
            font-size: x-large;
            width: 339px;
            font-family: Arial, Helvetica, sans-serif;
            background-color: #0000FF;
        }
        .auto-style53 {
            height: 65px;
            color: #FFFFFF;
            font-size: x-large;
            width: 340px;
            font-family: Arial, Helvetica, sans-serif;
            background-color: #0000FF;
        }
        .auto-style54 {
            width: 339px;
        }
        .auto-style55 {
            width: 340px;
        }
        .auto-style59 {
            width: 339px;
            height: 20px;
        }
        .auto-style60 {
            width: 340px;
            height: 20px;
        }
        .auto-style61 {
            width: 339px;
            height: 21px;
        }
        .auto-style62 {
            width: 340px;
            height: 21px;
        }
        .auto-style63 {
            width: 339px;
            height: 178px;
        }
        .auto-style64 {
            width: 340px;
            height: 178px;
        }
        .auto-style65 {
            font-size: x-large;
            font-weight: normal;
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style66 {
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <table class="auto-style38">
                <tr bgcolor="#507486">
                    <td align="Center" class="auto-style52">Robot 1 Outfeed 1</td>
                    <td align="Center" class="auto-style52">Robot 1 Outfeed 2</td>
                    <td align="Center" class="auto-style53">Robot 2 Outfeed 1</td>
                    <td align="Center" class="auto-style53">Robot 2 Outfeed 2</td>
                </tr>
                <tr bgcolor="#507486">
                    <td align="Center" colspan="4" class="auto-style43"><H2 class="auto-style65"><font color="White">Current Order Number</H2></font></td>
                </tr>
                <tr>
                    <td valign="Top" class="auto-style63">
                        <asp:GridView ID="viewStation1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="16px" PageSize="1" ShowHeaderWhenEmpty="True" Width="119px" HorizontalAlign="Center" Font-Size="Large" CssClass="auto-style66">
                            <Columns>
                                <asp:BoundField DataField="PalletID" HeaderText="PalletID" SortExpression="PalletID" />
                            </Columns>
                            <HeaderStyle BackColor="#F0F0F0" Font-Size="Medium" Font-Bold="False" Font-Names="Arial" />
                        </asp:GridView>
                    </td>
                    <td valign="Top" class="auto-style63">
                        <asp:GridView ID="viewStation2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Height="16px" PageSize="1" ShowHeaderWhenEmpty="True" Width="118px" HorizontalAlign="Center" CssClass="auto-style66" Font-Size="Large">
                            <Columns>
                                <asp:BoundField DataField="PalletID" HeaderText="PalletID" SortExpression="PalletID" />
                            </Columns>
                            <HeaderStyle BackColor="#F0F0F0" Font-Size="Medium" Font-Names="Arial" />
                        </asp:GridView>
                    </td>
                    <td valign="Top" class="auto-style64">
                        <asp:GridView ID="viewStation3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Height="16px" PageSize="1" ShowHeaderWhenEmpty="True" Width="113px" HorizontalAlign="Center" CssClass="auto-style66" Font-Size="Large">
                            <Columns>
                                <asp:BoundField DataField="PalletID" HeaderText="PalletID" SortExpression="PalletID" />
                            </Columns>
                            <HeaderStyle BackColor="#F0F0F0" Font-Size="Medium" Font-Names="Arial" />
                        </asp:GridView>
                    </td>
                    <td valign="Top" class="auto-style64">
                        <asp:GridView ID="viewStation4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" Height="16px" PageSize="1" ShowHeaderWhenEmpty="True" Width="112px" HorizontalAlign="Center" CssClass="auto-style66" Font-Size="Large">
                            <Columns>
                                <asp:BoundField DataField="PalletID" HeaderText="PalletID" SortExpression="PalletID" />
                            </Columns>
                            <HeaderStyle BackColor="#F0F0F0" Font-Size="Medium" Font-Names="Arial" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr bgcolor="#507486">
                    <td align="Center" class="auto-style44" colspan="4"><H2 class="auto-style65"><font color="White">Trays Unscanned</H2></font></td>
                </tr>
                <tr>
                    <td valign="Top" class="auto-style54">
                        <asp:GridView ID="viewStation5" runat="server" AutoGenerateColumns="False" DataKeyNames="MailTrayID" DataSourceID="SqlDataSource5" Height="16px" PageSize="1" ShowHeaderWhenEmpty="True" HorizontalAlign="Center" CssClass="auto-style66" Font-Size="Large">
                            <AlternatingRowStyle ForeColor="#0066FF" />
                            <Columns>
                                <asp:BoundField DataField="MailTrayID" HeaderText="MailTrayID" ReadOnly="True" SortExpression="MailTrayID" />
                                <asp:BoundField DataField="Half" HeaderText="Half" SortExpression="Half" />
                                <asp:BoundField DataField="Seq" HeaderText="Seq" SortExpression="Seq" />
                            </Columns>
                            <HeaderStyle BackColor="#F0F0F0" Font-Size="Medium" />
                        </asp:GridView>
                    </td>
                    <td valign="Top" class="auto-style54">
                        <asp:GridView ID="viewStation6" runat="server" AutoGenerateColumns="False" DataKeyNames="MailTrayID" DataSourceID="SqlDataSource6" Height="16px" PageSize="1" ShowHeaderWhenEmpty="True" Width="358px" HorizontalAlign="Center" CssClass="auto-style66" Font-Size="Large">
                            <AlternatingRowStyle ForeColor="#0066FF" />
                            <Columns>
                                <asp:BoundField DataField="MailTrayID" HeaderText="MailTrayID" ReadOnly="True" SortExpression="MailTrayID" />
                                <asp:BoundField DataField="Half" HeaderText="Half" SortExpression="Half" />
                                <asp:BoundField DataField="Seq" HeaderText="Seq" SortExpression="Seq" />
                            </Columns>
                            <HeaderStyle BackColor="#F0F0F0" Font-Size="Medium" />
                        </asp:GridView>
                    </td>
                    <td valign="Top" class="auto-style55">
                        <asp:GridView ID="viewStation7" runat="server" AutoGenerateColumns="False" DataKeyNames="MailTrayID" DataSourceID="SqlDataSource7" Height="18px" PageSize="1" ShowHeaderWhenEmpty="True" HorizontalAlign="Center" CssClass="auto-style66" Font-Size="Large">
                            <AlternatingRowStyle ForeColor="#0066FF" />
                            <Columns>
                                <asp:BoundField DataField="MailTrayID" HeaderText="MailTrayID" ReadOnly="True" SortExpression="MailTrayID" />
                                <asp:BoundField DataField="Half" HeaderText="Half" SortExpression="Half" />
                                <asp:BoundField DataField="Seq" HeaderText="Seq" SortExpression="Seq" />
                            </Columns>
                            <HeaderStyle BackColor="#F0F0F0" Font-Size="Medium" />
                        </asp:GridView>
                    </td>
                    <td valign="Top" class="auto-style55">
                        <asp:GridView ID="viewStation8" runat="server" AutoGenerateColumns="False" DataKeyNames="MailTrayID" DataSourceID="SqlDataSource8" Height="21px" PageSize="1" ShowHeaderWhenEmpty="True" Width="196px" HorizontalAlign="Center" CssClass="auto-style66" Font-Size="Large">
                            <AlternatingRowStyle ForeColor="#0066FF" />
                            <Columns>
                                <asp:BoundField DataField="MailTrayID" HeaderText="MailTrayID" ReadOnly="True" SortExpression="MailTrayID" />
                                <asp:BoundField DataField="Half" HeaderText="Half" SortExpression="Half" />
                                <asp:BoundField DataField="Seq" HeaderText="Seq" SortExpression="Seq" />
                            </Columns>
                            <HeaderStyle BackColor="#F0F0F0" Font-Size="Medium" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr bgcolor="#507486">
                    <td align="Center" class="auto-style43" colspan="4"><H2 class="auto-style65"><font color="White">Solved Patterns</font></H2></td>
                </tr>
                <tr>
                    <td valign="Top" class="auto-style54">
                        <asp:GridView ID="viewStation9" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource9" Height="16px" PageSize="1" ShowHeaderWhenEmpty="True" HorizontalAlign="Center" CssClass="auto-style66" Font-Size="Large">
                            <AlternatingRowStyle ForeColor="#0066FF" />
                            <Columns>
                                <asp:BoundField DataField="Layer_Number" HeaderText="Layer_Number" SortExpression="Layer_Number" />
                                <asp:BoundField DataField="Mirrored" HeaderText="Mirrored" SortExpression="Mirrored" />
                            </Columns>
                            <HeaderStyle BackColor="#F0F0F0" Font-Size="Medium" />
                        </asp:GridView>
                    </td>
                    <td valign="Top" class="auto-style54">
                        <asp:GridView ID="viewStation10" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource10" Height="16px" PageSize="1" ShowHeaderWhenEmpty="True" HorizontalAlign="Center" CssClass="auto-style66" Font-Size="Large">
                            <AlternatingRowStyle ForeColor="#0066FF" />
                            <Columns>
                                <asp:BoundField DataField="Layer_Number" HeaderText="Layer_Number" SortExpression="Layer_Number" />
                                <asp:BoundField DataField="Mirrored" HeaderText="Mirrored" SortExpression="Mirrored" />
                            </Columns>
                            <HeaderStyle BackColor="#F0F0F0" Font-Size="Medium" />
                        </asp:GridView>
                    </td>
                    <td valign="Top" class="auto-style55">
                        <asp:GridView ID="viewStation11" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource11" Height="16px" PageSize="1" ShowHeaderWhenEmpty="True" HorizontalAlign="Center" CssClass="auto-style66" Font-Size="Large">
                            <AlternatingRowStyle ForeColor="#0066FF" />
                            <Columns>
                                <asp:BoundField DataField="Layer_Number" HeaderText="Layer_Number" SortExpression="Layer_Number" />
                                <asp:BoundField DataField="Mirrored" HeaderText="Mirrored" SortExpression="Mirrored" />
                            </Columns>
                            <HeaderStyle BackColor="#F0F0F0" Font-Size="Medium" />
                        </asp:GridView>
                    </td>
                    <td valign="Top" class="auto-style55">
                        <asp:GridView ID="viewStation12" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource12" Height="16px" PageSize="1" ShowHeaderWhenEmpty="True" HorizontalAlign="Center" CssClass="auto-style66" Font-Size="Large">
                            <AlternatingRowStyle ForeColor="#0066FF" />
                            <Columns>
                                <asp:BoundField DataField="Layer_Number" HeaderText="Layer_Number" SortExpression="Layer_Number" />
                                <asp:BoundField DataField="Mirrored" HeaderText="Mirrored" SortExpression="Mirrored" />
                            </Columns>
                            <HeaderStyle BackColor="#F0F0F0" Font-Size="Medium" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
        <asp:Timer ID="Timer1" runat="server" Interval="5000" OnTick="Timer1_Tick" Enabled="False">
        </asp:Timer>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="SELECT PalletID FROM current_pallet WHERE (Station_Num = 1)" ></asp:SqlDataSource>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select mailtrayid as MailTrayID, half as Half, Sequence as Seq from tray where palletid = (select palletid from current_pallet where station_num = 1) and scanned = 0;" ></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select mailtrayid as MailTrayID, half as Half, Sequence as Seq from tray where palletid = (select palletid from current_pallet where station_num = 2) and scanned = 0;" ></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select mailtrayid as MailTrayID, half as Half, Sequence as Seq from tray where palletid = (select palletid from current_pallet where station_num = 3) and scanned = 0;" ></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select mailtrayid as MailTrayID, half as Half, Sequence as Seq from tray where palletid = (select palletid from current_pallet where station_num = 4) and scanned = 0;" ></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select fanuc_num as Layer_Number, fanuc_num_m as Mirrored from solved_patterns where palletid = (select palletid from current_pallet where station_num = 1)" ></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select fanuc_num as Layer_Number, fanuc_num_m as Mirrored from solved_patterns where palletid = (select palletid from current_pallet where station_num = 2)" ></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select palletid as PalletID from current_pallet where station_num = 4" ></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select fanuc_num as Layer_Number, fanuc_num_m as Mirrored from solved_patterns where palletid = (select palletid from current_pallet where station_num = 3)" ></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select palletid as PalletID from current_pallet where station_num = 2" ></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select palletid as PalletID from current_pallet where station_num = 3" ></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select fanuc_num as Layer_Number, fanuc_num_m as Mirrored from solved_patterns where palletid = (select palletid from current_pallet where station_num = 4)" ></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
