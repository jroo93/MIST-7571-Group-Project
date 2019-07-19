<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TV &amp; Video</title>
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
		<td class="header"><h1>TV &amp; Video</h1></td>
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
			<a href="home.jsp">Home</a> > <a href="electronics.jsp">Electronics</a> > TV &amp; Video
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
					<td class="item"><img src="images/stv.jpg" height="200" width="300" />
						<br><a href="stv.jpg" target="popup" onclick="window.open('stv.jsp','popup','width=600,height=350,scrollbars=no,resizable=no'); 
						return false;">Samsung 85" LED - Q900 Series</a>
						<br>$4999.99
					</td>
					<td class="space"></td>
					<td class="item"><img src="images/bluray.jpg" height="200" width="250" />
						<br><a href="bluray.jsp" target="popup" onclick="window.open('bluray.jsp','popup','width=600,height=350,scrollbars=no,resizable=no'); 
						return false;">Samsung 4K Ultra HD Blu-ray Player</a>
						<br>$229.99
					</td>
					<td class="space"></td>
					<td class="item"><img src="images/projector.jpg" height="200" width="225" />
						<br><a href="projector.jsp" target="popup" onclick="window.open('projector.jsp','popup','width=600,height=350,scrollbars=no,resizable=no'); 
						return false;">Epson VS250 SVGA</a>
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