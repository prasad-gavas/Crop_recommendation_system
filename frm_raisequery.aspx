<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_raisequery.aspx.cs" Inherits="frm_raisequery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <link rel="stylesheet" type="text/css" href="tcal.css" />
	<script type="text/javascript" src="tcal.js"></script> 
</head><br /><br />
<body>
    <form id="form1" runat="server">
    <div>
        <center>
        <table style="width:30%;border-width:3px;border-style:solid;border-color:black" cellspacing="5px" cellpadding="5px">
            <tr style="height:50px">
                <td colspan="2" style="text-align:center;background-color: #cc7a00">
                    <asp:Label ID="lblquery" runat="server" Text="Raise Query" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
                </tr>
             <tr>
                <td colspan="2" style="border:0px;font-size:20px;text-align:left">
                     <a href="frm_userdashboard.aspx" style="color:black">Back</a>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblname" runat="server" Text="Name" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtname" runat="server" placeholder="Enter Name" Style="padding-left:5px" Height="30px" Width="250px"></asp:TextBox>
                </td>
            </tr>
              <tr>
                <td>
                    <asp:Label ID="lblQ" runat="server" Text="Query" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtquery" runat="server" placeholder="Enter Query" Style="padding-left:5px" Height="75px" TextMode="MultiLine" Width="250px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbldate" runat="server" Text="Date" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdate" runat="server" Class="tcal" placeholder="Enter Date" Style="padding-left:5px" Height="30px" Width="230px" ></asp:TextBox>
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
