<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%!ResultSet rs; 
	%>
<%


try{
	
	Connection con=null;
	Class.forName("com.mysql.jdbc.Driver");
	System.out.println("Driver class loaded");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3305/userdb","root","root");
	System.out.println("connection established");
	PreparedStatement stmt=con.prepareStatement("select message from rmember");
	 rs=stmt.executeQuery();
	System.out.println(rs.next());
	String email=(String)session.getAttribute("email");
	System.out.println(email);
}


catch(Exception e){
System.out.println(e);
}
%>