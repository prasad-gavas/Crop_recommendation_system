<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmRegistration.aspx.cs" Inherits="frmRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="tcal.css" />
	<script type="text/javascript" src="tcal.js"></script> 
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
             <table style="width: 35%;border-width:3px;border-style:solid;border-color:black;" cellspacing="4px" cellpadding="4px">
            <tr style="height:50px">
                <td colspan="2" style="text-align:center;background-color: #cc7a00;color:white">
                    <asp:Label ID="Label1" runat="server" Text="User Registration" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                </td>
               
            </tr>
            <tr>
                <td colspan="2" style="border:0px;font-size:20px;text-align:left">
                     <a href="frm_userlogin.aspx" style="color:black">Back</a>
                </td>
            </tr>
            <tr>
                <td style="padding-left:20px">
                    <asp:Label ID="lblname" runat="server" Text="Name" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtname" runat="server" placeholder="Enter Name" Style="padding-left:5px" Height="30px" Width="250px"></asp:TextBox>
                </td>
                
            </tr>
             <tr>
                <td style="padding-left:20px">
                    <asp:Label ID="lblbirth" runat="server" Text="Date Of Birth" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbirth" runat="server" class="tcal" placeholder="Enter Date Of Birth" Style="padding-left:5px" Height="30px" Width="230px"></asp:TextBox>
                </td>
                
            </tr>
              <tr>
                <td style="padding-left:20px">
                    <asp:Label ID="lblmob" runat="server" Text="Mobile No" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtmob" runat="server" placeholder="Enter Mobile No" Style="padding-left:5px" Height="30px" Width="250px" MaxLength="10"></asp:TextBox>
                </td>
                
            </tr>
             <tr>
                <td style="padding-left:20px">
                    <asp:Label ID="lblaadhar" runat="server" Text="Aadhar No" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtaadhar" runat="server"  placeholder="Enter Aadhar No" Style="padding-left:5px" Height="30px" Width="250px" MaxLength="12"></asp:TextBox>
                </td>
                
            </tr>
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
                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" Height="40px" Width="260px" BackColor=" #cc7a00" ForeColor="White" Font-Bold="True" Font-Size="Large" OnClick="btnsubmit_Click"></asp:Button>
                </td>
                
            </tr>
        </table>
        </center>
    </div>
    </form>
</body>
</html>
