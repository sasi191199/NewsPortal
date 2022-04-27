<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page import="java.sql.*" %>
<body bgcolor=lightblue>
    <%
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection(
            "jdbc:mysql://localhost:3305/userdb","root","root");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from fmember;");
    %><table border=1 align=center style="text-align:center">
      <thead>
          <tr>
 
             <th>NAME</th>
             <th>email</th>
             <th>purpose</th>
             <th>message</th>
             <th>replymessage</th>
          </tr>
      </thead>
      <tbody>
        <%while(rs.next())
        {
            %>
            <tr>
               
                <td><%=rs.getString("contact_nom") %></td>
                <td><%=rs.getString("contact_email") %></td>
                <td><%=rs.getString("contact_sujet") %></td>
                
                 <td><%=rs.getString("contact_message") %></td>
                 <td><a href="sendreply.jsp?contact_nom=${rs.getContact_nom()}">SendReply</a></td>
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