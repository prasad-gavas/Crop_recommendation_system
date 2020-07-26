<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fertilizer_dataset.aspx.cs" Inherits="frm_changepassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head><br /><br /><br />
<body>
    <form id="form1" runat="server">
    <div>
        <center>
         <table style="border: solid;border-width:3px; width:32%;border-color:black" cellspacing="5px" cellpadding="5px">
            <tr style="height:50px">
                <td colspan="2" style="text-align:center;background-color:#006600;">
                    <asp:Label ID="lblpassword" runat="server" Text="Upload Dataset" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
            </tr>
             <tr>
                <td colspan="2" style="border:0px;font-size:20px;text-align:left">
                     <a href="frm_dashboard.aspx" style="color:black">Back</a>
                </td>
            </tr>
            <tr style="height:40px">
                <td>
                    <asp:Label ID="lbloldpassword" runat="server" Text="Select File" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" Height="30px" Width="220px" Style="padding-left:5px" runat="server" />
                </td>
            </tr>
            <tr style="height:40px">
                <td>
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
            </tr>
            <tr style="height:40px">
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr style="height:40px">
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnchangepassword" runat="server" Text="Submit" Height="35px" Width="230px" BackColor="#006600" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="btnchangepassword_Click"/>
            
                </td>
            </tr>
        </table>
    </center>
        </div>
    </form>
</body>
</html>
