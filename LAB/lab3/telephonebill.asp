<html>
<title>lab 3 Telephone Bill</title>
<body>
<form method="get">
Enter the no. of calls made for this month : </br>
<input type="text" name="calls_no"> <br/>
<input type="submit" name = "Submit">
</form>
<%
	dim calls_no,check,amt, min_charge,total
	calls_no = Request.QueryString("calls_no")
	min_charge = 190
	check = IsNumeric(calls_no)
	if(check = True ) then
		select case calls_no
			case (calls_no<=75)
				amt = min_charge
			case (calls_no>75 AND calls_no<=200)
				amt = min_charge + (calls_no-75)*1.2
			case calls_no>200
				amt = min_charge + (calls_no-200)*1.5
		End select
		total = 1.05*amt
		response.write("</br>total amount after service charge is : "&total)
	End if
%>
</body>
</html>