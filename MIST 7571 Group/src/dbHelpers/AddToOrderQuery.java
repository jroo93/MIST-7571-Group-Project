package dbHelpers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Order;

public class AddToOrderQuery {

	public Connection connection;
	
	@SuppressWarnings("deprecation")
	public AddToOrderQuery(String dbName, String uname, String pwd) {
		
		String url = "jdbc:mysql://localhost:3306/" + dbName;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
			this.connection = DriverManager.getConnection(url, uname, pwd);
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public int doAdd(Order order) {
		String query = "insert into order (OrderNum, SKU, ItemName, Price, Qty, ItemTotal, OrderTotal) values(?, ?, ?, ?, ?, ?, ?)";
		
		int orderNum = 0;
		
		try {
			PreparedStatement ps = connection.prepareStatement(query);

			
			ps.setInt(1, order.getOrderNum());
			ps.setInt(2,  order.getSKU());
			ps.setString(3,  order.getItemName()); 
			ps.setDouble(4,  order.getPrice());
			ps.setInt(5,  order.getQty());
			ps.setDouble(6,  order.getItemTotal()); 
			ps.setDouble(7,  order.getOrderTotal()); 
			
			ps.executeUpdate();
			
			 ResultSet rs = ps.getGeneratedKeys();
             if(rs.next())
             {
                 orderNum = rs.getInt(1);
             }
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return orderNum;
	}
	
}
