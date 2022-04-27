<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
<link rel="stylesheet" href="NewFile.css" type="text/css">
</head><body>
<form action="Register" method="post">
<div class="topnav">
  <a class="active" href="homepage.jsp">Home</a>
  <a href="">Admin</a>
   <a href="MemberRegister.jsp">Register</a>
   <a href="Login.jsp">Login</a>
</div>


<div class="container">
  <div class="left">
    <div class="header">
      <h2 class="animation a1">Welcome Back</h2>
      <h4 class="animation a2">Register in to your account by giving your information</h4>
    </div>
    <div class="form">
      <input type="text" name="uname" class="form-field animation a3" placeholder="User Name">
      <input type="text" name="email" class="form-field animation a3" placeholder="Email Address">
      <input type="password" name="password" class="form-field animation a4" placeholder="Password">
      <input type="text" name="phone" class="form-field animation a4" placeholder="Mobile Number">
      <p class="animation a5"><a href="#">Forgot Password</a></p>
      <button class="animation a6">REGISTER</button>
    </div>
  </div>
  <div class="right"></div>
</div>
</form>
</body></html>