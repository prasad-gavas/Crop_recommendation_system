<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_data2.aspx.cs" Inherits="user_data2" %>

<!DOCTYPE html>
<script runat="server">

</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 369px;
        }
    </style>
</head><br />
<body>
    <form id="form1" runat="server">
    <div>
         <center>
            <table style="width:30%;border-style:solid;border-width:2px;border-color:black;" cellspacing="5px" cellpadding="5px">
              <tr>
                <td style="background-color: #006600;text-align:center;height:40px;">
                    <asp:Label ID="lblrainfall" runat="server" Text="Check Rainfall" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
              </tr>
              <tr>
                <td style="border:0px;font-size:20px;text-align:left">
                     <a href="user_dataset.aspx" style="color:black">Back</a>
                </td>
             </tr>
                <tr>
                 <td style="text-align:left" class="auto-style1">
                  <table style="width:20%" cellspacing="5px" cellpadding="5px">
                       <tr>
                          <td>
                              
                              Select Farmer</td>
                          <td>
                             <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" Width="259px"></asp:DropDownList>
                          </td>
                          <td>
                            </td>
                      </tr>

                      <tr>
                <td >
                    Soil Type</td>
                <td>
                    <asp:DropDownList ID="ddlsoiltypes" runat="server" Height="35px" Width="260px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Alluvial Soil</asp:ListItem>
                        <asp:ListItem>Black Soil</asp:ListItem>
                        <asp:ListItem>Red Soil</asp:ListItem>
                        <asp:ListItem>Laterite Soil</asp:ListItem>
                        <asp:ListItem>Mountain Soil</asp:ListItem>
                        <asp:ListItem>Desert Soil</asp:ListItem>
                        <asp:ListItem>Loamy Soil</asp:ListItem>
                        <asp:ListItem>Clay Soil</asp:ListItem>
                    </asp:DropDownList>

                </td>
                
            </tr>
                      <tr>
                          <td>
                              <asp:Label ID="lbldistrict1" runat="server" Text="N value" Font-Bold="False"></asp:Label>
                          </td>
                          <td>
                              <asp:TextBox ID="txtN" runat="server"  Style="padding-left:5px" Height="30px" Width="250px" MaxLength="10" ></asp:TextBox>
                          </td>
                          <td>
                              Kg/ha</td>
                      </tr>
                       <tr>
                          <td>
                              <asp:Label ID="lbldistrict2" runat="server" Text="P value" Font-Bold="False"></asp:Label>
                          </td>
                          <td>
                              <asp:TextBox ID="txtP" runat="server"  Style="padding-left:5px" Height="30px" Width="250px" MaxLength="10" ></asp:TextBox>
                           </td>
                           <td>
                               Kg/ha</td>
                      </tr>
                       <tr>
                          <td>
                              <asp:Label ID="lbldistrict3" runat="server" Text="K value" Font-Bold="False"></asp:Label>
                          </td>
                          <td>
                              <asp:TextBox ID="txtK" runat="server"  Style="padding-left:5px" Height="30px" Width="250px" MaxLength="10" ></asp:TextBox>
                           </td>
                           <td>
                               Kg/ha</td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Label ID="lbldistrict4" runat="server" Text="pH value" Font-Bold="False"></asp:Label>
                          </td>
                           <td>
                               <asp:TextBox ID="txtPh" runat="server"  Style="padding-left:5px" Height="30px" Width="250px" MaxLength="10" ></asp:TextBox>
                          </td>
                          <td >&nbsp;</td>
                      </tr>
                                            <tr>
                          <td>
                              <asp:Label ID="lbldistrict5" runat="server" Text="EC Value" Font-Bold="False"></asp:Label>
                                                </td>
                           <td>
                               <asp:TextBox ID="txtec" runat="server"  Style="padding-left:5px" Height="30px" Width="250px" MaxLength="10" ></asp:TextBox>
                                                </td>
                          <td >dS/m</td>
                      </tr>
                     
                                            <tr>
                          <td> </td>
                          <td style="text-align:center">
                              <asp:Button ID="Button1" runat="server" Text="Submit" BackColor= "#006600" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="35px" Width="150px" OnClick="btnshow_Click"></asp:Button>
                          </td>
                  <td >&nbsp;</td>
                      </tr>
                     </table>
                 
                
           </table>
         </center>
    
    </div>
    </form>
</body>
</html>
