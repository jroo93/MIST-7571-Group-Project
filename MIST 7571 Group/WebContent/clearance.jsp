<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clearance</title>
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
		<td class="header"><h1>Clearance</h1></td>
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
			<a href="home.jsp">Home</a> > Clearance
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
						<a href="electronics.jsp">Electronics</a><br>	
						<br>
						<label>Clearance</label><br>			
					</td>
				</tr>
			</table>
		</td>
		<td>
			<table class="items">
				<tr>
					<td class="space"></td>
					<td class="item"><img src="images/chrislou.jpg" height="200" width="250" />
						<br><a href="chrislou.jsp" target="popup" onclick="window.open('chrislou.jsp','popup','width=600,height=350,scrollbars=no,resizable=no'); 
						return false;">Dandelion Spikes Flat</a>
						<br><del>$1295.00</del>  $749.50
					</td>
					<td class="space"></td>
					<td class="item"><img src="images/headphones.jpg" height="200" width="150" />
						<br><a href="headphones.jsp" target="popup" onclick="window.open('headphones.jsp','popup','width=600,height=350,scrollbars=no,resizable=no'); 
						return false;">Beats Wireless Headphones</a>
						<br><del>$299.99</del>  $199.99
					</td>
					<td class="space"></td>
					<td class="item"><img src="images/onesie.jpg" height="200" width="250" />
						<br><a href="onesie.jsp" target="popup" onclick="window.open('onesie.jsp','popup','width=600,height=350,scrollbars=no,resizable=no'); 
						return false;">Georgia Bulldogs Newborn &amp; Infant Bodysuit</a>
						<br><del>$21.99</del>  $15.39
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