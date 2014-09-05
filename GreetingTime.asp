<html>
<head><title>Aug 25 Task</title></head>
<body>
<!--Random Greeting Only After 8:00 AM
Hint : Hour(NOW), Int(Rnd * 4), Select Case item...Case 0, 1,2,3 ..End Select-->

<%

dim h
h=hour(now())

response.write("<p>" & now())
response.write("</p>")
dim random
randomize
random = Int(Rnd * 4)
If h>8 then
	Select Case random
	Case 0
		response.write("Case 0 Hello Greetings!")
	Case 1
		response.write("Case 1 Hello Greetings!")
	Case 2
		response.write("Case 2 Hello Greetings!")
	Case 3
		response.write("Case 3 Hello Greetings!")
   End Select
else
   response.write("No Greeting!")
end if

%>

</body>
</html>