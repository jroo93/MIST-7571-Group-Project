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
public class ReadCartQuery {
	
	private Connection connection;
	private ResultSet results;
	
	@SuppressWarnings("deprecation")
	public ReadCartQuery(String dbName, String uname, String pwd) {
		String url = "jdbc:mysql://localhost:3306/" + dbName;
		
		// set up the driver
		try {
			Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
			this.connection = DriverManager.getConnection(url, uname, pwd);
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}

	public void doRead() {
		
		String query = "select * from cart";
		
		try {
			PreparedStatement ps = this.connection.prepareStatement(query);
			this.results = ps.executeQuery();	
			//this.results.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public String getCartTable() {		
		String table = "";
		table += "<table width='50%' border='1'>";
		table += "<tr>";
		table += "<td>";
		table += "<strong>SKU</strong>";
		table += "</td>";
		table += "<td>";
		table += "<strong>Item Name</strong>";
		table += "</td>";    
		table += "<td>";
		table += "<strong>Item Price</strong>";
		table += "</td>";  
		table += "<td>";
		table += "<strong>Qty</strong>"; 
		table += "</td>";
		table += "<td>";
		table += "<strong>Subtotal</strong>"; 
		table += "</td>";
		table += "<td>";
		table += "<strong>Order Total</strong>"; 
		table += "</td>";
		table += "</tr>";
		
		Cart cart = new Cart();
		

		
		try {			
			  while(this.results.next()) {
				  cart = new Cart();
					cart.setSKU(this.results.getInt("SKU"));
					cart.setItemName(this.results.getString("ItemName"));
					cart.setPrice(this.results.getDouble("Price"));
					cart.setQty(this.results.getInt("Qty"));
				

				table += "<tr>";
				table += "<td>";
				table += cart.getSKU();
				table += "</td>";
				table += "<td>";
				table += cart.getItemName();
				table += "</td>";    
				table += "<td>";
				table += cart.getPrice();
				table += "</td>";  
				table += "<td>";
				table += cart.getQty(); 
				table += "</td>";
				

				table += "</tr>";
					
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		table += "</table>";
		return table;
	}
}
