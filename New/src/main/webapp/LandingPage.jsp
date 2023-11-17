<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<link href="LandingPage.css" rel="stylesheet">
</head>
<body>

<%
    if (session.getAttribute("user") == null) {
%>
    <p style="color: white; font-size: 40px;">You are not logged in</p>
    <a href="Loggi.jsp" style="color: white; font-size: 18px;">Please Login</a>
<%
    } else {
%>
    <p style="color: white; font-size: 40px;">Hi!!! USER: <%=session.getAttribute("user") %></p>
    <a href="LoginPage.jsp" style="color: white; font-size: 18px;">Log out</a>
<%
    }
%>

 <div class = "nav-1">
      <div class = "title">MASM</div>
      
    </div>

    <div class = "nav-2">
      <div class = "options">Welcome </div>
    </div>

    <div class = "searchbox">


<div class = "bigtext">Flights</div>


      <div class = "options"> 
        <button type="a">Round trip</button>
        <button type="a">Travelers</button>
        <button type="a">Economy</button>
      </div>


      <div class = "search"> 


 <form action="/">
    <br>
        
<input type="text" id="Departure" name="Departure" placeholder="Departure">
    <br>

    <br>
    <input type="text" id="Destination" name="Destination" placeholder="Destination">
    <br>

    <br>
</form> 
      </div>




    </div>


</body>
</html>