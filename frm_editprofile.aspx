<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_editprofile.aspx.cs" Inherits="frm_editprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head><br /><br />
<body>
    <form id="form1" runat="server">
    <div>
     <center>
        <table style="width:60%;border-width:3px;border-style:solid;border-color:black" cellspacing="5px" cellpadding="5px">
            <tr style="height:50px">
                <td colspan="2" style="text-align:center;background-color: #cc7a00">
                    <asp:Label ID="lblprofile" runat="server" Text="Edit Profile" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
             </tr>
             <tr>
                <td colspan="2" style="border:0px;font-size:20px;text-align:left">
                     <a href="frm_userdashboard.aspx" style="color:black">Back</a>
                </td>
            </tr>
            <tr>
                <td style="text-align:center">
                    <asp:GridView ID="GridView1" Width="100%" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" AutoGenerateColumns="False"
                       DataKeyNames="farmer_id" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit">
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#cc7a00" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#cc7a00" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />

                        <Columns>
                             <asp:TemplateField>
                                 <ItemTemplate >
                                     <asp:LinkButton ID="LB1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                                 </ItemTemplate>
                                 <EditItemTemplate>
                                      <asp:LinkButton ID="LB3" runat="server" CommandName="Update">Update</asp:LinkButton>
                                      <asp:LinkButton ID="LB4" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>

                                 </EditItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="Name">
                                <ItemTemplate >
                                    <asp:Label ID="lblname" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtname" runat="server" Width="80px"  Text='<%# Eval("name") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="Date Of Birth">
                                <ItemTemplate >
                                    <asp:Label ID="lblbirth" runat="server" Text='<%# Eval("birthdate") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtbirth" runat="server" Width="80px"  Text='<%# Eval("birthdate") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="Mobile No">
                                <ItemTemplate >
                                    <asp:Label ID="lblmob" runat="server" Text='<%# Eval("mobile_no") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtmob" runat="server" Width="80px"  Text='<%# Eval("mobile_no") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Aadhar No">
                                <ItemTemplate >
                                    <asp:Label ID="lblaadhar" runat="server" Text='<%# Eval("aadhar") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtaadhar" runat="server" Width="80px"  Text='<%# Eval("aadhar") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="District">
                                <ItemTemplate >
                                    <asp:Label ID="lbldistrict" runat="server" Text='<%# Eval("district") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtdistrict" runat="server" Width="80px"  Text='<%# Eval("district") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                             <%--<asp:TemplateField HeaderText="Village">
                                <ItemTemplate >
                                    <asp:Label ID="lblvillage" runat="server" Text='<%# Eval("village") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtvillage" runat="server" Width="80px"  Text='<%# Eval("village") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>--%>
                             <asp:TemplateField HeaderText="Location">
                                <ItemTemplate >
                                    <asp:Label ID="lbllocation" runat="server" Text='<%# Eval("location") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtlocation" runat="server" Width="80px"  Text='<%# Eval("location") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            
                             <asp:TemplateField HeaderText="Pincode">
                                <ItemTemplate >
                                    <asp:Label ID="lblpincode" runat="server" Text='<%# Eval("pincode") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtpincode" runat="server" Width="80px"  Text='<%# Eval("pincode") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            
                             <asp:TemplateField HeaderText="Soil Type">
                                <ItemTemplate >
                                    <asp:Label ID="lblsoil" runat="server" Text='<%# Eval("soil_Types") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtsoil" runat="server" Width="80px"  Text='<%# Eval("soil_Types") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                          <asp:TemplateField HeaderText="Area">
                                <ItemTemplate >
                                    <asp:Label ID="lblarea" runat="server" Text='<%# Eval("area") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtarea" runat="server" Width="80px"  Text='<%# Eval("area") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                           
                            
                            

                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            </table>
         </center>
           
    </div>
    </form>
</body>
</html>
