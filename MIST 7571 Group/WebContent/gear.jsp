<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dbHelpers.ReadCatalogQuery" %>
<%@ page import="java.sql.ResultSet" %>
 
 
<% 

	
	int gearSKU = 670217;
	ReadCatalogQuery qry = new ReadCatalogQuery("store", "root","Tbillin$j1");
	qry.doRead(gearSKU);
	String price = qry.getPrice();
	String sku = qry.getSKU();
	String itemName = qry.getItemName();
	String itemDesc = qry.getItemDesc();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Samsung Gear S2</title>
</head>
<body>
<form name=addToCart action=AddToCart method=get >
	<table class="pop">
		<tr>
			<td colspan="2">
				<strong><%=itemName%></strong>
			</td>
		</tr>
		<tr> 
			<td class="popDesc">
				<img src="images/gear.jpg" height="200" width="225" />
			</td>
			<td rowspan="2">
				<br><strong>Product Description</strong>
				<br><%=itemName%>: <%=itemDesc%>
				<br>
				<br>SKU: <%=sku%>
			</td>
		</tr>
		</table>
		<table>	
		<tr>	
			<td class="popPrice">
				<br>Price: $<%=price%>				
			</td>
			<td>
				<br>Qty: <input name="Qty" id="Qty" size="2"/>
			</td>
			<td colspan="2"> 
				<br><input type=submit name=submit value="Add to Cart" />
				<input type="hidden" name="SKU" id="SKU" value="<%=sku%>"/>
				<input type="hidden" name="ItemName" id="ItemName" value=<%=itemName%>/>
				<input type="hidden" name="Price" id="Price" value="<%=price%>"/>
			</td>
		</tr>
	</table>
</form>			
</body>
</html>