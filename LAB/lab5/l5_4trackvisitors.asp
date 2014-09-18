<!DOCTYPE html>
<html>
<head><title>Check the number of Users Online Now</title>
</head>
<body>
<p>There are 
<%
	response.write(Application("visitors"))
%> online now!</p>
</body>
</html>