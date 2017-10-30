<html>
<head>
<title>Demo Action Outcomes</title>
</head>
<body>

<h1>DEMO ACTION OUTCOMES</h1>

	<table>
	<tr>
	<form method="post" action="${flowExecutionUrl}&_eventId=actionBoolean">
			<td><input type="submit" value="demo Boolean" /></td>
	</form>
	<form method="post" action="${flowExecutionUrl}&_eventId=actionString">
			<td><input type="submit" value="demo String" /></td>
	</form>
	<form method="post" action="${flowExecutionUrl}&_eventId=actionObject">
		<td><input type="submit" value="demo Object" /></td>
	</form>
	
	<form method="post" action="${flowExecutionUrl}&_eventId=actionEnum">
		<td><input type="submit" value="demo Enumeration" /></td>
	</form>
	
	</tr>
	</table>


</body>
</html>
