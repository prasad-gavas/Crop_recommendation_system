<%@ Page Language="C#" AutoEventWireup="true" CodeFile="improvement.aspx.cs" Inherits="frm_queriesnresponse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head><br />
<body>
    <form id="form1" runat="server">
    <div>
        <center>
        <table style="width:40%;border-width:3px;border-style:solid;border-color:black" cellspacing="5px" cellpadding="5px">
            <tr style="height:50px">
                <td colspan="2" style="text-align:center;background-color: #cc7a00">
                    <asp:Label ID="lblquery" runat="server" Text="Improvement of Soil" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
                </tr>
             <tr>
                <td colspan="2" style="border:0px;font-size:20px;text-align:left">
                     <a href="frm_userdashboard.aspx" style="color:black">Back</a>
                </td>
            </tr>
            <tr>
                <td >
                     <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="16px" Width="206px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                </td>
            </tr>
<%--           <tr>
                <td >
                    
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    
                </td>
            </tr>--%>
            <tr>
                <td style="text-align:center">
                    <asp:GridView ID="GridView1" Width="100%" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False">
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#cc7a00" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#cc7a00" ForeColor="#cc7a00" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />

                        <Columns>
                            <asp:BoundField DataField="n" HeaderText="N kg/ha" />
                            <asp:BoundField DataField="p" HeaderText="P kg/ha" />
                            <asp:BoundField DataField="k" HeaderText="K kg/ha" />
                            <asp:BoundField DataField="urea" HeaderText="Urea kg/ha" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
<%--                         <tr>
                <td>
                     
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                     
                </td>
            </tr>--%>

            <tr>
                <td style="text-align:center">
                    <asp:GridView ID="GridView2" Width="100%" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False">
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#cc7a00" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#cc7a00" ForeColor="#cc7a00" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />

                        <Columns>
                            <asp:BoundField DataField="n1" HeaderText="N kg/ha" />
                            <asp:BoundField DataField="p1" HeaderText="P kg/ha" />
                            <asp:BoundField DataField="k1" HeaderText="K kg/ha" />
                            <asp:BoundField DataField="urea1" HeaderText="Urea kg/ha" />
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
