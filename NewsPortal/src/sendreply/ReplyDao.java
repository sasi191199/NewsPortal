package sendreply;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import contactpack.Contactmember;

public class ReplyDao {
	private String dburl="jdbc:mysql://localhost:3305/userdb";
	  private String dbuname="root";
	  private String dbpassword="root";
	  private String dbdriver="com.mysql.jdbc.Driver";
	  public void loadDriver(String dbDriver)
	  {
		  try {
			getClass().forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	  }
	  public Connection getConnection()
	  {
		  Connection con=null;
		  try {
			  con=DriverManager.getConnection(dburl,dbuname,dbpassword);
			  
		  }
		  catch(SQLException e)
		  {
			  e.printStackTrace();
		  }
		  return con;
	  }
			  public String insert(Replymember rmember)
			  {
				  loadDriver(dbdriver);
				  Connection con= getConnection();
				 
				  String result="data entered successfully";
				  String sql="insert into userdb.rmember values(?,?)";
				  try
				  {
				  PreparedStatement ps=con.prepareStatement(sql);
				  ps.setString(1,rmember.getUname());
				 
				  ps.setString(2,rmember.getMessage());
				  
				  ps.executeUpdate();
				  }catch(SQLException e) {
					  e.printStackTrace();
					  result="data not entered";
				  }
				return result;
	}
}
