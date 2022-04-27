package feedbackpack;
import javax.servlet.RequestDispatcher;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class FeedbackDao {
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
			  public String insert(Feedbackpojo fmember)
			  {
				  loadDriver(dbdriver);
				  Connection con= getConnection();
				 
				  String result="data entered successfully";
				  String sql="insert into userdb.fmember values(?,?,?,?)";
				  try
				  {
				  PreparedStatement ps=con.prepareStatement(sql);
				  ps.setString(1,fmember.getContact_nom());
				 
				  ps.setString(2,fmember.getContact_email());
				  ps.setString(3,fmember.getContact_sujet());
				  ps.setString(4,fmember.getContact_message());
				  ps.executeUpdate();
				  }catch(SQLException e) {
					  e.printStackTrace();
					  result="data not entered";
				  }
				
				return result;
	}
}
