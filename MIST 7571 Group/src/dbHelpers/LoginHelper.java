package dbHelpers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Login;

/**
 * This class is used to insert, retrieve, and update users in the user table.
 */
public class LoginHelper {
	
	/**
	 * Prepared SQL statement (combats: SQL Injections)
	 */
	private PreparedStatement verifyLoginStatement;
	
	/**
	 * Constructor which makes a connection
	 */
	public LoginHelper() {
		try {
			//Set up connection
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/store", "root", "Tbillin$j1");
			
			//Create the preparedstatement(s)
			verifyLoginStatement = conn.prepareStatement("select * from store.login where Username=? and Password=SHA1(?)");
		} catch (Exception e) {
			System.out.println(e.getClass().getName() + ": " + e.getMessage());
		}
	}
	
	/**
	 * Authenticates a user in the database.
	 * @param username  The username for the user.
	 * @param password  The password for the user.
	 * @return A user object if successful, null if unsuccessful.
	 */
		public Login doLogin(String username, String password) {
			Login login = null;
		
		try {
			//Add parameters to the ?'s in the preparedstatement and execute
			verifyLoginStatement.setString(1, username);
			verifyLoginStatement.setString(2, password);
			ResultSet rs = verifyLoginStatement.executeQuery();
			
			//if we've returned a row, turn that row into a new user object
			if (rs.next()) {
				login = new Login(rs.getString("Username"), rs.getString("Password"));
			}
		} catch (SQLException e) {
			System.out.println(e.getClass().getName() + ": " + e.getMessage());
		}
		
	return login;
	
	
	    /*public Login doLogin(String username, String password) {
		    	
	    	try {
				//Add parameters to the ?'s in the preparedstatement and execute
				verifyLoginStatement.setString(1, username);
				verifyLoginStatement.setString(2, password); 
				
				verifyLoginStatement.executeUpdate();
				
			} catch (SQLException e) {
				System.out.println(e.getClass().getName() + ": " + e.getMessage());
			}
			Login login = null;
			return login;*/
		
	
	}
}
