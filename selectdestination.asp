<html>
<body>
<form method="get" >
Select Your Destination </br>
<select name="destination" multiple>
	<option value="1"--Please select destination--</option>
	<option value="Miami">Miami</option>
	<option value="Paris">Paris</option>
	<option value="London">London</option>
	<option value="Amsterdam">Amsterdam</option>
	<option value="Kathmandu">Kathmandu</option>

</select>
<input type="submit" name = "Submit">
</form>

<%
	dim destination
	destination = request.querystring("destination")
	'response.write("Destination selected is : "&destination)
	if(destination = "") then
		response.write("Please Select Any one Destination")
	else
		for each i in request.querystring("destination")
			response.write("</br> destination is : "&i)
		Next
	end if
%>
</body>
</html>