<!DOCTYPE html>
<html>
<head>
    <title>user messages</title>

</head>
<%@ page import="java.sql.*" %>
<body bgcolor=lightblue>
    <%
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection(
            "jdbc:mysql://localhost:3305/userdb","root","root");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from cmember;");
    %><table border=1 align=center style="text-align:center">
      <thead>
          <tr>
 
             <th>NAME</th>
             <th>email</th>
             <th>phone</th>
             <th>message</th>
             <th>replymessage</th>
          </tr>
      </thead>
      <tbody>
        <%while(rs.next())
        {
            %>
            <tr>
               
                <td><%=rs.getString("uname") %></td>
                <td><%=rs.getString("email") %></td>
                <td><%=rs.getString("phone") %></td>
                
                 <td><%=rs.getString("address") %></td>
                 <td><a href="sendreply.jsp?uname=${rs.getUname()}">SendReply</a></td>
            </tr>
            <%}%>
           </tbody>
        </table><br>
    <%}
    catch(Exception e){
        out.print(e.getMessage());%><br><%
    }
    
    %>
</body>
</html>

<!--executeUpdate() mainupulation and executeQuery() for retriving-->