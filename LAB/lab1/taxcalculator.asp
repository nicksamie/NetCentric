<html>
<head><title>Lab 1 Tax Calculator</title></head>
<body>

<form method="post" action="taxcalculator.asp">
	<h4>Enter your Salary Amount : </h4>
	Salary  <input type="text" name="salary"/> </br>
	Marital Status </br>
	Married <input type="radio" name="mstatus" value="married"></br>
	Unmarried <input type="radio" name="mstatus" value="unmarried"></br>
	<input type="submit" />
</form>
	<!--Tax rates for individuals(Unmarried)
	Income (Rs.) Tax Rate
	0 - 200,000 5%
	200,001 - 300,000 15% 
	Above Rs. 300,000 25% 

	Tax rates for individuals (Married) 
	Income (Rs.) Tax Rate
	0 - 250,000 10%
	250,001 - 350,000 20% 
	Above Rs. 350,000 30% -->
<%
Dim salary,mstatus,taxPercent,salaryAmt
taxPercent = 0.0
salaryAmt = 0

salary = Request.form("salary")
mstatus = Request.form("mstatus")
if(mstatus="unmarried") then
		If(salary<250000) then
			taxPercent = 0.05
			'response.write ("taxPercent" &taxPercent)
		else if (salary>250000 and salary<350000) then
			taxPercent = 0.15
		else if (salary>350000) then
			taxPercent = 0.25
		end if 
		end If
		end if
else if(mstatus="married") then
		if (salary<250000) then
			taxPercent = 0.1
		else if (salary>250000 and salary<350000) then
			taxPercent = 0.2
		else if (salary>350000) then
			taxPercent = 0.3
		end if
		end if
		end if
End if
End if
taxAmt = taxPercent*salary
salaryAmt = salary - taxAmt
response.write("</br>Your Salary Amount is : "&salary)
response.write ("<br/> The Tax amount of is for <strong>"&mstatus &"</strong> individual is :" &taxPercent*100&" %")
response.write("<br/> The Tax Amount is : "&taxAmt)
response.write ("<br/> The Resulted amount after tax deduction is :" &salaryAmt)


%>
</body>
</html>

<!-- if(mstatus="unmarried") then
	select case salary
		case (salary<250000)
			taxPercent = 0.05
			response.write ("taxPercent" &taxPercent)
		case (salary>250000 and salary<350000)
			taxPercent = 0.15
		case (salary>350000)
			taxPercent = 0.25
	end select
else if(mstatus="married") then
	select case salary
		case (salary<250000)
			taxPercent = 0.1
		case (salary>250000 and salary<350000)
			taxPercent = 0.2
		case (salary>350000)
			taxPercent = 0.3
	end select
End if
End if -->