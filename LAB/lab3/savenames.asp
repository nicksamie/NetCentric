<html>
<head><title>lab 3 Store Names</title></head>
<body>

<%
	redim saveNames(4)
	saveNames(0)="Sanchez 17"
	saveNames(1)="Giroud 12"
	saveNames(2)="Podolski 09"
	saveNames(3)="Rosisky 07"
	saveNames(4)="Chambers 25"

	ReDim Preserve saveNames(9)
		saveNames(5)="Ozil 11"
		saveNames(6)="Ramsey 16"
		saveNames(7)="Wilshere 10"
		saveNames(8)="Cazorla 19 "
		saveNames(9)="Kosciely 04"
		
		For Each i In saveNames
		response.write("players name : " & i &"<br/>")
		Next

		Erase saveNames 'delete array'
%>
</body>
</html>