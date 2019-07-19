<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cell Phones &amp; Accessories</title>
	<link rel="stylesheet" type="text/css" href="shopping.css" /> 
</head>
<body>

<h1></h1>
<table class="header1">
	<tr>
		<td>Hello ${user.username}! <a href="Login?logout=true">Logout</a></td>
	</tr>
</table>
<table class="header2">
	<tr>
		<td class="header"><h1>Cell Phones &amp; Accessories</h1></td>
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
			<a href="home.jsp">Home</a> > <a href="electronics.jsp">Electronics</a> > Cell Phones &amp; Accessories
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
						<a href="clothing.jsp">Clothing</a><br>
						<br>
						<label>Electronics</label><br>
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
					<td class="item"><img src="images/sdeca.jpg" height="200" width="100" />
						<br><a href="sdeca.jsp" target="popup" onclick="window.open('sdeca.jsp','popup','width=600,height=350,scrollbars=no,resizable=no'); 
						return false;">Samsung Galaxy S10</a>
						<br>$999.99
					</td>
					<td class="space"></td>
					<td class="item"><img src="images/buds.png" height="200" width="200" />
						<br><a href="buds.jsp" target="popup" onclick="window.open('buds.jsp','popup','width=600,height=350,scrollbars=no,resizable=no'); 
						return false;">Samsung Galaxy Buds</a>
						<br>$129.99
					</td>
					<td class="space"></td>
					<td class="item"><img src="images/gear.jpg" height="200" width="225" />
						<br><a href="gear.jsp" target="popup" onclick="window.open('gear.jsp','popup','width=600,height=350,scrollbars=no,resizable=no'); 
						return false;">Samsung Gear S2</a>
						<br>$150.00
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