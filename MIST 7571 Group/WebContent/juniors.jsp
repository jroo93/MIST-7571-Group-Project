<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Juniors</title>
	<link rel="stylesheet" type="text/css" href="shopping.css" /> 
</head>
<body>

<h1></h1>
<table class="header1">
	<tr>
		<td>Hello ${user.username}! <a href="login?logout=true">Logout</a></td>
	</tr>
</table>
<table class="header2">
	<tr>
		<td class="header"><h1>Juniors</h1></td>
		<td class="right"><a href="viewCart.jsp" target="popup" onclick="window.open('viewCart.jsp','popup','width=600,height=600,scrollbars=no,resizable=no'); 
						return false;"><img src="images/cart.jpg" height="50" width="100" /></a></td>
	</tr>
</table>

<br>
<br>
<br>
<table class="crumb">
	<tr>
		<td></td>
		<td>
			<a href="home.jsp">Home</a> > <a href="clothing.jsp">Clothing</a> > Juniors
		</td>
		<td></td>	
	</tr>
</table>
<br>
<br>
<br>
<table class="items">
	<tr>
		<td>
			<table class="items">
				<tr> 
					<td rowspan="2">
						<strong>Departments</strong> <br>
						<br>
						<label>Clothing</label><br>
						<br>
						<a href="electronics.jsp">Electronics</a><br>
						<br>  
						<a href="clearance.jsp">Clearance</a><br>				
					</td>
				</tr>
			</table>
		</td>
		<td>
			<table class="items">
				<tr>
					<td class="space"></td>
					<td class="item"><img src="images/bts_shirt.jpg" height="200" width="200" />
						<br><a href="bts_shirt.jpg" target="popup" onclick="window.open('bts_shirt.jsp','popup','width=600,height=350,scrollbars=no,resizable=no'); 
						return false;">BTS - Map of the Soul Persona T-shirt</a>
						<br>$19.99
					</td>
					<td class="space"></td>
					<td class="item"><img src="images/bts_set.jpg" height="200" width="200" />
						<br><a href="bts_set.jsp" target="popup" onclick="window.open('bts_set.jsp','popup','width=600,height=350,scrollbars=no,resizable=no'); 
						return false;">BTS - Map of the Soul Persona Outfit</a>
						<br>$74.99
					</td>
					<td class="space"></td>
					<td class="item"><img src="images/bts_hoodie.jpg" height="200" width="200" />
						<br><a href="bts_hoodie.jsp" target="popup" onclick="window.open('bts_hoodie.jsp','popup','width=600,height=350,scrollbars=no,resizable=no'); 
						return false;">BTS - Map of the Soul Persona Sweatshirt</a>
						<br>$49.99
					</td>
					<td class="space"></td>
				</tr>
				
			</table>
		</td>
	</tr>


	<tr></tr>

</table>
</body>
</html>