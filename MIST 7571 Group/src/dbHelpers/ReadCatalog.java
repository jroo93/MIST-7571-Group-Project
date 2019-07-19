/**
 * 
 */
package dbHelpers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Catalog; 

/**
 * @author tanea
 *
 */
public class ReadCatalog {
	
	private Connection connection;
	private ResultSet results;
	
	private Catalog catalog = new Catalog();
	private String SKU;
	
	@SuppressWarnings("deprecation")
	public ReadCatalog(String dbName, String uname, String pwd, String SKU) {
		
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
		String query = "select * from store.catalog where SKU = ?";
		
		try {
			PreparedStatement ps = connection.prepareStatement(query);
			
			ps.setString(1, this.SKU);
			
			this.results = ps.executeQuery();
			
			this.results.next();
			
			catalog.setSKU(this.results.getString("SKU"));
			catalog.setItemName(this.results.getString("ItemName")); 
			catalog.setItemDesc(this.results.getString("ItemDesc")); 
			catalog.setPrice(this.results.getDouble("Price"));
			catalog.setInventory(this.results.getInt("Inventory"));
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
	
	public Catalog getCatalog() {
		return this.catalog;
	}
}
