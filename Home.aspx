<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register TagName="header" TagPrefix="uc1" Src="~/includes/Header.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Soil Prediction</title>
    <meta name="description" content="website description" />
    <meta name="keywords" content="website keywords, website keywords" />
    <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
    <link href="style/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .styleT
        {
            width: 398px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="main">
        <div>
            <uc1:header ID="header" runat="server" />
        </div>
        <div id="content_header">
        </div>
        <div id="site_content">
            
            <div id="content">
               
                <h1>
                    Welcome
                </h1>
                <p>
                  Prediction of soil attributes and soil classes in digital soil mapping relies on finding relationships between soil and the predictor variables of soil-forming factors and processes. The predictor variables can be remotely or proximally sensed images of soil, landscape, parent material or climatic factors.</p>
                <div>
                    <h3>
                        &nbsp;</h3>
                    <div style="background-color: wheat; width: 402px; height: 202px; float: left">
                        <p style="font-family: serif; font-size: large">
                            <asp:Image ID="Image1" runat="server" Height="241px" ImageUrl="~/Images/soil.jpg" Width="422px" />
                        </p>
                    </div>
                    <h3 style="margin-left: 450px; margin-top: -45px">
                        Contact
                    </h3>
                    <div style="background-color: wheat; width: 400px; height: 200px; margin-left: 450px;">
                        <table class="styleT">
                            <tr>
                                <td>
                                    <p style="font-family: serif; font-size: large; padding: 0px 0px">
                                        <span>Address: Mumbai </span></p>
                                    <p style="font-family: serif; font-size: large; height: 17px;">
                                        <span>Phone: 022 2416 1126<o:p></o:p></span></p>
                                    <p style="font-family: serif; font-size: large; padding: 0px 0px">
                                        Email :ppatil@gmail.com</p></td>
                            </tr>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    
                                
                            <tr>
                                <td>
                                    <p style="font-family: serif; font-size: large; padding: 0px 0px">
                                       </p>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
               
            </div>
                                    
        </div>
        <div id="content_footer">
        </div>
        <div id="footer">
           
        </div>
    </div>
    </form>
</body>
</html>
