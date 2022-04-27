package com.login.dao;
 
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import static java.lang.System.out;
import com.login.bean.LoginBean;
import com.login.util.DBConnection;
 
public class LoginDao {
 
public String authenticateUser(LoginBean loginBean)
{
    String userName = loginBean.getUserName();
    String password = loginBean.getPassword();
 
    Connection con = null;
    Statement statement = null;
    ResultSet resultSet = null;
 
    String userNameDB = "";
    String passwordDB = "";
    
 
    try
    {
        con = DBConnection.createConnection();
        statement = con.createStatement();
        resultSet = statement.executeQuery("select email,password from member");
 
        while(resultSet.next())
        {
            userNameDB = resultSet.getString("email");
            passwordDB = resultSet.getString("password");
            
 
            if(userName.equals(userNameDB) && password.equals(passwordDB) )
            out.print("welcome user");
            else
            {
            	
            }
            
            
        }
    }
    catch(SQLException e)
    {
        e.printStackTrace();
    }
    return "Invalid user credentials";
}
}