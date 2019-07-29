package controllers;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbHelpers.AddToOrderQuery;
import model.Order;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet(description = "Controller for adding a new product to the database", urlPatterns = { "/AddToOrder" })
public class AddToOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddToOrderServlet() {
        super();
        // TODO Auto-generated constructor stub
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
	
		int OrderNum = Integer.parseInt(request.getParameter("OrderNum"));
		int SKU = Integer.parseInt(request.getParameter("SKU"));
		String ItemName = request.getParameter("ItemName"); 
		double Price = Double.parseDouble(request.getParameter("Price"));
		int Qty = Integer.parseInt(request.getParameter("Qty"));
		double ItemTotal = Double.parseDouble(request.getParameter("ItemTotal"));
		double OrderTotal = Double.parseDouble(request.getParameter("OrderTotal"));
		
		Order order = new Order(OrderNum, SKU, ItemName, Price, Qty, ItemTotal, OrderTotal);
			
		// set up an addQuery object
		AddToOrderQuery aq = new AddToOrderQuery("store","root","Tbillin$j1");
			
		// pass the product to addQuery to add to the database
		aq.doAdd(order);
		
		// pass execution control to the ViewOrderServlet
		String url = "/ViewOrder";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
