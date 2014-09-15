<html>
<title>lab 4 WeekDay</title>
<body>
<form method="post">
Enter the Date : <input type="text" name="date"> <br/>
<input type="submit" name = "Submit">
</form>
<%
	dim date
	date = request.form("date")
	response.write("date is : "&date)
	
	Sub mysub(Date())
		response.write(WeekdayName(Weekday(date)) & "<br />")
	End Sub

	Call mysub(Date())
%>
<!-- response.write(WeekdayName(Weekday("2014-09-08")) & "<br />") -->
</body>
</html>
