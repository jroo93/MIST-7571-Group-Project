package model;
 

/**
 * Java representation of the Login table in the database
 * @author Team 2
 *
 */
public class Login {
	
	private String username;
	private String password;	
 
 
	public Login(String username, String password) {

		this.username = username;
		this.password = password; 	
	}


	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}


	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
		if(username == "" ) {
			var num = (int)(Math.random() * 10001);
			username = "user" + Integer.toString(num);	
		}
	}


	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}


	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

}
