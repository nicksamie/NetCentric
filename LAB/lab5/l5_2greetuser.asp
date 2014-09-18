<html>
<title>lab 5_2 Find out the username  & Session ID</title>
<body>
<!-- Find out the username and under which you have logged in and set a session variable to greet you as your traverse across multiple pages. -->
<h1>Greet User</h1>
<h2>Enter your username to Log In:</h2>
<form method="post">
	Enter your username : <input type="text" name="username"></br>
	<input type="submit" name="submit">
</form>

<%
	Session("username") = Request.form("username")
	response.write("</br>Welcome....."&Session("username")&"!!!")
	Response.write("</br>Your Session ID is : "&Session.SessionID)
%>
</body>
</html>