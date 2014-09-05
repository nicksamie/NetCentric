<html>
<head><title>Aug 25 Task Tax Calculator</title></head>
<body>

<form GET="method" action="">
<h4>Enter your Salary Amount : </h4>
Salary  <input type="text" name="salary"/> </br></br>

<input type="submit" />
</form>
<%
Dim salary,salaryOutput
Dim taxAmount
salary = Request.QueryString("salary")
taxAmount = 0.13*salary
salaryOutput = 0.87*salary
response.write ("<br/> The Tax amount of 13% is :" &taxAmount)
response.write ("<br/> The Resulted amount after tax deduction is :" &salaryOutput)


%>
</body>
</html>

<!-- if(salary>10000) then
	taxOutput = 90*salary/100
	response.write("<br/>Salary after tax deduction" &taxOutput)
End If -->