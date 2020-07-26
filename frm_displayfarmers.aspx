<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_displayfarmers.aspx.cs" Inherits="frm_displayfarmers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head><br />
<body>
    <form id="form1" runat="server">
    <div>
        <center>
            <table style="width:80%;border-style:solid;border-width:3px;border-color:black;" cellspacing="5px" cellpadding="5px" border="1">
              <tr>
                <td colspan="3" style="background-color:#006600;text-align:center;height:40px;">
                    <asp:Label ID="lblfarmers" runat="server" Text="Check Farmers List" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
            </tr>
                 <tr>
                <td colspan="2" style="border:0px;font-size:20px;text-align:left">
                     <a href="frm_dashboard.aspx" style="color:black">Back</a>
                </td>
            </tr>
                <tr>
                    <td style="text-align:center">
                       <asp:GridView ID="GridView1" Width="100%" runat="server" CellPadding="4" GridLines="None" AutoGenerateColumns="False" ForeColor="#333333">
                           <EditRowStyle BackColor="#7C6F57" />
                           <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                           <HeaderStyle BackColor="#006600" Font-Bold="True" ForeColor="White" />
                           <PagerStyle BackColor="#006600" ForeColor="White" HorizontalAlign="Center" />
                           <RowStyle BackColor="#E3EAEB" />
                           <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                           <SortedAscendingCellStyle BackColor="#F8FAFA" />
                           <SortedAscendingHeaderStyle BackColor="#246B61" />
                           <SortedDescendingCellStyle BackColor="#D4DFE1" />
                           <SortedDescendingHeaderStyle BackColor="#15524A" />

                           <AlternatingRowStyle BackColor="White" />

                           <Columns>
                               <asp:BoundField DataField="farmer_id" HeaderText="ID" />
                               <asp:BoundField DataField="name" HeaderText="Name" />
                               <asp:BoundField DataField="birthdate" HeaderText="Date Of Birth" />
                               <asp:BoundField DataField="mobile_no" HeaderText="Mobile No" />
                               <asp:BoundField DataField="aadhar" HeaderText="Aadhar No" />
                               <asp:BoundField DataField="state" HeaderText="State" />
                               <asp:BoundField DataField="district" HeaderText="district" /> 
                               <asp:BoundField DataField="location" HeaderText="Location" />
                               <asp:BoundField DataField="pincode" HeaderText="Pincode" />
                                <asp:BoundField DataField="soil_types" HeaderText="Soil Type" />
                               <asp:BoundField DataField="area" HeaderText="Area" />
                                
                               
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
