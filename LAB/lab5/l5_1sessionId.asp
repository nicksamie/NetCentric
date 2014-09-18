<html>
<title>Session ID</title>
<body>
<h1> Display the session Id and the session Timeout value for the Web server.</h1>

<%
	Session("username")="testing"
	Response.write("</br>Session ID : "&Session.SessionID)
	Response.write("</br>Session Name : "&Session("username"))
	Response.write("</br>Session Timeout : "&Session.Timeout)
%>
</body>
</html>