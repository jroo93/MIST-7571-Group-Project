/**
 * 
 */
package dbHelpers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Cart; 

/**
 * @author tanea
 *
 */
public class ReadCart {
	
	private Connection connection;
	private ResultSet results;
	
	private Cart cart = new Cart();
	private String SKU;
	
	@SuppressWarnings("deprecation")
	public ReadCart(String dbName, String uname, String pwd, String SKU) {
		
		String url = "jdbc:mysql://localhost:3306/" + dbName;
		this.SKU = SKU;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
			this.connection = DriverManager.getConnection(url, uname, pwd);
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 				
	}
	
	public void doRead() {
		String query = "select * from store.cart where SKU = ?";
		
		try {
			PreparedStatement ps = connection.prepareStatement(query);
			
			ps.setString(1, this.SKU);
			
			this.results = ps.executeQuery();
			
			this.results.next();
			
			cart.setSKU(this.results.getInt("SKU"));
			cart.setItemName(this.results.getString("ItemName")); 
			cart.setPrice(this.results.getDouble("Price"));
			cart.setQty(this.results.getInt("Qty"));
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
	
	public Cart getCart() {
		return this.cart;
	}
}
