<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_crops.aspx.cs" Inherits="frm_crops" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head><br /><br />
<body>
    <form id="form1" runat="server">
    <div>
         <center>
            <table style="width:60%;border-style:solid;border-width:3px;border-color:black;" cellspacing="8px" cellpadding="8px">
              <tr>
                <td colspan="3" style="background-color:#006600;text-align:center;height:40px;">
                    <asp:Label ID="lblcrop" runat="server" Text="Check Crop-Details" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
              </tr>
              <tr>
                <td colspan="3" style="border:0px;font-size:20px;text-align:left">
                     <a href="frm_dashboard.aspx" style="color:black">Back</a>
                </td>
             </tr>
             <tr>
                <td style="text-align:left">
                 <table style="width:65%" cellspacing="5px" cellpadding="5px">
             <tr>
               <td>
                   <asp:Label ID="lblcropname" runat="server" Text="Select Crop" Font-Bold="True"></asp:Label>
                </td>
                <td>
                 <asp:DropDownList ID="ddlcrop" runat="server" Height="35px" Width="200px" Font-Bold="False">
                     <asp:ListItem>Select</asp:ListItem>
                     <asp:ListItem>Cotton</asp:ListItem>
                     <asp:ListItem>Wheat</asp:ListItem>
                     <asp:ListItem>Rice</asp:ListItem>
                     <asp:ListItem>Jowar</asp:ListItem>
                     <asp:ListItem>Bajra</asp:ListItem>
                     <asp:ListItem>Green Gram(Mung)</asp:ListItem>
                     <asp:ListItem>Pigean Peas(Toor)</asp:ListItem>
                     <asp:ListItem>Black Gram(Urad)</asp:ListItem>
                     <asp:ListItem>Tomato</asp:ListItem>
                     <asp:ListItem>Potato</asp:ListItem>
                     <asp:ListItem>Onion</asp:ListItem>
                     <asp:ListItem>Sugarcane</asp:ListItem>
                     <asp:ListItem>Apple</asp:ListItem>
                     
                     <asp:ListItem>Maize(Corn)</asp:ListItem>
                     <asp:ListItem>Brinjal</asp:ListItem>
                     
                 </asp:DropDownList>
                </td>
                  <td>
                        <asp:Button ID="btnshow" runat="server" Text="Show" BackColor="#008000" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="35px" Width="150px" OnClick="btnshow_Click"></asp:Button>
                  </td>
             </tr>
                     </table>
                    </td>
                 </tr>
                
                <tr>
                    <td colspan="3" style="text-align:center">
                       <asp:GridView Width="100%" ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False">
                           <FooterStyle BackColor="White" ForeColor="#000066" />
                           <HeaderStyle BackColor="#008000" Font-Bold="True" ForeColor="White" />
                           <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                           <RowStyle ForeColor="#000066" />
                           <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                           <SortedAscendingCellStyle BackColor="#F1F1F1" />
                           <SortedAscendingHeaderStyle BackColor="#007DBB" />
                           <SortedDescendingCellStyle BackColor="#CAC9C9" />
                           <SortedDescendingHeaderStyle BackColor="#00547E" />

                            <Columns>
                                <asp:BoundField datafield="crop_name" HeaderText="Crop Name" />
                                <asp:BoundField datafield="soil_name" HeaderText="Soil Name" />
                                <asp:BoundField datafield="season" HeaderText="Season" />
                                <asp:BoundField datafield="rainfall" HeaderText="Rainfall(Cm)" />
                                <asp:BoundField datafield="temp" HeaderText="Temperature(Celcius)" />
                                <asp:BoundField datafield="nitrogen" HeaderText="Nitrogen(Kg)" />
                                <asp:BoundField datafield="phosphorous" HeaderText="Phosphorous(Kg)" />
                                <asp:BoundField datafield="potassium" HeaderText="Potassium(Kg)" />
                                <asp:BoundField datafield="sulphur" HeaderText="Sulphur(Kg)" />
                                <asp:BoundField datafield="yield" HeaderText="Yield(Quintal/Ha)" />

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