/**
 * 
 */
package dbHelpers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * @author tanea
 *
 */
public class DeleteCartQuery {
	
	private Connection connection; 
	
	@SuppressWarnings("deprecation")
	public DeleteCartQuery(String dbName, String uname, String pwd ) {
		
		String url = "jdbc:mysql://localhost:3306/" + dbName;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
			this.connection = DriverManager.getConnection(url, uname, pwd);
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void doDelete(String SKU) {
		
		// set up a String to hold our query
		String query = "delete from cart where SKU = ?";
		
		// create a preparedStatement using our query string
		try {
			PreparedStatement ps = connection.prepareStatement(query);

		// fill in the preparedstatement
		ps.setString(1, SKU);
			
		// execute the query
		ps.executeUpdate();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
