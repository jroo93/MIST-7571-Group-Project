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
public class ReadCatalogQuery {
	
	private Connection connection;
	private ResultSet results;
	
	@SuppressWarnings("deprecation")
	public ReadCatalogQuery(String dbName, String uname, String pwd) {
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


	public void doRead(int sku) {
		
		String query = "select * from catalog where SKU = " + Integer.toString(sku);
		
		try {
			PreparedStatement ps = this.connection.prepareStatement(query);
			this.results = ps.executeQuery();	
			this.results.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	public String getPrice() {
		double price = 0;
		try {
			//if (results.next())
				price = results.getDouble("Price");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return Double.toString(price);
	}
	
	public String getSKU() {
		int sku = 0;
		try {
			//if (results.next())
				sku = results.getInt("SKU");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return Integer.toString(sku);
	}
	
	public String getItemName() {
		String itemName = "";
		try {
			//if (results.next())
			itemName = results.getString("ItemName");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return itemName;
	}
	
	public String getItemDesc() {
		String itemDesc = "";
		try {
			//if (results.next())
			itemDesc = results.getString("ItemDesc");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return itemDesc;
	}
	
	public ResultSet doRead(String qry) {
		
		//String query = "select * from catalog";
		
		try {
			PreparedStatement ps = this.connection.prepareStatement(qry);
			this.results = ps.executeQuery();	
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return this.results;
	}
	public String getHTMLTable() {		
		String table = "";
		table += "<table border=1>";
		
		try {	
			Catalog catalog = new Catalog();
			catalog.setSKU(this.results.getString("SKU"));
			catalog.setItemName(this.results.getString("ItemName"));
			catalog.setItemDesc(this.results.getString("ItemDesc"));
			catalog.setPrice(this.results.getDouble("Price"));
			catalog.setInventory(this.results.getInt("Inventory"));
			}
		
			catch (SQLException e) {
				e.printStackTrace();
			}
		
		try {			
				while(this.results.next()) {
					Catalog catalog = new Catalog();
					catalog.setSKU(this.results.getString("SKU"));
					catalog.setItemName(this.results.getString("ItemName"));
					catalog.setItemDesc(this.results.getString("ItemDesc"));
					catalog.setPrice(this.results.getDouble("Price"));
					catalog.setInventory(this.results.getInt("Inventory"));
					
					table += "<tr>";
					table += "<td>";
					table += catalog.getSKU();
					table += "</td>";
					table += "<td>";
					table += catalog.getItemName();
					table += "</td>";    
					table += "<td>";
					table += catalog.getPrice();
					table += "</td>";  
					table += "<td>";
					table += catalog.getInventory(); 
					table += "</td>";
					table += "<td>";
						table += "<a href=update?SKU=" + catalog.getSKU() + ">update</a>";
					table += "</td>";
					table += "<td>";
						table += "<a href=delete?SKU=" + catalog.getSKU() + ">delete</a>";
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
