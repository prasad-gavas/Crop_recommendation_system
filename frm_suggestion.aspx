<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_suggestion.aspx.cs" Inherits="frm_suggestion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div><br /><br />
        <center>
        <table style="width:45%;border-width:2px;border-style:solid;border-color:black" cellspacing="5px" cellpadding="5px">
            <tr style="height:50px">
                <td colspan="2" style="text-align:center;background-color: #cc7a00">
                    <asp:Label ID="lblsuggestion" runat="server" Text="Crop Suggestion" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
                </tr>
             <tr>
                <td colspan="2" style="border:0px;font-size:20px;text-align:left">
                     <a href="frm_userdashboard.aspx" style="color:black">Back</a>
                </td>
            </tr>
            <tr><td></td></tr>
            <tr>
                <td>
                    <asp:Label ID="lblcropname" runat="server" Text="Crop Name" Font-Bold="True" Width="150px"></asp:Label>
                </td>
                <td>
                   <asp:DropDownList ID="ddlcrop" runat="server" Height="35px" Width="180px" AutoPostBack="True" OnSelectedIndexChanged="ddlcrop_SelectedIndexChanged"></asp:DropDownList>
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="lbltemp1" runat="server" Text="Current Temperature" Font-Bold="True" Width="150px"></asp:Label>
                </td>
                <td>
  
         <table id="tblWeather" style="width:100%" runat="server" border="0" cellpadding="2" cellspacing="2" visible="false">
   
    <tr>
        <td rowspan="3">
            <asp:Image ID="imgWeatherIcon" runat="server" />
        </td>
    </tr>
    <tr>
        <td style="text-align:left">
            <asp:Label ID="lblCity_Country" runat="server" />
            <asp:Image ID="imgCountryFlag" runat="server" />
            <asp:Label ID="lblDescription" runat="server" />
            Humidity:
            <asp:Label ID="lblHumidity" runat="server" />
        </td>
    </tr>
    <tr>
        <td style="text-align:left">
            Temperature:
            (Min:
            <asp:Label ID="lblTempMin" runat="server" />
            Max:
            <asp:Label ID="lblTempMax" runat="server" />
             Day:
            <asp:Label ID="lblTempDay" runat="server" />
             Night:
            <asp:Label ID="lblTempNight" runat="server" />)
        </td>
    </tr>
             </table>
              
                    </td>
                 </tr>
            <tr>
                <td>
                    <asp:Label ID="lblsoil" runat="server" Text="Soil Type" Font-Bold="True" Width="150px"></asp:Label>
                </td>
                <td>
                      <asp:Label ID="lblsoiltype" runat="server" Font-Bold="False"></asp:Label>
                  <%--  <asp:DropDownList ID="ddlsoiltypes" runat="server" Height="35px" Width="160px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>All Types</asp:ListItem>
                        <asp:ListItem>Alluvial Soil</asp:ListItem>
                        <asp:ListItem>Black Soil</asp:ListItem>
                        <asp:ListItem>Red Soil</asp:ListItem>
                        <asp:ListItem>Laterite Soil</asp:ListItem>
                        <asp:ListItem>Mountain Soil</asp:ListItem>
                        <asp:ListItem>Desert Soil</asp:ListItem>
                        <asp:ListItem>Loamy Soil</asp:ListItem>
                        <asp:ListItem>Clay Soil</asp:ListItem>
                    </asp:DropDownList>--%>
                </td>
             </tr>
            
            <tr>
                <td>
                    <asp:Label ID="lblwater" runat="server" Text="Water Requirement" Font-Bold="True" Width="150px"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblwaterreq" runat="server" Font-Bold="False"></asp:Label>
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="lblseason1" runat="server" Text="Required Season" Font-Bold="True" Width="150px"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblseason" runat="server" Font-Bold="False"></asp:Label>
                </td>
            </tr>
           <tr><td></td></tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" BackColor="#CC7A00" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="35px" Width="150px" OnClick="btnsubmit_Click"></asp:Button>
                </td>
            </tr>
             
      </table>
      </td>
  </tr>
            </table>
            </center>
    </div>
    </form>
</body>
</html>
