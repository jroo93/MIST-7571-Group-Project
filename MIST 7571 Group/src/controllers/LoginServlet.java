package controllers;

import dbHelpers.LoginHelper;

import java.io.IOException; 

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Login;
import model.PasswordUtil;

/**
 * Servlet implementation class LoginServlet
 * A controller for handling user authentication and login
 */
@WebServlet(description = "A controller for handling user logins", urlPatterns = { "/login" })
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private HttpSession session; 
	private String url;
	private int loginAttempts;

	/**
	 * Servlet constructor
	 */
	public LoginServlet() {
		super();
	}

	/**
	 * Process GET requests/responses (logout)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//Login has clicked the logout link
		session = request.getSession();

		//check to make sure we've clicked link
		if(request.getParameter("logout") !=null){

			//logout and redirect to frontpage
			logout();
			url="index.jsp";
		}

		
		//forward our request along
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

	/**
	 * Process POST requests/responses (login)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//pull the fields from the form
		String username = request.getParameter("uname");
		String password = request.getParameter("pword");

		//encrypt the password to check against what's stored in DB
		PasswordUtil pu = new PasswordUtil(); 
		String encryptedPass = pu.encrypt(password);		
		System.out.println(password);
		System.out.println(encryptedPass);
		
		//create a user helper class to make database calls, and call authenticate user method
		LoginHelper lh = new LoginHelper(); 
		Login login = lh.doLogin(username, encryptedPass);
		
		//get our current session
		session = request.getSession();

		//get the number of logins
		if(session.getAttribute("loginAttempts") == null){
			loginAttempts = 0;
		}
		
		//exceeded logins
		if(loginAttempts > 2){
			String errorMessage = "Your have exceeded the maximum number of login attempts";
			request.setAttribute("errorMessage", errorMessage);
			url = "index.jsp";
		}else{	//proceed

						
			//we've found a user that matches the credentials
			if(login != null){
				//invalidate current session, then get new session for our user (combats: session hijacking)
				session.invalidate();
				session=request.getSession(true);
				session.setAttribute("username", login);
				url="home.jsp";
			}
			
			
			
			// user doesn't exist, redirect to previous page and show error
			else{
				String errorMessage = "The Username and/or Password is incorrect<br>You have "+ (3-(loginAttempts) + " login attempts remaining");
				request.setAttribute("errorMessage", errorMessage);

				//track login attempts (combats: brute force attacks)
				session.setAttribute("loginAttempts", loginAttempts++);
				url = "index.jsp";
			}
		}
		//forward our request along
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

	/**
	 * Logs the user out
	 */
	public void logout() {
		session.invalidate();
	}
}
