<html>
<title>lab 4 Login Page</title>
<body>
<h1>REGISTER PAGE</h1>
<%
if (Request.Cookies("uname") <> "") then
	Response.Redirect "redirectHome.html"
end if

%>
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
		Response.Cookies("uname")=username
	end if	
	uname=Request.Cookies("uname")
	'Response.Cookies("Username").Expires=#May 10,2012#
	response.write("Cookies value" &uname)
%>

</body>
</html>