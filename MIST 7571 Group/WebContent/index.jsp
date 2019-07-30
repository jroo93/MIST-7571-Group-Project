<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Let's Shop!</title>
	<link rel="stylesheet" type="text/css" href="shopping.css" /> 
</head>
<body>
<h1>Let's Go Shopping!</h1>
<br>

<script>

	function validateLogin() {
		if (document.loginForm.uname.value == "") {
			alert("Please enter Login name.");
			document.loginForm.uname.focus();
			return false;
		}

		if (document.loginForm.pword.value == "") {
			alert("Please enter password.");
			document.loginForm.pword.focus();
			return false;
		}
	}

	function validateRegister() {
		if (document.registerForm.username.value == "") {
			alert("Please enter Login name.");
			document.registerForm.username.focus();
			return false;
		}

		if (document.registerForm.password.value == "") {
			alert("Please enter password.");
			document.registerForm.password.focus();
			return false;
		}
	}


</script>


<table class="login">
	<tr>
		<td colspan="3" >
			<img src="images/shopping.jpg" height="200" width="321" />		
		</td> 
	</tr>
	<tr>
		<td>
			<form id="registerForm" action="registerUser" method="POST">
				<table class="rightAlign">
					
					<tr>
						<td>
							<label class="center">Register</label>
						</td>
					</tr>
					<tr>
						<td class="rightAlign">	
							<input type="text" name="firstName" placeholder="First Name"><br>
						</td> 
					</tr>	
					<tr>
						<td class="rightAlign">	
							<input type="text" name="lastName" placeholder="Last Name" ><br>
						</td>
					</tr>	
					<tr>
						<td class="rightAlign">		
							<input type="text" name="username" placeholder="Username"><br>
						</td> 
					</tr>	
					<tr>
						<td class="rightAlign">	
							<input type="password" name="password" placeholder="Password"><br>
						</td> 
					</tr>
					<tr>
						<td class="rightAlign">	
							<input type="email" name="email" placeholder="Email"><br>
						</td> 
					</tr>
					<tr>
						<td>
							<input type="submit" value="Register" onclick="validateRegister()"><br>
						</td> 
						 
					</tr>
				</table >
			</form>
		</td>
		<td>
			<table>
				<tr>
					<td>
						<hr width="1" size="100"></hr>
					</td>
				</tr>			
			</table>
		</td>
		<td>
			<form id="loginForm" action="login" method="POST">
				<table class="leftAlign">
					
					<tr>
						<td>
							<label class="center">Login</label>
						</td>
					</tr>
					<tr>
						<td class="leftAlign">	
							<input type="text" name="uname" placeholder="Username"><br>
						</td> 
					</tr>	
					<tr>
						<td class="leftAlign">	
							<input type="password" name="pword" placeholder="Password" ><br>
						</td>
					</tr>	
					<tr>
						<td>
							<input type="submit" value="Login" onclick="validateLogin()"><br>
						</td> 
					</tr>
				</table>
			</form>
		</td>
	</tr>
</table>
	
</body>
</html>