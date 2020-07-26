 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_addfarm.aspx.cs" Inherits="frm_addfarm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 37px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div><br /><br /><br />
     <center>
        <table style="width:30%;border-width:2px;border-style:solid;border-color:black" cellspacing="5px" cellpadding="5px">
            <tr style="height:50px">
                <td colspan="2" style="text-align:center;background-color: #cc7a00">
                    <asp:Label ID="lblfarm" runat="server" Text="Add New Farm" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
                </tr>
             <tr>
                <td colspan="2" style="border:0px;font-size:20px;text-align:left" class="auto-style1">
                     <a href="frm_userdashboard.aspx" style="color:black">Back</a>
                </td>
            </tr>
           
            <%--<tr>
                <td style="padding-left:20px">
                    <asp:Label ID="lblsoil" runat="server" Text="Soil Type" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
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
                
            </tr>--%>
            <tr>
                <td style="padding-left:20px">
                    <asp:Label ID="lbldistrict" runat="server" Text="State" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddldistrict" runat="server" Height="35px" Width="260px" AutoPostBack="True" OnSelectedIndexChanged="ddldistrict_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
             </tr>
              <tr>
                <td style="padding-left:20px">
                    <asp:Label ID="lblvillage" runat="server" Text="District" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlvillage" runat="server" Height="35px" Width="260px" AppendDataBoundItems="True"></asp:DropDownList>
                </td>
                
            </tr>
             <tr>
                <td style="padding-left:20px">
                    <asp:Label ID="lbllocation" runat="server" Text="Location" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtlocation" runat="server" placeholder="Enter Location" Style="padding-left:5px" Height="30px" Width="250px"></asp:TextBox>
                </td>
                
            </tr>
            
              <tr>
                <td style="padding-left:20px">
                    <asp:Label ID="lblpin" runat="server" Text="Pin Code" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpin" runat="server"  placeholder="Enter Pin Code" Style="padding-left:5px" Height="30px" Width="250px" MaxLength="6"></asp:TextBox>
                </td>
                
            </tr>
             <tr>
                <td style="padding-left:20px">
                    <asp:Label ID="lblhectare" runat="server" Text="Area" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtarea" runat="server" placeholder="Enter Area" Style="padding-left:5px" Height="30px" Width="150px"></asp:TextBox>
                    <asp:DropDownList ID="ddlarea" runat="server" Height="35px" Width="100px">
                          <asp:ListItem>Select</asp:ListItem>
                         <asp:ListItem>Hectare</asp:ListItem>
                        <asp:ListItem>Acres</asp:ListItem>
                    </asp:DropDownList>

                </td>
                
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" BackColor="#CC7A00" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="35px" Width="260px" OnClick="btnsubmit_Click"></asp:Button>
                </td>
            </tr>
            </table>
            </center>
    
    </div>
    </form>
</body>
</html>
