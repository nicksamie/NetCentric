<html>
<title>lab 5 Find Session ID</title>
<body>
<h1>REGISTER PAGE</h1>
<%
if (Request.Cookies("uname") <> "") then
	Response.Redirect "displayuser.asp"
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
		response.Cookies("fname")=firstname
	end if	
	fname = Request.Cookies("fname")
	uname=Request.Cookies("uname")
	Session.Timeout=5
	Response.Cookies("uname").Expires= date -2 'dateAdd("n", 1, Now()) 
	response.write("Cookies value" &uname)
%>

</body>
</html>