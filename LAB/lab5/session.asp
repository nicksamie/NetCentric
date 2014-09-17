<html>
<title>Session ID</title>
<body>
<h1>Session Check PAGE</h1>
<!-- <a href="#">Logout</a> -->
<form method="post">
	<input type="submit" name="logout" value="LOGOUT">
</form>
<%
	Session("username")="testing"
	Response.write("Session ID : ")
	Response.write(Session.SessionID)
	Response.write("</br>Session Name : "&Session("username"))
	'Session.Timeout=5
	Response.write("</br>Session Timeout : "&Session.Timeout)

	dim Logout
	Logout = request.form("logout") 
	if(Logout = "LOGOUT") then
		Session.Contents.RemoveAll()
		request.redirect "session.asp"
		Response.write("session deleted")
		
	end if
%>
</body></html>