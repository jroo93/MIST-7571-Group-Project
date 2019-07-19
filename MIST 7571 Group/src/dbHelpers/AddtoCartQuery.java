/**
 * 
 */
package dbHelpers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Cart;

/**
 * @author tanea
 *
 */
public class AddtoCartQuery {
	
	public Connection connection;
	
	@SuppressWarnings("deprecation")
	public AddtoCartQuery(String dbName, String uname, String pwd) {
		
		String url = "jdbc:mysql://localhost:3306/" + dbName;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
			this.connection = DriverManager.getConnection(url, uname, pwd);
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void doAdd(Cart cart) {
		String query = "insert into cart (SKU, ItemName, Price, Qty) values(?, ?, ?, ?)";
		
		try {
			PreparedStatement ps = connection.prepareStatement(query);
			
			ps.setInt(1, cart.getSKU());
			ps.setString(2, cart.getItemName());		
			ps.setDouble(3, cart.getPrice());		
			ps.setInt(4, cart.getQty());

			
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
