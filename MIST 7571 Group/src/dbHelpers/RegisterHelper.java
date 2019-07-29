package dbHelpers;

import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import java.sql.Connection; 
import java.sql.PreparedStatement;

/**
 * Servlet implementation class RegisterHelper
 */
@WebServlet("/RegisterHelper")
public class RegisterHelper  {
	
	
	public Connection connection;   
	private PreparedStatement ps;

	
    public RegisterHelper() {
    	
    	try {
			//Set up connection
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/store", "root", "Tbillin$j1");
			
			//Create the preparedstatement(s)
			ps = conn.prepareStatement("INSERT INTO `store`.`login` (`FName`, `LName`, `Username`, `Password`, `Email`) VALUES (?, ?, ?, SHA1(?), ?);");
		} catch (Exception e) {
			System.out.println(e.getClass().getName() + ": " + e.getMessage());
		}
	}

    public void doRegister(String FName, String LName, String Username, String Password, String Email) {
		try {
			//Add parameters to the ?'s in the preparedstatement and execute
			ps.setString(1, FName); 
			ps.setString(2, LName);
			ps.setString(3, Username);
			ps.setString(4, Password);
			ps.setString(5, Email);
						
			ps.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println(e.getClass().getName() + ": " + e.getMessage());
		}

	}

}
