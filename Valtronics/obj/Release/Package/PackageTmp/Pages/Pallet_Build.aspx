<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pallet_Build.aspx.cs" Inherits="Valtronix.Pages.Pallet_Build" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 55px;
            background-color: #009999;
        }
        .auto-style4 {
            text-align: center;
            text-decoration: underline;
            color: #FFFFFF;
            background-color: #009999;
        }
        .auto-style5 {
            height: 57px;
        }
        .auto-style7 {
            height: 58px;
            text-align: center;
        }
        .auto-style8 {
            text-decoration: underline;
        }
        .auto-style9 {
            text-align: center;
            text-decoration: underline;
            color: #FFFFFF;
        }
        .auto-style10 {
            height: 218px;
        }
        .auto-style11 {
            text-decoration: underline;
            color: #FFFFFF;
            background-color: #009999;
        }
        .auto-style12 {
            height: 46px;
            background-color: #009999;
        }
        .auto-style13 {
            color: #FFFFFF;
            text-align: center;
        }
        .auto-style14 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8">
                        <h2 class="auto-style8">Robot 1 Outfeed 1</h2>
                    </td>
                    <td>
                        <h2 class="auto-style8">Robot 1 Outfeed 2</h2>
                    </td>
                    <td>
                        <h2 class="auto-style8">Robot 2 Outfeed 1</h2>
                    </td>
                    <td>
                        <h2 class="auto-style8">Robot 2 Outfeed 2</h2>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="4">
                        <h3 class="auto-style9">Current Order Number</h3>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:GridView ID="viewStation1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="91px" PageSize="1">
                            <Columns>
                                <asp:BoundField DataField="PalletID" HeaderText="PalletID" SortExpression="PalletID" />
                            </Columns>
                            <HeaderStyle BackColor="#999999" Font-Size="X-Small" />
                        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select palletid as PalletID from current_pallet where station_num = 1" ></asp:SqlDataSource>
                    </td>
                    <td class="auto-style10">
                        <asp:GridView ID="viewStation2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Height="91px" PageSize="1">
                            <Columns>
                                <asp:BoundField DataField="PalletID" HeaderText="PalletID" SortExpression="PalletID" />
                            </Columns>
                            <HeaderStyle BackColor="#999999" Font-Size="X-Small" />
                        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select palletid as PalletID from current_pallet where station_num = 2" ></asp:SqlDataSource>
                    </td>
                    <td class="auto-style10">
                        <asp:GridView ID="viewStation3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Height="91px" PageSize="1">
                            <Columns>
                                <asp:BoundField DataField="PalletID" HeaderText="PalletID" SortExpression="PalletID" />
                            </Columns>
                            <HeaderStyle BackColor="#999999" Font-Size="X-Small" />
                        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select palletid as PalletID from current_pallet where station_num = 3" ></asp:SqlDataSource>
                    </td>
                    <td class="auto-style10">
                        <asp:GridView ID="viewStation4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" Height="91px" PageSize="1">
                            <Columns>
                                <asp:BoundField DataField="PalletID" HeaderText="PalletID" SortExpression="PalletID" />
                            </Columns>
                            <HeaderStyle BackColor="#999999" Font-Size="X-Small" />
                        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select palletid as PalletID from current_pallet where station_num = 4" ></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="4">
                        <h3 class="auto-style4">Trays Not Scanned</h3>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="viewStation5" runat="server" AutoGenerateColumns="False" DataKeyNames="MailTrayID" DataSourceID="SqlDataSource5" Height="91px" PageSize="1">
                            <Columns>
                                <asp:BoundField DataField="MailTrayID" HeaderText="MailTrayID" ReadOnly="True" SortExpression="MailTrayID" />
                                <asp:BoundField DataField="Half" HeaderText="Half" SortExpression="Half" />
                                <asp:BoundField DataField="Seq" HeaderText="Seq" SortExpression="Seq" />
                            </Columns>
                            <HeaderStyle BackColor="#999999" Font-Size="X-Small" />
                        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select mailtrayid as MailTrayID, half as Half, Sequence as Seq from tray where palletid = (select palletid from current_pallet where station_num = 1) and scanned = 0;" ></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:GridView ID="viewStation6" runat="server" AutoGenerateColumns="False" DataKeyNames="MailTrayID" DataSourceID="SqlDataSource6" Height="91px" PageSize="1">
                            <Columns>
                                <asp:BoundField DataField="MailTrayID" HeaderText="MailTrayID" ReadOnly="True" SortExpression="MailTrayID" />
                                <asp:BoundField DataField="Half" HeaderText="Half" SortExpression="Half" />
                                <asp:BoundField DataField="Seq" HeaderText="Seq" SortExpression="Seq" />
                            </Columns>
                            <HeaderStyle BackColor="#999999" Font-Size="X-Small" />
                        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select mailtrayid as MailTrayID, half as Half, Sequence as Seq from tray where palletid = (select palletid from current_pallet where station_num = 2) and scanned = 0;" ></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:GridView ID="viewStation7" runat="server" AutoGenerateColumns="False" DataKeyNames="MailTrayID" DataSourceID="SqlDataSource7" Height="91px" PageSize="1">
                            <Columns>
                                <asp:BoundField DataField="MailTrayID" HeaderText="MailTrayID" ReadOnly="True" SortExpression="MailTrayID" />
                                <asp:BoundField DataField="Half" HeaderText="Half" SortExpression="Half" />
                                <asp:BoundField DataField="Seq" HeaderText="Seq" SortExpression="Seq" />
                            </Columns>
                            <HeaderStyle BackColor="#999999" Font-Size="X-Small" />
                        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select mailtrayid as MailTrayID, half as Half, Sequence as Seq from tray where palletid = (select palletid from current_pallet where station_num = 3) and scanned = 0;" ></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:GridView ID="viewStation8" runat="server" AutoGenerateColumns="False" DataKeyNames="MailTrayID" DataSourceID="SqlDataSource8" Height="91px" PageSize="1">
                            <Columns>
                                <asp:BoundField DataField="MailTrayID" HeaderText="MailTrayID" ReadOnly="True" SortExpression="MailTrayID" />
                                <asp:BoundField DataField="Half" HeaderText="Half" SortExpression="Half" />
                                <asp:BoundField DataField="Seq" HeaderText="Seq" SortExpression="Seq" />
                            </Columns>
                            <HeaderStyle BackColor="#999999" Font-Size="X-Small" />
                        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select mailtrayid as MailTrayID, half as Half, Sequence as Seq from tray where palletid = (select palletid from current_pallet where station_num = 4) and scanned = 0;" ></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="4">
                        <h3 class="auto-style11">Solved patterns</h3>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="viewStation9" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource9" Height="91px" PageSize="1">
                            <Columns>
                                <asp:BoundField DataField="Layer_Number" HeaderText="Layer_Number" SortExpression="Layer_Number" />
                                <asp:BoundField DataField="Mirrored" HeaderText="Mirrored" SortExpression="Mirrored" />
                            </Columns>
                            <HeaderStyle BackColor="#999999" Font-Size="X-Small" />
                        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select fanuc_num as Layer_Number, fanuc_num_m as Mirrored from solved_patterns where palletid = (select palletid from current_pallet where station_num = 1)" ></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:GridView ID="viewStation10" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource10" Height="91px" PageSize="1">
                            <Columns>
                                <asp:BoundField DataField="Layer_Number" HeaderText="Layer_Number" SortExpression="Layer_Number" />
                                <asp:BoundField DataField="Mirrored" HeaderText="Mirrored" SortExpression="Mirrored" />
                            </Columns>
                            <HeaderStyle BackColor="#999999" Font-Size="X-Small" />
                        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select fanuc_num as Layer_Number, fanuc_num_m as Mirrored from solved_patterns where palletid = (select palletid from current_pallet where station_num = 2)" ></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:GridView ID="viewStation11" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource11" Height="91px" PageSize="1">
                            <Columns>
                                <asp:BoundField DataField="Layer_Number" HeaderText="Layer_Number" SortExpression="Layer_Number" />
                                <asp:BoundField DataField="Mirrored" HeaderText="Mirrored" SortExpression="Mirrored" />
                            </Columns>
                            <HeaderStyle BackColor="#999999" Font-Size="X-Small" />
                        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select fanuc_num as Layer_Number, fanuc_num_m as Mirrored from solved_patterns where palletid = (select palletid from current_pallet where station_num = 3)" ></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:GridView ID="viewStation12" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource12" Height="91px" PageSize="1">
                            <Columns>
                                <asp:BoundField DataField="Layer_Number" HeaderText="Layer_Number" SortExpression="Layer_Number" />
                                <asp:BoundField DataField="Mirrored" HeaderText="Mirrored" SortExpression="Mirrored" />
                            </Columns>
                            <HeaderStyle BackColor="#999999" Font-Size="X-Small" />
                        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select fanuc_num as Layer_Number, fanuc_num_m as Mirrored from solved_patterns where palletid = (select palletid from current_pallet where station_num = 4)" ></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" colspan="4">
                        <h3 class="auto-style13">Pallet header Information, All Stations</h3>
                        <p class="auto-style13">
                            Status Codes: 0 - Not Processed; 1 - Ready For Build; 2 - Actively Sleeving; 3 - Pallet received Complete; 69 - Not Buildable / Data Error</p>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <div class="auto-style14">
                            <asp:GridView ID="viewStation13" runat="server" AutoGenerateColumns="False" DataKeyNames="Pallet_ID" DataSourceID="SqlDataSource13" Height="91px" PageSize="1" Width="2179px">
                                <Columns>
                                    <asp:BoundField DataField="DT" HeaderText="DT" SortExpression="DT" />
                                    <asp:BoundField DataField="Station" HeaderText="Station" SortExpression="Station" />
                                    <asp:BoundField DataField="Pallet_ID" HeaderText="Pallet_ID" ReadOnly="True" SortExpression="Pallet_ID" />
                                    <asp:BoundField DataField="Canadian" HeaderText="Canadian" SortExpression="Canadian" />
                                    <asp:BoundField DataField="Outer_Wrap" HeaderText="Outer_Wrap" SortExpression="Outer_Wrap" />
                                    <asp:BoundField DataField="Top_Cap" HeaderText="Top_Cap" SortExpression="Top_Cap" />
                                    <asp:BoundField DataField="Strap" HeaderText="Strap" SortExpression="Strap" />
                                    <asp:BoundField DataField="Placard" HeaderText="Placard" SortExpression="Placard" />
                                    <asp:BoundField DataField="Canadian_Group" HeaderText="Canadian_Group" SortExpression="Canadian_Group" />
                                    <asp:BoundField DataField="Order_Count" HeaderText="Order_Count" SortExpression="Order_Count" />
                                    <asp:BoundField DataField="Multi_Sequence" HeaderText="Multi_Sequence" SortExpression="Multi_Sequence" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                                    <asp:BoundField DataField="Full_Tray_Count" HeaderText="Full_Tray_Count" SortExpression="Full_Tray_Count" />
                                    <asp:BoundField DataField="Half_Tray_Count" HeaderText="Half_Tray_Count" SortExpression="Half_Tray_Count" />
                                </Columns>
                                <HeaderStyle BackColor="#999999" Font-Size="X-Small" />
                            </asp:GridView>
                        </div>
        <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:ctmConnectionString %>" SelectCommand="Select DT, station as Station, palletid as Pallet_ID, canadian as Canadian, outerwrap as Outer_Wrap, topcap as Top_Cap, strap as Strap, 
placard as Placard, cgroup as Canadian_Group, ordercount as Order_Count, sequence as Multi_Sequence, status as Status, fulltraycount as Full_Tray_Count, halftraycount as Half_Tray_Count from palletheader" ></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            <br />
        <asp:Timer ID="Timer1" runat="server" Interval="5000" OnTick="Timer1_Tick" Enabled="False">
        </asp:Timer>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        </div>
    </form>
</body>
</html>
