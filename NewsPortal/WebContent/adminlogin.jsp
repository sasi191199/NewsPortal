<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
<link rel="stylesheet" href="/registration/admin.css" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
</head>
<body>
<div class="main">
     
   
        <form name="form" action="AdminServlet.jsp" method="post">
        
         <tr class="err">
         <td><span style="color:red"><%
    if(null!=request.getAttribute("errorMessage"))
    {
        out.println(request.getAttribute("errorMessage"));
    }
%></span></td></tr>
        <table align="center">
        <tr>
        <td><p class="sign" align="center">Admin Login</p></td>
        </tr>
        <tr>
        
        <td><input class="un" type="text" name="username" placeholder="Username" required /></td>
        </tr>
        <tr>
       
        <td><input class="pass" type="text" name="password" placeholder="Password" required/></td>
        </tr>
        <tr>
        <td><span style="color:red"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></span></td>
        </tr>
        <tr>
        <td></td>
        <td><input class="submit" type="submit" value="Login"></input></td>
       
        
        </tr>
        </table>
        </form>
        
        </div>
</body>
</html>