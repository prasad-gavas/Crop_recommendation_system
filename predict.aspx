<%@ Page Language="C#" AutoEventWireup="true" CodeFile="predict.aspx.cs" Inherits="frm_rainfall" %>

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
                              <asp:Label ID="lbldistrict1" runat="server" Text="N value" Font-Bold="False"></asp:Label>
                          </td>
                          <td>
                              <asp:TextBox ID="txtN" runat="server"  Style="padding-left:5px" Height="30px" Width="250px" MaxLength="10"  Wrap="False" ></asp:TextBox>
                          </td>
                          <td>
                              Kg/ha</td>
                      </tr>
                       <tr>
                          <td>
                              <asp:Label ID="lbldistrict2" runat="server" Text="P value" Font-Bold="False"></asp:Label>
                          </td>
                          <td>
                              <asp:TextBox ID="txtP" runat="server"  Style="padding-left:5px" Height="30px" Width="250px" MaxLength="10"  ></asp:TextBox>
                           </td>
                           <td>
                               Kg/ha</td>
                      </tr>
                       <tr>
                          <td>
                              <asp:Label ID="lbldistrict3" runat="server" Text="K value" Font-Bold="False"></asp:Label>
                          </td>
                          <td>
                              <asp:TextBox ID="txtK" runat="server"  Style="padding-left:5px" Height="30px" Width="250px" MaxLength="10"  ></asp:TextBox>
                           </td>
                           <td>
                               Kg/ha</td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Label ID="lbldistrict4" runat="server" Text="pH value" Font-Bold="False"></asp:Label>
                          </td>
                           <td>
                               <asp:TextBox ID="txtPh" runat="server"  Style="padding-left:5px" Height="30px" Width="250px" MaxLength="10"  ></asp:TextBox>
                          </td>
                          <td >Kg/ha</td>
                      </tr>
                                            <tr>
                          <td>
                              <asp:Label ID="lbldistrict5" runat="server" Text="EC Value" Font-Bold="False"></asp:Label>
                                                </td>
                           <td>
                               <asp:TextBox ID="txtec" runat="server"  Style="padding-left:5px" Height="30px" Width="250px" MaxLength="10"  ></asp:TextBox>
                                                </td>
                          <td >dS/m</td>
                      </tr>
                      <tr>
                          <td> 
                              <asp:Label ID="lbldistrict6" runat="server" Text="Quality" Font-Bold="False"></asp:Label>
                          </td>
                          <td style="text-align:center">
                              <asp:Label ID="quality" runat="server" Font-Bold="False" Width="250px" Visible="False"></asp:Label>
                          </td>
                  <td >&nbsp;</td>
                      </tr>
                                            <tr>
                          <td> </td>
                          <td style="text-align:center">
                              <asp:Button ID="Button1" runat="server" Text="Predict Quality" BackColor= "#cc7a00" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="35px" Width="150px" OnClick="btnshow_Click"></asp:Button>
                          </td>
                  <td >&nbsp;</td>
                      </tr>
                     </table>
                  </td>
                </tr>
                <tr>
                    <td>
                        <table style="width:20%" cellspacing="5px" cellpadding="5px">
                      <tr>
                          <td>
                              State</td>
                          <td>
                              <asp:Label ID="lblstate" runat="server" Font-Bold="False"></asp:Label>
                          </td>
                          <td>
                              &nbsp;</td>
                      </tr>
                       <tr>
                          <td>
                              District</td>
                          <td>
                              <asp:Label ID="lbldistrict" runat="server" Font-Bold="False"></asp:Label>
                           </td>
                           <td>
                               &nbsp;</td>
                      </tr>
                       <tr>
                          <td>
                              Select month</td>
                          <td>
                              <asp:DropDownList ID="DropDownList1" runat="server" Style="padding-left:5px" Height="30px" Width="250px" MaxLength="10">
                              </asp:DropDownList>
                           </td>
                           <td>
                               &nbsp;</td>
                      </tr>
                      
                      <tr>
                          <td> 
                              <asp:Label ID="Label6" runat="server" Text="Rain" Font-Bold="False"></asp:Label>
                          </td>
                          <td style="text-align:center">
                              <asp:Label ID="Label7" runat="server" Font-Bold="False" Width="250px" Visible="False"></asp:Label>
                          </td>
                  <td >mm</td>
                      </tr>
                                            <tr>
                          <td> </td>
                          <td style="text-align:center">
                              <asp:Button ID="Button2" runat="server" Text="Rain" BackColor= "#cc7a00" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="35px" Width="150px" OnClick="Button2_Click" ></asp:Button>
                          </td>
                  <td >&nbsp;</td>
                      </tr>
                     </table>
                    </td>
                </tr>
                <tr><td>
                    <asp:Button ID="Button3" runat="server" Text="Predict Crop using Rain and fertility " BackColor= "#cc7a00" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="35px" Width="369px" OnClick="Button3_Click" ></asp:Button>
                    </td>

                </tr>
                <tr>
                    <td style="text-align:center;">
                      <asp:Panel ID="Panel1" runat="server" Visible="False">
                        <div id="grdCharges" runat="server" style="width: 1000px; overflow: auto; height: 160px;">
                             <asp:GridView ID="GridView1" Width="100%" runat="server" CellPadding="4" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" AutoGenerateColumns="False" EmptyDataText="No Data Found">
                                  <Columns>
                                      <asp:BoundField DataField="Crop" HeaderText="Crop" />
                                       <asp:BoundField DataField="Period" HeaderText="Period" />
                                       <asp:BoundField DataField="Pesticide" HeaderText="Pesticide" />
                                       <asp:BoundField DataField="Fertilizer" HeaderText="Fertilizer" />
                                  </Columns>
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
