<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Home Page</title>
	<link rel="stylesheet" type="text/css" href="shopping.css" /> 
</head>
<body>

<h1></h1>
<table class="header1">
	<tr>
		<td>Hello ${username.login}! <a href="login?logout=true">Logout</a></td>
	</tr>
</table>

<form name=viewCart action=ViewCart method=get >
<table class="header2">
	<tr>		
		<td class="right"><input type="image" src="images/cart.jpg" height="50" width="100" />
		</td>
	</tr>
</table>
</form>

<table class="home">
	<tr>

		<td>
			<table class="home">
				<tr>
					<td colspan="2"><a href="clearance.jsp"><img src="images/clearance.png" height="275" width="700" alt="Clearance Sale"/></a></td>
				</tr>
				<tr class="thumbnail">
					<td><img src="images/fashion.jpg" height="350" width="500" alt="Clothing" /></td>
					<td><img src="images/electronics.jpg" height="350" width="500" alt="Electronics" /></td>
				</tr>
				<tr class="thumbnail">
					<td><a href="clothing.jsp"><img src="images/cshop.png" height="50" width="150" alt="Clothing" /></a></td>
					<td><a href="electronics.jsp"><img src="images/eshop.png" height="50" width="150" alt="Electronics"/></a></td>
				</tr>
			</table>
		</td>
	</tr>
</table> 	
</body>
</html>