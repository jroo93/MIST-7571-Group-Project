package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbHelpers.RegisterHelper;
import model.PasswordUtil; 

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet(description = "Controller for adding a new user to the database", urlPatterns = { "/registerUser" })
public class RegisterServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private HttpSession session; 

    
	public RegisterServlet() {
        super(); 
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String username = request.getParameter("username");
		String password = request.getParameter("password"); 
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		
		PasswordUtil pu = new PasswordUtil(); 
		String encryptedPass = pu.encrypt(password);	
		
			
		// set up an RegisterQuery object
		RegisterHelper rh = new RegisterHelper();
		rh.doRegister(firstName, lastName, username, encryptedPass, email);  
		
		// pass execution control to the ViewCartServlet
		String url = "/home.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
	
	public void logout() {
		session.invalidate();
	}

}
