package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbHelpers.AddtoCartQuery;
import model.Cart;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet(description = "Controller for adding a new product to the database", urlPatterns = { "/AddToCart" })
public class AddToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddToCartServlet() {
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
	
		int SKU = Integer.parseInt(request.getParameter("SKU"));
		String ItemName = request.getParameter("ItemName"); 
		double Price = Double.parseDouble(request.getParameter("Price"));
		int Qty = Integer.parseInt(request.getParameter("Qty"));
		
		Cart cart = new Cart(SKU, ItemName, Price, Qty);
		/*
		cart.setSKU(SKU);
		cart.setItemName(ItemName); 	
		cart.setPrice(Price);
		cart.setQty(Qty);
		*/
		
		// set up an addQuery object
		AddtoCartQuery aq = new AddtoCartQuery("store","root","Tbillin$j1");
			
		// pass the product to addQuery to add to the database
		aq.doAdd(cart);
		
		// pass execution control to the ViewCartServlet
		String url = "/ViewCart";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
