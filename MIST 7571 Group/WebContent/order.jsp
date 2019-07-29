<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="dbHelpers.ReadOrderQuery"%>
    
<% 
	ReadOrderQuery qry = new ReadOrderQuery("store", "root","Tbillin$j1");
	qry.doRead();
%>


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
		<td>Hello ${FName.login}! <a href="login?logout=true">Logout</a></td>
	</tr>
</table>


<table>
	<tr>
		<td width=35%></td>		
		<td>		
			<img src="images/thankYou.png" height="397" width="560" /> 
		</td>
		<td width=35%></td>		
	</tr>

	<tr></tr>

	</table>
</body>
</html>
