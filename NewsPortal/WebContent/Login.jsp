<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html><head>
<link rel="stylesheet" href="NewFile1.css" type="text/css">
</head>

	<body>
	<form name="form" action="LoginServlet.jsp" method="post">
				<tr class="err">
					<td><span style="color:red"><%
    if(null!=request.getAttribute("errorMessage"))
    {
        out.println(request.getAttribute("errorMessage"));
    }
%></span>
<div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="">Register</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="">Admin</a>
      </li>


<div class="container">
  <div class="left">
    <div class="header">
      <h2 class="animation a1">Welcome Back</h2>
      <h4 class="animation a2">Log in to your account using email and password</h4>
    </div>
    <div class="form">
      <input type="email" name="email" class="form-field animation a3" placeholder="Email Address">
      <input type="password" name="password" class="form-field animation a4" placeholder="Password">
      <p class="animation a5"><a href="#">Forgot Password</a></p>
      <button class="animation a6">LOGIN</button>
    </div>
  </div>
  <div class="right"></div>
</div>

</ul></div></form></body></html>