<html>
<head><title>Aug 25 Task</title></head>
<body>


<%
	dim pi
	pi=3.145
	Response.write ("before type cast: " & pi)
	response.write("<br />" )
	response.write("Type Name : ")
	response.write typename(pi)

	response.write ( "<br />")
	'type casting to int
	response.write ("Type casting to int <br/>")
	dim intVal
	intVal=Cint(pi)
	response.write (intVal)
	response.write ( "<br />" )
	response.write("Type Name : "& typename(intVal))
	response.write ( "<br />" )
	
	'type casting to string
	Response.write ("<br/> 'type casting to String " )
	dim stringVal
	stringVal = CStr(pi)
	response.write ( "<br />Type Name : " & typename(stringVal))
	response.write ("<br/>" & CStr(pi))
	
	

%>


</body>
</html>