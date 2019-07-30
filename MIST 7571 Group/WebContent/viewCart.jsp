<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="dbHelpers.ReadCartQuery"%>
    
<% 
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

<table>
	<tr>
		<td>
<form name="checkout" action="checkout1.html" >
	<table class="pop" border='1'>
		<tr>
			<td colspan="4">		
				<h1>Your Cart</h1> <img src="images/cart.gif" align="right" height="100" width="100" /> 
			</td>
			
		</tr>
		<tr>
			<td colspan="4">
				<%= qry.getCartTable() %>
			</td>
		</tr>
		<tr></tr>
		<tr>
			<td>
				<input type="submit" value="Proceed to Checkout" onclick="location.href 'checkout1.html'"><br>
			</td> 
			<td>
			
			<td>
				<input type="submit" value="Continue Shopping" onclick="parent.window.close()"><br>
			</td> 

		</tr>
	</table>
</form>
</td>
</tr>
</table>


</body>
</html>