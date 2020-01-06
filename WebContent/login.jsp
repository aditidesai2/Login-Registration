<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
form label {
	display: inline-block;
	width: 95px;
}

#loginDetails {
	margin-left: 80px;
	margin-top: 20px;
}

body {
	font-family: Arial, Helvetica, sans-serif;
	border: double;
	border-width: thick;
	background:
		url(https://images.unsplash.com/photo-1477511801984-4ad318ed9846?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80)
		no-repeat center fixed;
	background-size: cover;
	colour: white;
}

* {
	box-sizing: border-box;
}

label {
	color: white;
}

p:hover {
	opacity: 0.8;
}

button:hover {
	opacity: 0.8;
}

a {
	color: DodgerBlue;
}

input[type=text], input[type=password] {
	width: 75%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

h1 {
	color: white;
	text-align: center;
}
h4 {
	color: Plum   ;
}

.loginDetails {
	margin-left: 5px;
	margin-top: 30px;
}

.login {
	margin-left: 10px;
}
</style>
<title>Login Page</title>
</head>
<body>
	<div id="loginDetails">
		<h1>LOGIN:</h1>
		<form action="loginPage" method="post">
			<!-- User name -->
			<div class="loginDetails">
				<label for="userName">User-name: </label> <input name="userName"
					type="text" placeholder="Username" id="userName" required>
			</div>

			<!-- Password-->
			<div class="loginDetails">
				<label for="password">Password: </label> <input name="passWord"
					type="password" placeholder="Password" id="passWord" required>
			</div>

			<!-- Submit-->
			<div class="login">
				<p>
					<input type="submit" value="Login" name="login">
			</div>
			<div class="loginDetails">
				<h4>
					New-User? <a href="registration.jsp">Register here</a>
				</h4>
			</div>
			<%-- <span style="color: tomato">${errorMessage}</span> --%>
		</form>
	</div>
</body>
</html>