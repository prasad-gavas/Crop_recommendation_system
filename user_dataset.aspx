<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_dataset.aspx.cs" Inherits="frm_changepassword" %>

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
                     <a href="frm_dashboard.aspx" style="color:black">Back</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<a href="user_data2.aspx" style="color:black">Add Soil Details</a></td>
                 
            </tr>
            <tr style="height:40px">
                <td>
                    <asp:Label ID="lbloldpassword" runat="server" Text="Select File" Font-Bold="True" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" Height="30px" Width="220px" Style="padding-left:5px" runat="server" Visible="False" />
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
                    Accuracy</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#33CC33"></asp:Label>
                </td>
            </tr>
            <tr style="height:40px">
                <td>
                    <asp:Button ID="btnchangepassword0" runat="server" Text="Accuracy" Height="35px" Width="230px" BackColor="#006600" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="btnchangepassword0_Click" />
            
                </td>
                <td>
                    <asp:Button ID="btnchangepassword" runat="server" Text="Submit" Height="35px" Width="230px" BackColor="#006600" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="btnchangepassword_Click" Visible="False"/>
            
                </td>
            </tr>
           <tr style="height:40px">
                <td colspan="2">
                   <asp:GridView ID="dgvLearningSource" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Visible="False">
                       <Columns>
                           <asp:BoundField DataField="fertility" HeaderText="fertility" SortExpression="fertility" />
                           <asp:BoundField DataField="N" HeaderText="N" SortExpression="N" />
                           <asp:BoundField DataField="P" HeaderText="P" SortExpression="P" />
                           <asp:BoundField DataField="K" HeaderText="K" SortExpression="K" />
                           <asp:BoundField DataField="ph" HeaderText="ph" SortExpression="ph" />
                           <asp:BoundField DataField="ec" HeaderText="ec" SortExpression="ec" />
                       </Columns>
                    </asp:GridView>
                
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Soil_FinalConnectionString %>" SelectCommand="SELECT * FROM [dataset]"></asp:SqlDataSource>
                
                </td>
              
            </tr>
        </table>
    </center>
        </div>
    </form>
</body>
</html>
