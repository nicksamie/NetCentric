<html>
<head><title>First ASP Page</title></head>
<body>
<form method="post" action="welcome.asp">
First Name: <input type="text" name="fname" value="">
Last Name: <input type="text" name="lname" value="">
<input type="submit" value="Submit">
</form>
<%
fname=Request.form("fname")
lname=Request.form("lname")
response.write("<p>Hello " & fname & " " & lname & "!</p>")
response.write("<p>Welcome to my Web site!</p>")
response.write(request.querystring("fname"))
response.write(" " & request.querystring("lname"))
	response.write("Hello World")
	response.write("this is my first asp page<br>")
	response.write(now())

dim h
h=hour(now())

response.write("<p>" & now())
response.write("</p>")
If h<12 then
   response.write("Good Morning!")
else
   response.write("Good day!")
end if
%>


</body>
</html>