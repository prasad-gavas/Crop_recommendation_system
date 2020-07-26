<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_rainfall.aspx.cs" Inherits="frm_rainfall" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head><br />
<body>
    <form id="form1" runat="server">
    <div>
         <center>
            <table style="width:30%;border-style:solid;border-width:2px;border-color:black;" cellspacing="5px" cellpadding="5px">
              <tr>
                <td style="background-color: #cc7a00;text-align:center;height:40px;">
                    <asp:Label ID="lblrainfall" runat="server" Text="Check Rainfall" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
              </tr>
              <tr>
                <td style="border:0px;font-size:20px;text-align:left">
                     <a href="frm_userdashboard.aspx" style="color:black">Back</a>
                </td>
             </tr>
                <tr>
                 <td style="text-align:left">
                  <table style="width:20%" cellspacing="5px" cellpadding="5px">
                      <tr>
                          <td>
                              <asp:Label ID="lbldistrict1" runat="server" Text="Select District" Font-Bold="False"></asp:Label>
                          </td>
                          <td>
                              <asp:DropDownList ID="ddldistrict" runat="server" Height="35px" Width="250px" OnSelectedIndexChanged="ddldistrict_SelectedIndexChanged" AutoPostBack="True">
                                  <asp:ListItem>Select</asp:ListItem>
                                  <asp:ListItem>Thane</asp:ListItem>
                                  <asp:ListItem>Raigadh</asp:ListItem>
                                  <asp:ListItem>Ratnagiri</asp:ListItem>
                                  <asp:ListItem>Sindhudurg</asp:ListItem>
                                  <asp:ListItem>Palghar</asp:ListItem>
                                  <asp:ListItem>Nasik</asp:ListItem>
                                  <asp:ListItem>Dhule</asp:ListItem>
                                  <asp:ListItem>Nandurbar</asp:ListItem>
                                  <asp:ListItem>Jalgaon</asp:ListItem>
                                  <asp:ListItem>Ahamadnagar</asp:ListItem>
                                  <asp:ListItem>Pune</asp:ListItem>
                                  <asp:ListItem>Solapur</asp:ListItem>
                                  <asp:ListItem>Satara</asp:ListItem>
                                  <asp:ListItem>Sangli</asp:ListItem>
                                  <asp:ListItem>Kolhapur</asp:ListItem>
                                  <asp:ListItem>Aurangabad</asp:ListItem>
                                  <asp:ListItem>Jalna</asp:ListItem>
                                  <asp:ListItem>Beed</asp:ListItem>
                                  <asp:ListItem>Latur</asp:ListItem>
                                  <asp:ListItem>Osmanabad</asp:ListItem>
                                  <asp:ListItem>Nanded</asp:ListItem>
                                  <asp:ListItem>Parabhani</asp:ListItem>
                                  <asp:ListItem>Hingoli</asp:ListItem>
                                  <asp:ListItem>Buldhana</asp:ListItem>
                                  <asp:ListItem>Akola</asp:ListItem>
                                  <asp:ListItem>Washim</asp:ListItem>
                                  <asp:ListItem>Amravati</asp:ListItem>
                                  <asp:ListItem>Yavatmal</asp:ListItem>
                                  <asp:ListItem>Wardha</asp:ListItem>
                                  <asp:ListItem>Nagpur</asp:ListItem>
                                  <asp:ListItem>Bhandara</asp:ListItem>
                                  <asp:ListItem>Gondia</asp:ListItem>
                                  <asp:ListItem>Chandrapur</asp:ListItem>
                                  <asp:ListItem>Gadchiroli</asp:ListItem>
                              </asp:DropDownList>
                          </td>
                          <td>
                              <asp:Label ID="lbldistrict" runat="server" Font-Bold="False" Width="250px"></asp:Label>
                          </td>
                      </tr>
                       <tr>
                          <td>
                              <asp:Label ID="lblyear1" runat="server" Text="Select Year" Font-Bold="False"></asp:Label>
                          </td>
                          <td>
                              <asp:DropDownList ID="ddlyear" runat="server" Height="35px" Width="250px" OnSelectedIndexChanged="ddlyear_SelectedIndexChanged" AutoPostBack="True">
                                  <asp:ListItem>Select</asp:ListItem>
                                  <asp:ListItem>2013</asp:ListItem>
                                  <asp:ListItem>2014</asp:ListItem>
                                  <asp:ListItem>2015</asp:ListItem>
                              </asp:DropDownList>
                          </td>
                           <td>
                              <asp:Label ID="lblyear" runat="server" Font-Bold="False" Width="250px"></asp:Label>
                          </td>
                      </tr>
                       <tr>
                          <td>
                              <asp:Label ID="lblmonth1" runat="server" Text="Select Month" Font-Bold="False" Width="100px"></asp:Label>
                          </td>
                          <td>
                              <asp:DropDownList ID="ddlmonth" runat="server" Height="35px" Width="250px" OnSelectedIndexChanged="ddlmonth_SelectedIndexChanged" AutoPostBack="True">
                                  <asp:ListItem>Select</asp:ListItem>
                                  <asp:ListItem>May</asp:ListItem>
                                  <asp:ListItem>June</asp:ListItem>
                                  <asp:ListItem>July</asp:ListItem>
                                  <asp:ListItem>August</asp:ListItem>
                                  <asp:ListItem>September</asp:ListItem>
                                  <asp:ListItem>Octomber</asp:ListItem>
                                  <asp:ListItem>November</asp:ListItem>
                                  <asp:ListItem>December</asp:ListItem>
                              </asp:DropDownList>
                          </td>
                           <td>
                              <asp:Label ID="lblmonth" runat="server" Font-Bold="False" Width="250px"></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Label ID="lblaverage" runat="server" Text="District Average Rainfall" Font-Bold="False" Width="170px"></asp:Label>
                          </td>
                           <td>
                              <asp:Label ID="lblvalue" runat="server" Font-Bold="False" Width="250px"></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td> </td>
                          <td style="text-align:center">
                              <asp:Button ID="btnshow" runat="server" Text="Show" BackColor= "#cc7a00" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="35px" Width="150px" OnClick="btnshow_Click"></asp:Button>
                          </td>
                  
                      </tr>
                     </table>
                  </td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td style="text-align:center;">
                      <asp:Panel ID="Panel1" runat="server" Visible="False">
                        <div id="grdCharges" runat="server" style="width: 1000px; overflow: auto; height: 160px;">
                             <asp:GridView ID="GridView1" Width="100%" runat="server" CellPadding="4" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
                                  <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                    <HeaderStyle BackColor="#cc7a00" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle ForeColor="#cc7a00" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                             </asp:GridView>
                         </div>
                      </asp:Panel>
                    </td>
                </tr>
           </table>
         </center>
    
    </div>
    </form>
</body>
</html>
