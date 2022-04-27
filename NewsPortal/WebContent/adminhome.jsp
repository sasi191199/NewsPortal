<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 1500px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;} 
    }
  </style>
</head>
<body>
<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav">
      <h4>Admin's Home</h4>
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#section1">Home</a></li>
        <li><a href="adminuserdata.jsp">Manage Users</a></li>
        <li><a href="userreply.jsp">User Messages</a></li>
        <li><a href="usersfeedback.jsp">Users Feedback</a></li>
        <li><a href="#section3">Photos</a></li>
      </ul><br>
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search Blog..">
        <span class="input-group-btn">
          <button class="btn btn-default" type="button">
            <span class="glyphicon glyphicon-search"></span>
          </button>
        </span>
      </div>
    </div>
<%


try{
	
	Connection con=null;
	Class.forName("com.mysql.jdbc.Driver");
	System.out.println("Driver class loaded");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3305/userdb","root","root");
	System.out.println("connection established");
	PreparedStatement stmt=con.prepareStatement("select contact_message from fmember");
	 rs=stmt.executeQuery();
	System.out.println(rs.next());
}

catch(Exception e){
System.out.println(e);
}
%>
    <div class="col-sm-9">
      <h4><small>RECENT COMMENTS</small></h4>
      <hr>
      <%while(rs.next()){ %>
      <h2>I Love THIS</h2>
      <h5><span class="glyphicon glyphicon-time"></span> Comment by akill, Sep 27, 2015.</h5>
      <h5><span class="label label-danger">Food</span> <span class="label label-primary">Ipsum</span></h5><br>
      <%@ page import="java.sql.*" %>
      <%!ResultSet rs; 
      %>

      
      <p><%=rs.getString(1)%></p>
      <%} %>
     
    
            </div>
          </div>
        </div>
      </div>
    
  

<footer class="container-fluid">
  <p>Footer Text</p>
</footer>


</body>
</html>