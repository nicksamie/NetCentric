<html>
<head><title>Lab 1 Parse Sting</title></head>
<body>
<%
	Dim text,newstring,pos,name,address
	text = "Ramesh Nepal;Baluwatar kathmandu;1st Baishakh 2070"
	name=left(text,Instr(text,";")-1)
	response.write("name : "&name)

	pos = InStr(1,text,";")
	'position of semi-colon'
	response.write ("<br/>pos : "&pos)

	newtext=right(text,len(text)-len(name)-1)
	'response.write("<br/> : "&newtext)

	address = left(newtext,Instr(pos,newtext,";")-1)
	response.write("<br/> address : "& address)

	dob = right(newtext,len(newtext)-len(address)-1)
	response.write ("<br/> dob : " & dob)

%>
</body>
</html>