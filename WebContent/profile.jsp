<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style type="text/css">

body {
margin-top: 200px;
	background:
		url(https://previews.123rf.com/images/279photo/279photo1611/279photo161101422/65436887-natural-creams-with-lavender-flowers-on-wooden-table-top-view.jpg)
		no-repeat center fixed;
	background-size: cover;
	font-family: Arial, Helvetica, sans-serif;
	border: double;
	border-width: thick;
	color: black;
	text-align: center;
}

</style>

<title>Profile Page</title>
</head>
<body>
	<h1>Welcome!</h1>
	<form action="LogOutServlet" method="post">
		<%
			response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
			HttpSession loginSession = request.getSession(false);
			if (loginSession.getAttribute("userName") == null) {
				response.sendRedirect("login.jsp");
			} else {

				if (loginSession != null) {
					String userName = (String) loginSession.getAttribute("userName");
					out.println("<h4>Welcome to your login page Mr/s. " + userName + "</h4>");

				}
			}
		%>
		<div style="margin-top: 40px;">
			<input type="submit" value="Logout" />
		</div>
	</form>
</body>
</html>