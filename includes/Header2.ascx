<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Header2.ascx.cs" Inherits="includes_Header2" %>
<div id="header">
    <div id="logo">
        <div id="logo_text">
            <!-- class="logo_colour", allows you to change the colour of the text -->
            <h1>
                <a href="#">Driver Drowsiness<span class="logo_colour"></span></a></h1>
            <h2>
            </h2>
        </div>
    </div>
    <div id="menubar">
        <ul id="menu">
            <%--<%if (user_type_id == 1)  %>
                <%{ %>--%>
            <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
            <li class="selected"><a href="Home.aspx">Home</a></li>
            <li><a href="User_Info.aspx">User Info</a></li>
            <li><a href="Show_Pilgrim.aspx">Show Object</a></li>
            <li><a href="User_Login.aspx?msg=logout">Logout</a></li>
            <%--<%else %>
                    <%{ %>
                    <li class="selected"><a href="Home.aspx">Home</a></li>
                    <li><a href="Manage_Employees.aspx">Manage Employees</a></li>
                    <li><a href="Manage_Rooms.aspx">Manage Rooms</a></li>
                    <li><a href="View_Locations.aspx">View Locations</a></li>
                    <li><a href="Login.aspx?msg=logout">Logout</a></li>
                    <%} %>--%>
        </ul>
    </div>
</div>
