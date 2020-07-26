<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_dashboard.aspx.cs" Inherits="frm_dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 176px;
        }
    </style>
</head><br /><br />
<body>
    <form id="form1" runat="server">
    <div>
     <center>
        <table style="width:50%;border-style:solid;border-width:3px;border-color:black;" cellspacing="5px" cellpadding="5px" border="1">
            <tr>
                <td colspan="4" style="background-color:#006600;text-align:center;height:30px;border-radius:5px">
                    <asp:Label ID="lbldashboard" runat="server" Text="Dashboard" Font-Bold="True" Font-Size="XX-Large" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="border:0px;font-size:20px;text-align:left">
                     <asp:Label ID="lbluser" runat="server" Style="text-align:left"></asp:Label>
                </td>
                <td colspan="2" style="border:0px;font-size:20px;text-align:right">
                    <a href="frm_adminlogin.aspx" style="color:black;">Log Out</a>
                </td>
            </tr>
            <tr>
                <td  style="border:0px;text-align:center;">
                   <a href="frm_changepassword.aspx"><asp:Image ID="Image5" runat="server" ImageUrl="~/Images/1.png" Height="115px" Width="115px"></asp:Image></a><br />
                   <asp:Label ID="Label5" runat="server" Text="Change Password" Font-Bold="True"></asp:Label>
                </td>
                 <td style="border:0px;text-align:center;">
                   <a href="frm_farmers.aspx"><asp:Image ID="Image6" runat="server" ImageUrl="~/Images/2.png" Height="115px" Width="115px"></asp:Image></a><br />
                   <asp:Label ID="lblfarmers" runat="server" Text="Add Farmers"  Font-Bold="True"></asp:Label>
                </td>
                <td style="border:0px;text-align:center">
                    <a href="frm_displayfarmers.aspx"><asp:Image ID="Image1" runat="server" ImageUrl="~/Images/3.png" Height="100px" Width="100px"></asp:Image></a><br /><br />
                    <asp:Label ID="Label1" runat="server" Text="Check Farmers List" Font-Bold="True"></asp:Label>
                </td>
                <td style="border:0px;text-align:center">
                    <a href="frm_checkquery.aspx"><asp:Image ID="Image2" runat="server" ImageUrl="~/Images/4.png" Height="100px" Width="100px"></asp:Image></a><br /><br />
                    <asp:Label ID="Label2" runat="server" Text="Check Query" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                
                 <%--<td style="border:0px;text-align:center" class="auto-style1">
                    <a href="frm_soiltypes.aspx"><asp:Image ID="Image3" runat="server" ImageUrl="~/Images/5.png" Height="100px" Width="100px"></asp:Image></a><br /><br />
                    <asp:Label ID="Label3" runat="server" Text="Soil Samples" Font-Bold="True"></asp:Label>
                </td>
                <td  style="border:0px;text-align:center;" class="auto-style1">
                   <a href="frm_crops.aspx"><asp:Image ID="Image4" runat="server" ImageUrl="~/Images/6.png" Height="100px" Width="100px"></asp:Image></a><br /><br/>
                   <asp:Label ID="Label4" runat="server" Text="Check Crop Details"  Font-Bold="True"></asp:Label>
                </td>--%>
                <%--<td  style="border:0px;text-align:center;" class="auto-style1">
                   <a href="frm_weather.aspx"><asp:Image ID="Image8" runat="server" ImageUrl="~/Images/7.png" Height="100px" Width="100px"></asp:Image></a><br /><br/>
                   <asp:Label ID="Label7" runat="server" Text="Check Weather"  Font-Bold="True"></asp:Label>
                </td>--%>
                <td  style="border:0px;text-align:center;" class="auto-style1">
                   <a href="upload_dataset.aspx"><asp:Image ID="Image7" runat="server" ImageUrl="~/Images/6.png" Height="100px" Width="100px"></asp:Image></a><br /><br/>
                   <asp:Label ID="Label6" runat="server" Text="Nutrient Dataset"  Font-Bold="True"></asp:Label>
                </td>

             
                
                 <td style="border:0px;text-align:center">
                    <a href="upload_dataset_rainfall.aspx"><asp:Image ID="Image9" runat="server" ImageUrl="~/Images/7.png" Height="100px" Width="100px"></asp:Image></a><br /><br />
                    <asp:Label ID="Label8" runat="server" Text="Upload Rainfall Dataset" Font-Bold="True"></asp:Label>
                </td>
               <td  style="border:0px;text-align:center;">
                   <a href="rainwisecrop_form.aspx"><asp:Image ID="Image10" runat="server" ImageUrl="~/Images/5.png" Height="100px" Width="100px"></asp:Image></a><br /><br/>
                   <asp:Label ID="Label9" runat="server" Text="Upload Rainwise Crop"  Font-Bold="True"></asp:Label>
                </td>
               
                 <td  style="border:0px;text-align:center;">
                   <a href="user_dataset.aspx"><asp:Image ID="Image11" runat="server" ImageUrl="~/Images/2.png" Height="100px" Width="100px"></asp:Image></a><br /><br/>
                   <asp:Label ID="Label10" runat="server" Text="User Dataset"  Font-Bold="True"></asp:Label>
                      </tr>  
                        <tr>
                </td>
                <td  style="border:0px;text-align:center;">
                   <a href="fertilizer_dataset.aspx"><asp:Image ID="Image12" runat="server" ImageUrl="~/Images/5.png" Height="100px" Width="100px"></asp:Image></a><br /><br/>
                   <asp:Label ID="Label11" runat="server" Text="Fertilizer Dataset"  Font-Bold="True"></asp:Label>
                </td>

             </tr>     
        </table>
    </center>
    </div>
    </form>
</body>
</html>
