
<%@ page import="java.sql.*" %>
<%

String email=request.getParameter("email");
String password=request.getParameter("password");

try{
	
	Connection con=null;
	Class.forName("com.mysql.jdbc.Driver");
	System.out.println("Driver class loaded");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3305/userdb","root","root");
	System.out.println("connection established");
	PreparedStatement stmt=con.prepareStatement("select * from member");
	ResultSet rs=stmt.executeQuery();
	int f=0;
	while(rs.next()){
		if(rs.getString(3).equals(email) && rs.getString(2).equals(password)){
			f=1;
			out.println("Successful");
			
			
	
			
			session.setAttribute("email",email);
			session.setAttribute("password",password);
			response.sendRedirect("home.jsp");
			
			
			break;
		}
	}
	if(f==0){
	
		
		
		request.setAttribute("errorMessage", "!!!Invalid username or password!!!");
        RequestDispatcher rd = request.getRequestDispatcher("/Login.jsp");
        rd.forward(request, response); 
		
	}
	
}
catch(Exception e){
System.out.println(e);
}
%>
