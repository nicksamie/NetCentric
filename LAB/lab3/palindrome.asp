<html>
<title>Lab 3 Palindrome </title>
<body>
<form method="get">
Enter the STRING : <input type="text" name="string"> <br/>
<input type="submit" name = "Submit">
</form>
<%
	dim string,reverse
	string = Request.QueryString("string")

	reverse = StrReverse(string)
	Response.Write ("<br/> Given String is : "&string)
	Response.Write ("<br/>")

	if(string=reverse) then
		Response.Write("Palindrome")
	else
		Response.Write("Not Palindrome")
	end if
%>
</body>
</html>