<html>
<head><title>Aug 25 Task</title></head>
<body>
<%
Dim fname,lname,address,phoneno,mobileno,email,skype,fbname,twname
fname = Request.QueryString("fname")
lname = Request.QueryString("lname")
address = Request.QueryString("address")
phoneno = Request.QueryString("phoneno")
mobileno = Request.QueryString("mobileno")
email = Request.QueryString("email")
skype = Request.QueryString("skype")
fbname = Request.QueryString("fbname")
twname = Request.QueryString("twname")

Response.Write("First Name: " & fname & "<br />")
Response.Write("Lname: " & lname & "<br />")
Response.Write("address: " & address & "<br />")
Response.Write("phone: " & phoneno & "<br />")
Response.Write("Mobile no: " & mobileno & "<br />")
Response.Write("email: " & email & "<br />")
Response.Write("Skype: " & skype & "<br />")
Response.Write("fbname: " & fbname & "<br />")
%>


</body>
</html>