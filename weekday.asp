<html>
<body>
<form method="post">
Enter the Date : <input type="text" name="date"> <br/>
<input type="submit" name = "Submit">
</form>
<%
dim date
date = request.form("date")
response.write("date is : "&date)
response.write(WeekdayName(Weekday("2014-09-08")) & "<br />")
response.write(WeekdayName(Weekday(date)) & "<br />")
'response.write(Weekday("2010-02-16",2) & "<br />")
'response.write(Weekday("2010-02-16",3) & "<br />")
'response.write(Weekday("2010-02-16",4) & "<br />")
'response.write(Weekday("2010-02-16",5) & "<br />")
'response.write(Weekday("2010-02-16",6) & "<br />")

 

%>
