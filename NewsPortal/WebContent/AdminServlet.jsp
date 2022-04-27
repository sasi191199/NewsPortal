
<%@ page import="java.sql.*" %>
<%

String uname=request.getParameter("username");
String password=request.getParameter("password");

try{
	
	Connection con=null;
	Class.forName("com.mysql.jdbc.Driver");
	System.out.println("Driver class loaded");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3305/admindb","root","root");
	System.out.println("connection established");
	PreparedStatement stmt=con.prepareStatement("select * from member1");
	ResultSet rs=stmt.executeQuery();
	int f=0;
	while(rs.next()){
		if(rs.getString(1).equals(uname) && rs.getString(2).equals(password)){
			f=1;
			out.println("Successful");
			
			
	
			
			session.setAttribute("uname",uname);
			session.setAttribute("password",password);
			response.sendRedirect("adminhome.jsp");
			
			
			break;
		}
	}
	if(f==0){
	
		
		
		request.setAttribute("errorMessage", "!!!Invalid username or password!!!");
        RequestDispatcher rd = request.getRequestDispatcher("/adminlogin.jsp");
        rd.forward(request, response); 
		
	}
	
}
catch(Exception e){
System.out.println(e);
}
%>
