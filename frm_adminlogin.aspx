<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_adminlogin.aspx.cs" Inherits="frm_adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head><br /><br /><br />
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        <table style="width:50%;border-width:3px;border-style:solid;border-color:black" border="1">
            <tr style="height:50px">
                <td colspan="2" style="text-align:center;background-color:#006600">
                    <asp:Label ID="lbladmin" runat="server" Text="Administration Login" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
                
            </tr>
            <tr style="height:250px">
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/farmer.jpg"></asp:Image>
                </td>
                <td>
                     <table style=" width:30%;" cellspacing="8px" cellpadding="8px">
                         <tr>
                             <td colspan="2" style="text-align:right">
                                 <a href="Home.aspx" style="color:black;font-size:large;font-weight:bold">Home Page</a>
                             </td>
                         </tr>
                          <tr style="height:20px">
                               <td >
                                    <asp:Label ID="lblusername" runat="server" Text="Username" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>

                               </td>
                              <td>
                                   <asp:TextBox ID="txtusername" runat="server" placeholder="Enter Username" Height="30px" Width="260px" Style="padding-left:5px"></asp:TextBox>
                              </td>

                          </tr>
                          <tr style="height:20px">
                               <td style="">
                                    <asp:Label ID="lblpassword" runat="server" Text="Password" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>

                               </td>
                               <td >
                                     <asp:TextBox ID="txtpassword" runat="server" placeholder="Enter password" Height="30px" Width="260px"  Style="padding-left:5px" TextMode="Password"></asp:TextBox>

                               </td>

                          </tr>
                           <tr style="height:20px">
                                <td > &nbsp;</td>
                               <td >
                                   <asp:Button ID="btnlogin" runat="server" Text="Login" Height="36px" Width="270px" BackColor="#006600" Font-Bold="True" Font-Size="Large" ForeColor="White" OnClick="btnlogin_Click"></asp:Button>  

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
