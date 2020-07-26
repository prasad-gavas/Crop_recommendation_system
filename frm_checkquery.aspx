<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_checkquery.aspx.cs" Inherits="frm_checkquery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head><br />
<body>
    <form id="form1" runat="server">
    <div>
        <center>
            <table style="border: solid;border-width:3px; width:60%;border-color:black" cellspacing="5px" cellpadding="5px">
            <tr style="height:50px">
                <td colspan="2" style="text-align:center;background-color:#006600;">
                    <asp:Label ID="lblquery" runat="server" Text="Check Query" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
            </tr>
             <tr>
                <td colspan="2" style="border:0px;font-size:20px;text-align:left">
                     <a href="frm_dashboard.aspx" style="color:black">Back</a>
                </td>
            </tr>
                <tr>
                    <td style="text-align:center">
                        <asp:GridView ID="GridView1" Width="100%" runat="server" CellPadding="4"  ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#006600" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#006600" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />

                            <Columns>
                                <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Select"></asp:ButtonField>
                                <asp:BoundField datafield="Id" HeaderText="ID" />
                                <asp:BoundField datafield="name" HeaderText="Name" />
                                <asp:BoundField datafield="query" HeaderText="Query" />
                                <asp:BoundField datafield="date" HeaderText="Date" />
                                <asp:BoundField datafield="time" HeaderText="Time" />
                                <asp:BoundField datafield="response" HeaderText="Response" />

                          </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                </table>
        </center>
    
    </div>
    </form>
</body>
</html>
