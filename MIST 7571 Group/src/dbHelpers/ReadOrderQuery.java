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
public class ReadOrderQuery {
	
	private Connection connection;
	private ResultSet results;
	
	@SuppressWarnings("deprecation")
	public ReadOrderQuery(String dbName, String uname, String pwd) {
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
		
		String query = "select * from order";
		
		try {
			PreparedStatement ps = this.connection.prepareStatement(query);
			this.results = ps.executeQuery();	
			//this.results.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public String getOrderTable() {		
		String table = "";
		table += "<table width=100%>";
		Order order = new Order();
		
		try {			
			  while(this.results.next()) {
				  order = new Order();
				  order.setSKU(this.results.getInt("SKU"));
				  order.setItemName(this.results.getString("ItemName"));
				  order.setPrice(this.results.getDouble("Price"));
				  order.setQty(this.results.getInt("Qty"));
				
				table += "<tr>";
				table += "<td>";
				table += order.getSKU();
				table += "</td>";
				table += "<td>";
				table += order.getItemName();
				table += "</td>";    
				table += "<td>";
				table += order.getPrice();
				table += "</td>";  
				table += "<td>";
				table += order.getQty(); 
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
