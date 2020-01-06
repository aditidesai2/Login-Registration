<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
form label {
	display: inline-block;
	width: 220px;
	font-color:"white";
}

#userDetails {
	margin-left: 80px;
	margin-top: 20px;
}

.inputDetails {
	margin-left: 100px;
}

.inputDetails input {
	margin-left: 10px;
	margin-top: 10px;
}

.inputDetails #gender {
	margin-left: 5px;
	padding-left: 50px;
	background-color: #f1f1f1;
}

.inputDetails #qualification {
	margin-left: 10px;
	margin-top: 10px;
	background-color: #f1f1f1;
}
input[type=text], input[type=password], input[type=email]{
	width: 65%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}
label {
	color: white;
}

body {
	background:
		url(http://p.favim.com/orig/2019/02/25/mauve-aesthetic-lilly-Favim.com-6916317.jpg)
		no-repeat center fixed;
	background-size: cover;
	font-family: Arial, Helvetica, sans-serif;
	border: double;
	border-width: thick;
}
p:hover {
	opacity: 0.8;
}
h1 {
	color: white;
	text-align: center;
}

</style>
<title>Registration Page</title>
</head>
<body>
	<div id="userDetails">
		<h1>REGISTRATION:</h1>
		<form action="RegistrationPage" method="post">

			<!-- First name-->
			<div class="inputDetails">
				<label for="firstName">First name: </label> <input name="firstName"
					type="text" placeholder="First name" id="firstName" required>
			</div>

			<!-- Last name-->
			<div class="inputDetails">
				<label for="lastName">Last name: </label> <input name="lastName"
					type="text" placeholder="Surname" id="lastName">
			</div>

			<!-- Email id-->
			<div class="inputDetails">
				<label for="email">Email: </label> <input name="email" type="email"
					pattern="[^ @]*@[^ @]*" placeholder="Email Address" id="email"
					required>
			</div>

			<!-- Phone number-->
			<div class="inputDetails">
				<label for="phoneNumber">Mobile number: </label> <input
					name="phoneNumber" type="text" placeholder="Mobile Number"
					id="phoneNumber" required>
			</div>

			<!-- Qualification-->
			<div class="inputDetails">
				<label for="qualification">Qualification: </label> <select
					id="qualification" name="qualification">
					<option selected="selected">Select:</option>
					<option value="Not studied">Not studied</option>
					<option value="Intermediate">Intermediate</option>
					<option value="Higher Secondary">12th standard/PUC 2</option>
					<option value="Graduate">Bachelor's degree</option>
					<option value="Post Graduate">Master's degree</option>
					<option value="secret">Unlisted</option>
				</select>
			</div>

			<!-- Address-->
			<div class="inputDetails">
				<label for="address">Address: </label> <input name="address"
					type="text" placeholder="Permanent Address" id="address">
			</div>

			<!-- Gender-->
			<div class="inputDetails">
				<label for="gender">Gender: <input type="radio"
					name="gender" value="male" id="gender" required>Male <input
					type="radio" name="gender" value="female" id="gender" required>Female
				</label>
			</div>


			<!-- User name-->
			<div class="inputDetails">
				<label for="userName">User-name: </label> <input name="userName"
					type="text" placeholder="Username" id="userName" required>
			</div>

			<!-- Password-->
			<div class="inputDetails">
				<label for="password">Password: </label> <input name="passWord"
					type="password" placeholder="Password" id="passWord" required>
			</div>

			<!-- Confirm password-->
			<div class="inputDetails">
				<label for="confirmPassword">Confirm Password: </label> <input
					name="confirmPassword" type="password"
					placeholder="Confirm Password" id="confirmPassword" required>
			</div>


			<!-- register-->
			<div class="inputDetails">
				<p>
					<input type="submit" value="Submit" name="register">
			</div>
		</form>
	</div>
</body>
</html>