<html>
<title>End Session If Username not Deerwalk</title>
<body>
<!-- Write the script that will end a session if the username is not 'deerwalk' -->
<h1>End Session If Username not Deerwalk</h1>

<form method="post" action="l5_3endsession.asp">
	Enter your username : <input type="text" name="username">
	<input type="submit" name="submit">
</form>
<% 
	dim uname
	uname = request.form("username")
	Session("uname") = request.form("username")

	if(uname<>"deerwalk") then
			Session.Contents.RemoveAll()
			response.write("</br>session removed")
		else 
			response.write("</br>Session Not Removed")
			Response.write("</br>Session ID : "&Session.SessionID)
	end if
%>
</body>
</html>