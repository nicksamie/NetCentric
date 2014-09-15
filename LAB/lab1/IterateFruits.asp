<html>
<head><title>Lab 1 Iterate Fruits</title></head>
<body>
<%
	redim arrayFruits(5)
	arrayFruits(0) = "Apple"
	arrayFruits(1) = "Banana"
	arrayFruits(2) = "Grapes"
	arrayFruits(3) = "Raspberry"
	arrayFruits(4) = "Mango"

	For Each item In arrayFruits
		Response.Write(item & "<br />")
	Next


	ReDim Preserve arrayFruits(6)
	arrayFruits(5) = "Pomegranate"

	For Each i In arrayFruits
		Response.Write(i & "<br />")
	Next
%>
</body>
</html>