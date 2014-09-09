<html>
<body>
<%
dim myMin,myMax
myMin = 100
myMax = 200
Randomize
intRandom = Int((myMax - myMin + 1) * Rnd + myMin)
'Wscript.Echo intNumber

'response.write("Random No : "&intRandom)
If (intRandom mod 2 = 0) then
	response.write("Even Random No : "&intRandom)
	else
	response.write("Odd Random No : "&intRandom)
End If

%>
</body>
</html>