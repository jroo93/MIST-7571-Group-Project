<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="dbHelpers.ReadCartQuery"%>
    
<%
	//String table = (String) request.getAttribute("table");
	ReadCartQuery qry = new ReadCartQuery("store", "root","Tbillin$j1");
	qry.doRead();
	
	
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Checkout</title>
	<link rel="stylesheet" type="text/css" href="shopping.css" /> 
</head>
<body>

<form name="order" action="order.jsp">
	<table class="pop">
		<tr>
			<td colspan="5">
			<img src="images/payment.jpg" class="center" height="100" width="150" />		
				<h2>Order Checkout</h2>  
			</td>
		</tr>
		
	</table>	
	<table border='1'>	
		<tr>
			<td colspan="5"> 
				<h3>Shipping Information</h3> 
			</td>
		</tr>
	</table>
	<table>
		<tr>
			<td class="checkout">
				First Name: 
			</td>
			<td>
				<input type="text" id="fName" />
			</td>		
			<td>
			</td>
			<td>
				Last Name: 
			</td>
			<td>
				<input type="text" id="lName" />
			</td>
		</tr>
		<tr>
			<td>
				Address Line1: 
			</td>
			<td>
				<input type="text" id="add1" />
			</td>		
			<tr>
			
			<tr>
			<td>
				Address Line2: 
			</td>
			<td>
				<input type="text" id="add2" />
			</td>		
		</tr>
	</table>
	<table border='1' class="checkout">
		<tr>
			<td>
				City: 
			</td>
			<td>
				<input type="text" id="city" />
			</td>
			<td>
			</td>		
			<td>
				State: 
			</td>
			<td>
				<select>	
					<option value="AL">AL</option>
					<option value="AK">AK</option>
					<option value="AZ">AZ</option>
					<option value="AR">AR</option>
					<option value="CA">CA</option>
					<option value="CO">CO</option>
					<option value="CT">CT</option>
					<option value="DE">DE</option>
					<option value="FL">FL</option>
					<option value="GA">GA</option>
					<option value="HI">HI</option>
					<option value="ID">ID</option>
					<option value="IL">IL</option>
					<option value="IN">IN</option>
					<option value="IA">IA</option>
					<option value="KS">KS</option>
					<option value="KY">KY</option>
					<option value="LA">LA</option>
					<option value="ME">ME</option>
					<option value="MD">MD</option>
					<option value="MA">MA</option>
					<option value="MI">MI</option>
					<option value="MN">MN</option>
					<option value="MS">MS</option>
					<option value="MO">MO</option>
					<option value="MT">MT</option>
					<option value="NE">NE</option>
					<option value="NV">NV</option>
					<option value="NH">NH</option>
					<option value="NJ">NJ</option>
					<option value="NM">NM</option>
					<option value="NY">NY</option>
					<option value="NC">NC</option>
					<option value="ND">ND</option>
					<option value="OH">OH</option>
					<option value="OK">OK</option>
					<option value="OR">OR</option>
					<option value="PA">PA</option>
					<option value="RI">RI</option>
					<option value="SC">SC</option>
					<option value="SD">SD</option>
					<option value="TN">TN</option>
					<option value="TX">TX</option>
					<option value="UT">UT</option>
					<option value="VT">VT</option>
					<option value="VA">VA</option>
					<option value="WA">WA</option>
					<option value="WV">WV</option>
					<option value="WI">WI</option>
					<option value="WY">WY</option>					
				</select>
			</td>
			<td>
			</td>
			<td>
				Zip: 
			</td>
			<td>
				<input type="number" id="zip" maxlength="5"/>
			</td> 
		</tr>
	</table>
	<table border='1'>
		<tr>
			<td colspan="8">
				<hr>
			</td>
		</tr>
				<tr>
			<td colspan="5">
				<h3>Billing Information</h3>
			</td>
		<tr>
			<td colspan="5">
				<input type="checkbox" name="sameAdd" value="sameAdd">Same as Shipping<br>				
			</td>
		</tr> 	
			
	
		<tr>
			<td>
				First Name: 
			</td>
			<td>
				<input type="text" id="fName" />
			</td>		
			<td>
			</td>
			<td>
				Last Name: 
			</td>
			<td>
				<input type="text" id="lName" />
			</td>
		</tr>
		<tr>
			<td>
				Address Line1: 
			</td>
			<td>
				<input type="text" id="add1" />
			</td>		
			<tr>
			
			<tr>
			<td>
				Address Line2: 
			</td>
			<td>
				<input type="text" id="add2" />
			</td>		
		</tr>
	</table>
	<table border='1'>
		<tr>
			<td>
				City: 
			</td>
			<td>
				<input type="text" id="city" />
			</td>
			<td>
			</td>		
			<td>
				State: 
			</td>
			<td>
				<select>	
					<option value="AL">AL</option>
					<option value="AK">AK</option>
					<option value="AZ">AZ</option>
					<option value="AR">AR</option>
					<option value="CA">CA</option>
					<option value="CO">CO</option>
					<option value="CT">CT</option>
					<option value="DE">DE</option>
					<option value="FL">FL</option>
					<option value="GA">GA</option>
					<option value="HI">HI</option>
					<option value="ID">ID</option>
					<option value="IL">IL</option>
					<option value="IN">IN</option>
					<option value="IA">IA</option>
					<option value="KS">KS</option>
					<option value="KY">KY</option>
					<option value="LA">LA</option>
					<option value="ME">ME</option>
					<option value="MD">MD</option>
					<option value="MA">MA</option>
					<option value="MI">MI</option>
					<option value="MN">MN</option>
					<option value="MS">MS</option>
					<option value="MO">MO</option>
					<option value="MT">MT</option>
					<option value="NE">NE</option>
					<option value="NV">NV</option>
					<option value="NH">NH</option>
					<option value="NJ">NJ</option>
					<option value="NM">NM</option>
					<option value="NY">NY</option>
					<option value="NC">NC</option>
					<option value="ND">ND</option>
					<option value="OH">OH</option>
					<option value="OK">OK</option>
					<option value="OR">OR</option>
					<option value="PA">PA</option>
					<option value="RI">RI</option>
					<option value="SC">SC</option>
					<option value="SD">SD</option>
					<option value="TN">TN</option>
					<option value="TX">TX</option>
					<option value="UT">UT</option>
					<option value="VT">VT</option>
					<option value="VA">VA</option>
					<option value="WA">WA</option>
					<option value="WV">WV</option>
					<option value="WI">WI</option>
					<option value="WY">WY</option>					
				</select>
			</td>
			<td>
			</td>
			<td>
				Zip: 
			</td>
			<td>
				<input type="number" id="zip" maxlength="5"/>
			</td> 
		</tr>
		<tr>
			<td colspan="8">
				<hr>
			</td>
		</tr>
	</table>
	<table border='1'> 	
		<tr>
			<td colspan="4">
				<h3>Payment Information</h3>
			</td>
		</tr>
		<tr>
			<td>
				Billing Name:
			</td>
			<td>
				<input type="text" id="billName" />
			</td> 
		</tr>
		<tr>
			<td>
				Card #:
			</td>
			<td>
				<input type="number" id="zip" maxlength="16"/>
			</td> 
		</tr>	
		<tr>
			<td>
				Exp Date:
			</td>
			<td>
				<input type="text" id="zip" value="mm/yyyy" maxlength="7"/>
			</td> 
		</tr>
	</table>
		
	<table>
		<tr>
			<td>
				<input type="submit" value="Proceed to Checkout"><br>
			</td> 						 
		</tr>
	</table>
	
</form>
</body>
</html>
