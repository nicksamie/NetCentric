<html>
<title>lab 5 Find Session ID</title>
<body>
<h1>Home PAGE</h1>
<%
'<a href="home.asp">Logout</a>
	'Response.Write(Session.SessionID)
	fname = Request.Cookies("fname")
	uname=Request.Cookies("uname")
	response.write("Welcome.. "&fname&"</br>")
	'response.write("Cookies value : " &uname)
	response.write("Your SessionID is : " &Session.SessionID)
%>
</body>
</html>