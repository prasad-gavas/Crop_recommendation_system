<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_userdashboard.aspx.cs" Inherits="frm_userdashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head><br /><br />
<body>
    <form id="form1" runat="server">
    <div>
     <center>
        <table style="width:50%;border-style:solid;border-width:3px;border-color:black;" cellspacing="5px" cellpadding="5px">
            <tr>
                <td colspan="4" style="background-color: #cc7a00;text-align:center;height:30px;border-radius:5px">
                    <asp:Label ID="lbldashboard" runat="server" Text="Dashboard" Font-Bold="True" Font-Size="XX-Large" ForeColor="White"></asp:Label>
                </td>
            </tr>
             <tr>
                <td colspan="3" style="border:0px;font-size:18px;text-align:left">
                     <asp:Label ID="lbluser" runat="server"  Style="text-align:left"></asp:Label>
                </td>
                <td  style="border:0px;font-size:20px;text-align:right">
                    <a href="frm_userlogin.aspx" style="color:black;">Log Out</a>
                </td>
            </tr>
            <tr>
                <td style="text-align:center">
                    <a href="frm_editprofile.aspx"><asp:Image ID="Image1" runat="server" ImageUrl="~/Images/user1.png" Height="110px" Width="110px"></asp:Image></a><br /><br />
                    <asp:Label ID="Label1" runat="server" Text="Edit Profile" Font-Bold="True"></asp:Label>
                </td>
                <td style="text-align:center">
                    <a href="frm_queriesnresponse.aspx"><asp:Image ID="Image3" runat="server" ImageUrl="~/Images/user3.png" Height="110px" Width="110px"></asp:Image></a><br /><br />
                    <asp:Label ID="Label3" runat="server" Text="Check Queries & Response" Font-Bold="True"></asp:Label>
                </td>
                <td style="text-align:center">
                    <a href="frm_raisequery.aspx"><asp:Image ID="Image2" runat="server" ImageUrl="~/Images/user2.png" Height="110px" Width="110px"></asp:Image></a><br /><br />
                    <asp:Label ID="Label2" runat="server" Text="Raise Query" Font-Bold="True"></asp:Label>
                </td>
                 <td style="text-align:center">
                    <a href="frm_checkresponse.aspx"><asp:Image ID="Image4" runat="server" ImageUrl="~/Images/user4.png" Height="110px" Width="110px"></asp:Image></a><br /><br />
                    <asp:Label ID="Label4" runat="server" Text="Check Response" Font-Bold="True"></asp:Label>
                     <br />
                </td>
            </tr>
            <tr>
                 <%--<td style="text-align:center">
                    <a href="frm_rainfall.aspx"><asp:Image ID="Image5" runat="server" ImageUrl="~/Images/user5.png" Height="110px" Width="110px"></asp:Image></a><br /><br />
                    <asp:Label ID="Label5" runat="server" Text="Check Rainfall" Font-Bold="True"></asp:Label>
                </td>
                  <td style="text-align:center">
                    <a href="frm_suggestion.aspx"><asp:Image ID="Image6" runat="server" ImageUrl="~/Images/user6.png" Height="110px" Width="110px"></asp:Image></a><br /><br />
                    <asp:Label ID="Label6" runat="server" Text="Crop Suggestion" Font-Bold="True"></asp:Label>
                </td>--%>
               <%--  <td style="text-align:center">
                     <br />
                </td>--%>
                <td style="text-align:center">
                    <a href="predict.aspx"><asp:Image ID="Image8" runat="server" ImageUrl="~/Images/user7.png" Height="110px" Width="110px"></asp:Image></a><br /><br />
                    <asp:Label ID="Label8" runat="server" Text="Prediction" Font-Bold="True"></asp:Label>
                </td>
                <td style="text-align:center">
                    <br /><br />
                </td>
            </tr>
        </table>
    </center>
    </div>
    </form>
</body>
</html>

