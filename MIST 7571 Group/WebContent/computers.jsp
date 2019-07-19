<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Computers &amp; Accessories</title>
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
		<td class="header"><h1>Computers &amp; Accessories</h1></td>
		<td class="right">
		<a href="viewCart.jsp" target="popup" onclick="window.open('viewCart.jsp','popup','width=600,height=600,scrollbars=no,resizable=no'); 
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
			<a href="home.jsp">Home</a> > <a href="electronics.jsp">Electronics</a> > Computers &amp; Accessories
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
					<td class="item"><img src="images/mouse.jpg" height="200" width="200" />
						<br><a href="mouse.jsp" target="popup" onclick="window.open('mouse.jsp','popup','width=600,height=350,scrollbars=no,resizable=no'); 
						return false;">Gaming Mouse Wired</a>
						<br>$18.99
					</td>
					<td class="space"></td>
					<td class="item"><img src="images/tower.jpg" height="200" width="250" />
						<br><a href="tower.jsp" target="popup" onclick="window.open('tower.jsp','popup','width=600,height=350,scrollbars=no,resizable=no'); 
						return false;">Digital Storm Vanquish 7</a>
						<br>$1399.00
					</td>
					<td class="space"></td>
					<td class="item"><img src="images/keyboard.jpg" height="200" width="250" />
						<br><a href="keyboard.jsp" target="popup" onclick="window.open('keyboard.jsp','popup','width=600,height=350,scrollbars=no,resizable=no'); 
						return false;">Single Hand Gaming Keyboard</a>
						<br>$89.99
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