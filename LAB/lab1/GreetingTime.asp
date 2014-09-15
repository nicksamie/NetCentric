<html>
<head><title>Greeting Time After 8</title></head>
<body>
<!--Random Greeting Only After 8:00 AM
Hint : Hour(NOW), Int(Rnd * 4), Select Case item...Case 0, 1,2,3 ..End Select-->

<%

dim h
h=hour(now())

dim random
randomize
random = Int(Rnd * 4)

response.write("<br/>Current time is : " & now())
response.write("<p>")

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
   response.write("Sorry !! No Greeting! It's already 8 past")
end if

%>

</body>
</html>