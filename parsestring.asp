<html>
<head><title>Aug 25 Task</title></head>
<body>
<%
Dim string,newstring,pos,name,address
string = "Ram Nepal;Baluwatar kathmandu;1st Baishakh 2070"
name=left(string,Instr(string,";")-1)
response.write("name : "&name)

pos = InStr(1,string,";",1)
response.write ("<br/>pos : "&pos)
address = left(string,Instr(10,string,";")-1)
response.write("<br/> address : "& address)

newstring=right(string,len(string)-len(name)-1)
'response.write(newstring)


dob = right(string,len(newstring)-len(address)-1)
response.write ("<br/> dob : " & dob)


<!-- response.write(InStr(1,string,";",1)) -->
%>
</body>
</html>