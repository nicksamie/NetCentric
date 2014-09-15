<html>
<body>
<table border="1">	

<%
	dim var

	for each var in Request.ServerVariables
	  response.write("<tr> ")
	  response.write("<td> "&var&"</td>")
	  response.write("<td> "&Request.servervariables(var)&"</td>")
	  response.write("</tr> ")
	  'Response.Write(var + "   " + Request.servervariables(var) + "<br>")
	next
%>
</table>
</body>
</html>