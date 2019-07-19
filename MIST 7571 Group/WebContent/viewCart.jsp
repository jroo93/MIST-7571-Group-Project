<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="dbHelpers.ReadCartQuery"%>
    
<%
	//String table = (String) request.getAttribute("table");
	ReadCartQuery qry = new ReadCartQuery("store", "root","Tbillin$j1");
	qry.doRead();
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Your Cart</title>
	<link rel="stylesheet" type="text/css" href="shopping.css" /> 
</head>
<body>

<form name="checkout" action="checkout.jsp">
	<table class="pop">
		<tr>
			<td colspan="4">		
				<h1>Your Cart</h1> <img src="images/cart.gif" align="right" height="100" width="100" /> 
			</td>
			
		</tr>
		<tr>
			<td colspan="4">
				<%= qry.getHTMLTable() %>
			</td>
		</tr>
		<tr></tr>
		<tr>
			<td>
				<input type="submit" value="Proceed to Checkout"><br>
			</td> 
						 
		</tr>
	</table>
</form>
</body>
</html>