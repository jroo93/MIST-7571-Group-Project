<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Men's</title>
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
		<td class="header"><h1>Men's</h1></td>
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
			<a href="home.jsp">Home</a> > <a href="clothing.jsp">Clothing</a> > Men's
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
					<td class="item"><img src="images/tie.png" height="200" width="200" />
						<br><a href="tie.jsp" target="popup" onclick="window.open('tie.jsp','popup','width=600,height=350,scrollbars=no,resizable=no'); 
						return false;">JF J.Ferrar Checked Tie</a>
						<br>$29.99
					</td>
					<td class="space"></td>
					<td class="item"><img src="images/jacket.png" height="200" width="200" />
						<br><a href="jacket.jsp" target="popup" onclick="window.open('jacket.jsp','popup','width=600,height=350,scrollbars=no,resizable=no'); 
						return false;">Puma Lightweight Windbreaker</a>
						<br>$47.99
					</td>
					<td class="space"></td>
					<td class="item"><img src="images/suit.jpg" height="200" width="200" />
						<br><a href="suit.jsp" target="popup" onclick="window.open('suit.jsp','popup','width=600,height=350,scrollbars=no,resizable=no'); 
						return false;">Mens Micro-Check Wool Two-Piece Suit</a>
						<br>$299.99
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