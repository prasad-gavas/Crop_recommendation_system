<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_response.aspx.cs" Inherits="frm_response" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head><br />
<body>
    <form id="form1" runat="server">
    <div>
         <center>
            <table style="border: solid;border-width:3px; width:40%;border-color:black" cellspacing="5px" cellpadding="5px">
            <tr style="height:50px">
                <td colspan="2" style="text-align:center;background-color:#006600;">
                    <asp:Label ID="lblresponse" runat="server" Text="Give Response" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
             </tr>
             <tr>
                <td colspan="2" style="border:0px;font-size:20px;text-align:left">
                     <a href="frm_dashboard.aspx" style="color:black">Back</a>
                </td>
            </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblres" runat="server" Text="Give Response" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtresponse" runat="server" Height="100px" TextMode="MultiLine" Width="300px" Style="padding:5px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnsubmit" runat="server" Text="Submit" Height="35px" Width="130px" BackColor="#006600" ForeColor="White" Font-Bold="True" Font-Size="Large" OnClick="btnsubmit_Click"></asp:Button>&nbsp;
                        <asp:Button ID="btnclose" runat="server" onclientclick="window.close();" BackColor="#006600"  Font-Bold="True" Font-Size="Large" ForeColor="White"  Text="Close" Height="35px" Width="130px" />

                    </td>
                </tr>
                
             </table>
         </center>
    
    </div>
    </form>
</body>
</html>
