/**
 * 
 */
package dbHelpers;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Order; 

/**
 * @author tanea
 *
 */
public class ReadOrder {
	
	private Connection connection;
	private ResultSet results;
	
	private Order order = new Order();
	private String SKU;
	
	@SuppressWarnings("deprecation")
	public ReadOrder(String dbName, String uname, String pwd, String SKU) {
		
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
		String query = "select * from store.order where SKU = ?";
		
		try {
			PreparedStatement ps = connection.prepareStatement(query);
			
			ps.setString(1, this.SKU);
			
			this.results = ps.executeQuery();
			
			this.results.next();
			
			order.setOrderNum(this.results.getInt("OrderNum"));
			order.setSKU(this.results.getInt("SKU"));
			order.setItemName(this.results.getString("ItemName")); 
			order.setPrice(this.results.getDouble("Price"));
			order.setQty(this.results.getInt("Qty"));
			order.setItemTotal(this.results.getDouble("ItemTotal"));
			order.setOrderTotal(this.results.getInt("OrderTotal"));
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
	
	public Order getOrder() {
		return this.order;
	}
}
