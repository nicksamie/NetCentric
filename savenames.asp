<html>
<head><title>Aug 25 Task</title></head>
<body>

<%
redim saveNames(5)
saveNames(0)="Sanchez"
saveNames(1)="Giroud"
saveNames(2)="Podolski"
saveNames(3)="Rosisky"
saveNames(4)="Chambers"

For Each i In saveNames
	response.write("players name : " & i &"<br/>")
	Next
	
ReDim Preserve saveNames(5)
	saveNames(0)="Ozil"
	saveNames(1)="Ramsey"
	saveNames(2)="Wilshere"
	saveNames(3)="Diaby"
	saveNames(4)="Koscielny"
	
	For Each i In saveNames
	response.write("players name : " & i &"<br/>")
	Next
%>