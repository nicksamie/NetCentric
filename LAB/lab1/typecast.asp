<html>
<head><title>Lab 1 Type Casting</title></head>
<body>
<%
	dim pi
	pi=3.145
	Response.write ("before type cast: " & pi)
	response.write("<br/>Type Name : " &typename(pi))
	response.write ( "<br />" )
	'type casting to int
	response.write ("<br />**Type casting to int **<br/>")
	dim intVal
	intVal=Cint(pi)
	response.write ("Value in " &typename(intVal) &" is "&intVal)
	response.write("<br />Type Name : "& typename(intVal))
	response.write ( "<br />" )
	
	'type casting to string
	Response.write ("<br/> Type casting to String " )
	dim stringVal
	stringVal = CStr(pi)
	response.write ( "<br />Type Name : " & typename(stringVal))
	response.write ("<br/>Value in " & typename(stringVal) &" is "& CStr(pi))
	
	'Type casting to Double
	Response.Write "<br/>"
	dim ran
	ran=25.34
	Response.Write("<br/>Type Name is : " &TypeName(ran))
	Response.Write("<br/>Value in "&TypeName(ran)&" is "&CDbl(ran))
%>


</body>
</html>