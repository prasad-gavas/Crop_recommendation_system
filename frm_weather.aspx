<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_weather.aspx.cs" Inherits="frm_weather" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head><br /><br />
<body>
    <form id="form1" runat="server">
    <div>
        <center>      
       <table style="border: solid;border-width:3px; width:40%;border-color:black" cellspacing="5px" cellpadding="5px">
            <tr style="height:50px">
                <td colspan="3" style="text-align:center;background-color:#006600;">
                    <asp:Label ID="lblweather" runat="server" Text="Weather Information" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
            </tr>
             <tr>
                <td colspan="3" style="border:0px;font-size:20px;text-align:left">
                     <a href="frm_dashboard.aspx" style="color:black">Back</a>
                </td>
            </tr>
            <tr><td></td></tr>
       <tr>
         <td>
             <asp:Label ID="lblcity" runat="server" Text="Select City" Font-Bold="True"></asp:Label>
         </td>
        <td>
            <asp:DropDownList ID="ddlcity" runat="server" Height="35px" Width="200px">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Mumbai</asp:ListItem>
                <asp:ListItem>Pune</asp:ListItem>
                <asp:ListItem>Nagpur</asp:ListItem>
                <asp:ListItem>Thane</asp:ListItem>
                <asp:ListItem>Pimpri-Chinchwad</asp:ListItem>
                <asp:ListItem>Nashik</asp:ListItem>
                <asp:ListItem>Kalyan-Dombivali</asp:ListItem>
                <asp:ListItem>Vasai-Virar</asp:ListItem>
                <asp:ListItem>Aurangabad</asp:ListItem>
                <asp:ListItem>Navi Mumbai</asp:ListItem>
                <asp:ListItem>Solapur</asp:ListItem>
                <asp:ListItem>Mira-Bhayandar</asp:ListItem>
                <asp:ListItem>Bhiwandi-Nizampur</asp:ListItem>
                <asp:ListItem>Amravati</asp:ListItem>
                <asp:ListItem>Nanded</asp:ListItem>
                <asp:ListItem>Kolhapur</asp:ListItem>
                <asp:ListItem>Panvel</asp:ListItem>
                <asp:ListItem>Ulhasnagar</asp:ListItem>
                <asp:ListItem>Sangli-Miraj &amp; Kupwad</asp:ListItem>
                <asp:ListItem>Malegaon</asp:ListItem>
                <asp:ListItem>Jalgaon</asp:ListItem>
                <asp:ListItem>Akola</asp:ListItem>
                <asp:ListItem>Latur</asp:ListItem>
                <asp:ListItem>Dhule</asp:ListItem>
                <asp:ListItem>Ahmednagar</asp:ListItem>
                <asp:ListItem>Chandrapur</asp:ListItem>
                <asp:ListItem>Parbhani</asp:ListItem>
            </asp:DropDownList>
        </td>
           <td>
               <asp:Button ID="Button1" Text="Get Weather Information" runat="server" OnClick="GetWeatherInfo" BackColor="#006600" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="35px" Width="200px" />
            </td>
      </tr>
           <tr><td></td></tr>
           <tr><td></td></tr>
            
           
     <tr>
        <td colspan="3" style="text-align:center">       
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
</table>
     </center>
    </div>
    </form>
</body>
</html>
