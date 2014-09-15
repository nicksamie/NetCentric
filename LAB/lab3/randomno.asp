<html>
<title>Lab 3 Odd Random No</title>
<body>
<!-- Create a Visual Basic script that generates pure random numbers between 100 and 200. But all the random numbers should be odd.  -->
<%
	dim myMin,myMax
	myMin = 100
	myMax = 200
	Randomize
	intRandom = Int((myMax - myMin + 1) * Rnd + myMin)

	If (intRandom mod 2 <> 0) then	
		response.write("Its ODD..!!</br>")	 
		response.write("Odd Random No : "&intRandom)
		else
		response.write("Even Random No : "&intRandom)		
	End If

%>
</body>
</html>