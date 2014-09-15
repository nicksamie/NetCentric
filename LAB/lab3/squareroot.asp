<html>
<title>lab 3 Square Root</title>
<body> 
<form method="get">
Enter the number : <input type="text" name="num"> <br/>
<input type="submit" name = "Submit">
</form>

<%
	dim num,sqrt, check
	num = Request.QueryString("num")
	check = IsNumeric(num)
	if (check = True) then
		response.write("<br/>the number is : "&num)
		sqrt = sqr(num)
		response.write("<br/>square root : "&sqrt)
	else
		response.write("Sorry..!!! <br/> The given input in not number")
	End if
%>
</body>
</html>