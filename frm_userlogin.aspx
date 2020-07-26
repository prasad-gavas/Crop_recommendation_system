<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_userlogin.aspx.cs" Inherits="frm_userlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="tcal.css" />
	<script type="text/javascript" src="tcal.js"></script> 
</head><br /><br /><br />
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        <table style="width:50%;border-width:3px;border-style:solid;border-color:black" border="1">
            <tr style="height:50px">
                <td colspan="2" style="text-align:center;background-color: #cc7a00">
                    <asp:Label ID="lbluser" runat="server" Text="User Login" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
                
            </tr>
            <tr style="height:250px;" >
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/img.jpg"></asp:Image>
                </td>
                <td>
                     <table style=" width:40%;"cellspacing="8px" cellpadding="8px">
                         <tr>
                             <td colspan="2" style="text-align:right">
                                 <a href="Home.aspx" style="color:black;font-size:large;font-weight:bold">Home Page</a>
                             </td>
                         </tr>
                          <tr style="height:20px">
                               <td >
                                    <asp:Label ID="lblmobile" runat="server" Text="Mobile/Aadhar No" Font-Bold="True" Font-Size="Medium" ForeColor="Black" Width="130px"></asp:Label>

                               </td>
                              <td>
                                   <asp:TextBox ID="txtmobile" runat="server" placeholder="Enter Mobile/Aadhar No" Height="30px" Width="240px" Style="padding-left:5px"></asp:TextBox>
                              </td>

                          </tr>
                          <tr style="height:20px">
                               <td style="">
                                    <asp:Label ID="lblbirth" runat="server" Text="Date Of Birth" Font-Bold="True" Font-Size="Medium" ForeColor="Black" Width="120px"></asp:Label>

                               </td>
                               <td >
                                     <asp:TextBox ID="txtbirth" runat="server" class="tcal" placeholder="Enter Date of Birth" Height="30px" Width="220px"  Style="padding-left:5px"></asp:TextBox>

                               </td>

                          </tr>
                           <tr style="height:20px">
                                <td > &nbsp;</td>
                               <td >
                                   <asp:Button ID="btnlogin" runat="server" Text="Login" Height="36px" Width="250px" BackColor=" #cc7a00" Font-Bold="True" Font-Size="Large" ForeColor="White" OnClick="btnlogin_Click"></asp:Button>  

                               </td>
                           </tr>
                          <tr>
                           <td colspan="2" style="border:0px;font-size:15px;text-align:right">
                              <a href="frmRegistration.aspx" style="color:black">User Registration</a>
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
