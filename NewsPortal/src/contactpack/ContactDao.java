package contactpack;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;



public class ContactDao {
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
			  public String insert(Contactmember cmember)
			  {
				  loadDriver(dbdriver);
				  Connection con= getConnection();
				 
				  String result="data entered successfully";
				  String sql="insert into userdb.cmember values(?,?,?,?)";
				  try
				  {
				  PreparedStatement ps=con.prepareStatement(sql);
				  ps.setString(1,cmember.getUname());
				 
				  ps.setString(2,cmember.getEmail());
				  ps.setString(3,cmember.getPhone());
				  ps.setString(4,cmember.getAddress());
				  ps.executeUpdate();
				  }catch(SQLException e) {
					  e.printStackTrace();
					  result="data not entered";
				  }
				return result;
	}
	}


