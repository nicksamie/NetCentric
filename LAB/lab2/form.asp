<html>
<head><title>lab 2 Aug 25 Task</title></head>
<body>
<form method="GET" action="form.asp">
	Fname  <input type="text" name="fname"/> </br>
	Lname  <input type="text" name="lname"/> </br>
	Address  <input type="text" name="address"/> </br>
	Phone_no <input type="text" name="phoneno"/> </br>
	Mobile_no <input type="text" name="mobileno"/> </br>
	Email <input type="text" name="email"/> </br>
	Skype <input type="text" name="skype"/> </br>
	Facebook Id <input type="text" name="fbname"/> </br>
	Twitter Id <input type="text" name="twname"/> </br>

	<input type="submit" name="submit" />
	<input type="reset" name="clear"/>
</form>


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

	Dim fs
	set fs = Server.CreateObject("Scripting.FileSystemObject")
	set file = fs.CreateTextFile("D:\6th sem\NetCentric\LAB\lab2\file.txt",true)
	For Each i in Request.QueryString
		Response.Write(Request.QueryString(i)&"<br/>")
		file.write(Request.QueryString(i) & ";")
	Next
	file.close
%>

</body>
</html>