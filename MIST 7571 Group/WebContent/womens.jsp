<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Women's</title>
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
		<td class="header"><h1>Women's</h1></td>
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
			<a href="home.jsp">Home</a> > <a href="clothing.jsp">Clothing</a> > Women's
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
					<td class="item"><img src="images/top.jpg" height="200" width="200" />
						<br><a href="top.jpg" target="popup" onclick="window.open('top.jsp','popup','width=600,height=350,scrollbars=no,resizable=no'); 
						return false;">Dream Top</a>
						<br>$39.99
					</td>
					<td class="space"></td>
					<td class="item"><img src="images/jumpsuit.jpg" height="200" width="200" />
						<br><a href="jumpsuit.jsp" target="popup" onclick="window.open('jumpsuit.jsp','popup','width=600,height=350,scrollbars=no,resizable=no'); 
						return false;">Sequin Star Jumpsuit</a>
						<br>$89.99
					</td>
					<td class="space"></td>
					<td class="item"><img src="images/dress.jpg" height="200" width="200" />
						<br><a href="dress.jsp" target="popup" onclick="window.open('dress.jsp','popup','width=600,height=350,scrollbars=no,resizable=no'); 
						return false;">Ready For My Close Up Dress</a>
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