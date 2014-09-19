
<html>
<title>Create the dictionary</title>
<body>
<!-- Create the dictionary object and store the model number of latest android smart phones as key and their price as value. Then iterate the dictionary object to print them. 
    Update the value with some other content, what about using screen resolution in place of price. Also you can even change the key with company name. -->
<%
	Dim objThis
	Set objThis = Server.CreateObject("Scripting.Dictionary")
	objThis.add "SG S1","Samsung Galaxy Beam (1/1)" 
	objThis.add "SG S2","Samsung Galaxy S2 (371/1742) "
	objThis.add "SG S3","Samsung Galaxy S3 (130/546)"
	objThis.add "SG S4","Samsung Galaxy S4 "
	objThis.add "SG Note","Samsung Galaxy Note (174/752) "
	objThis.add "SG Note 2","Samsung Galaxy Note 2 (35/132)"
	objThis.add "SG Note 3"," Samsung Galaxy Note 3 (6/21) "

	Response.Write("</br>The count of object value is: "&objThis.count)
	Response.Write("</br>The value of key SG S4 is: " & objThis.Item("SG S4"))

	'iterate the dictionary object to print them.'
	for each i in objThis
		Response.Write("</br>"&objThis.item(i))
	Next

	objThis.Key("SG S1")="Samsung" 'changes the old key value to new key'
	Response.Write("</br>The value of key new SG S1 is: " & objThis.Item("Samsung"))

	objThis.item ("SG S1") = "HD 1280 X 720"
	Response.Write("</br>The value of key new SG S1 is: " & objThis.Item("SG S1"))
%>
</body>
</html> 