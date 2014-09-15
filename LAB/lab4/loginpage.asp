<html>
<title>lab 4 Login Page</title>
<body>
<h1>REGISTER PAGE</h1>
<form method="post">
	Firstname <input type="text" name="firstname"></br>
	Lastname <input type="text" name="lastname"></br>
	Username <input type="text" name="username"></br>
	Password <input type="password" name="password"></br>
	<input type="checkbox" name="checkbox" value="1">Remember me </br>
	<input type="submit" name="submit">
</form>
<%
	dim firstname,lastname,username,password,checkbox
	firstname = Request.form("firstname")
	lastname = Request.form("lastname")
	username = Request.form("username")
	password = Request.form("password")
	checkbox = Request.form("checkbox")

	if(checkbox = "1") then
		Response.Cookies("fname")=firstname
		Response.Cookies("uname")=username
	end if
	'Response.Cookies("username")="Alex"
	'Response.Cookies("firstname").Expires=#May 10,2012#
	fname=Request.Cookies("fname")
	uname=Request.Cookies("uname")
	response.write("Firstname=" & fname)
	response.write("Lastname" &uname)
%>

</body>
</html>