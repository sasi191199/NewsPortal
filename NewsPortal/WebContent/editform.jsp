<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Edit Form</title>  
</head>  
<body>  
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.User"%>  
  
<%  
String id=request.getParameter("id");  
User u=UserDao.getRecordById(Integer.parseInt(id));  
%>  
  
<h1>Edit Form</h1>  
<form action="edituser.jsp" method="post">  
<input type="hidden" name="id" value="<%=u.getId() %>"/>  
<table>  
<tr><td>Name:</td><td>  
<input type="text" name="uname" value="<%= u.getUname()%>"/></td></tr>  
<tr><td>Password:</td><td>  
<input type="password" name="password" value="<%= u.getPassword()%>"/></td></tr>  
<tr><td>Email:</td><td>  
<input type="text" name="email" value="<%= u.getEmail()%>"/></td></tr>  
<tr><td>Phone:</td><td>  

<input type="text" name="phone" value="<%= u.getPhone()%>"/></td></tr> 
  
</select>  
</td></tr>  
<tr><td colspan="2"><input type="submit" value="Edit User"/></td></tr>  
</table>  
</form>  
  
</body>  
</html>  