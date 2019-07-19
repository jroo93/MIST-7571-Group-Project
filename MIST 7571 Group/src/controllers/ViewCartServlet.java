package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbHelpers.ReadCartQuery;

/**
 * Servlet implementation class ViewCartServlet
 */
@WebServlet(
		description = "Controller for reading the cart table", 
		urlPatterns = { "/ViewCart"})
public class ViewCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Create a ReadCartQuery helper object
		ReadCartQuery rq = new ReadCartQuery("store", "root", "Tbillin$j1");
		
		// Get the html table from the ReadCartQuery object
		rq.doRead();
		
		String table = rq.getHTMLTable();
		
		// pass execution control to read.jsp along with the table
		request.setAttribute("table", table);
		String url = "/viewCart.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
