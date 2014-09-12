<html>
<body>
<form method="get">
Home<input type="radio" name="button" value="home"/></br>
About<input type="radio" name="button" value="about"/></br>
<input type="submit" name="submit"/>
</form>
<%
dim op
op = request.querystring("button")
if(op = "home") then
	Response.Redirect "redirectHome.html"
	elseif (op = "about") then
	response.redirect "http://www.w3schools.com"
End if
%>
</body>
</html>
	
