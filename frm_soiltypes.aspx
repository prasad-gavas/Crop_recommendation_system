<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_soiltypes.aspx.cs" Inherits="frm_soiltypes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head><br /><br /><br />
<body>
    <form id="form1" runat="server">
    <div>
         <center>
            <table style="width:45%;border-style:solid;border-width:3px;border-color:black;" cellspacing="8px" cellpadding="8px">
              <tr>
                <td colspan="3" style="background-color:#006600;text-align:center;height:40px;">
                    <asp:Label ID="lblcrop" runat="server" Text="Check Soil Samples" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
              </tr>
              <tr>
                <td colspan="3" style="border:0px;font-size:20px;text-align:left">
                     <a href="frm_dashboard.aspx" style="color:black">Back</a>
                </td>
             </tr>
             <tr>
                <td style="text-align:left">
                 <table style="width:50%" cellspacing="5px" cellpadding="5px">
             <tr>
               <td>
                   <asp:Label ID="lblcropname" runat="server" Text="Select Sample" Font-Bold="True" Width="100px"></asp:Label>
                </td>
                <td>
                 <asp:DropDownList ID="ddlsample" runat="server" Height="35px" Width="150px" Font-Bold="False">
                     <asp:ListItem>Select Sample</asp:ListItem>
                     <asp:ListItem>1</asp:ListItem>
                     <asp:ListItem>2</asp:ListItem>
                     <asp:ListItem>3</asp:ListItem>
                     <asp:ListItem>4</asp:ListItem>
                     <asp:ListItem>5</asp:ListItem>
                     <asp:ListItem>6</asp:ListItem>
                     <asp:ListItem>7</asp:ListItem>
                     <asp:ListItem>8</asp:ListItem>
                     <asp:ListItem>9</asp:ListItem>
                     <asp:ListItem>10</asp:ListItem>
                    
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
              
                       <asp:GridView Width="100%" ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="false">
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
                                <asp:BoundField datafield="soil_name" HeaderText="Soil Name" />
                                <asp:BoundField datafield="class" HeaderText="Class" />
                                <asp:BoundField datafield="region" HeaderText="Region" />
                                <asp:BoundField datafield="ph" HeaderText="Ph Value" />
                                <asp:BoundField datafield="nitrogen" HeaderText="Nitrogen(Kg)" />
                                <asp:BoundField datafield="phosphorous" HeaderText="Phosphorous(Kg)" />
                                <asp:BoundField datafield="potassium" HeaderText="Potassium(Kg)" />
                                <asp:BoundField datafield="calcium" HeaderText="Calcium(Kg)" />
                                <asp:BoundField datafield="magnesium" HeaderText="Magnesium(Kg)" />
                                <asp:BoundField datafield="zinc" HeaderText="Zinc(Kg)" />
                                <asp:BoundField datafield="sulphur" HeaderText="Sulphur(Kg)" />
                                <asp:BoundField datafield="crop_types1" HeaderText="Crop 1" />
                                 <asp:BoundField datafield="crop_types2" HeaderText="Crop 2" />
                                 <asp:BoundField datafield="crop_types3" HeaderText="Crop 3" />
                                 <asp:BoundField datafield="crop_types4" HeaderText="Crop 4" />
                                 <asp:BoundField datafield="crop_types5" HeaderText="Crop 5" />
                                 <asp:BoundField datafield="season" HeaderText="Season" />

                             </Columns>
                 
                        </asp:GridView>
                 
                     </td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align:left">
                          <asp:Label ID="lblnote" runat="server" Text="* Note :" Font-Bold="true" Visible="False"></asp:Label>  
                          <asp:Label ID="lblnote1" runat="server" Text="Information Provided for the particular sample is for" Visible="False"></asp:Label>  
                         <asp:Label ID="lblnote2" runat="server" Text="555" Visible="False"></asp:Label>  
                    </td>
                </tr>
                </table>
             </center>
         </div>
    </form>
</body>
</html>