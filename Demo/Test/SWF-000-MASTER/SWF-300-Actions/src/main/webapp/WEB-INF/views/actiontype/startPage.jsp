<html>
<head>
<title>Inserimento User1 </title>
</head>
<body>

<h1>USER 1</h1>

	<table>
	<tr>
	<form method="post" action="${flowExecutionUrl}&_eventId=pojo">
			<td><input type="submit" value="demo Pojo" /></td>
	</form>
	<form method="post" action="${flowExecutionUrl}&_eventId=action">
			<td><input type="submit" value="demo Action" /></td>
	</form>
	<form method="post" action="${flowExecutionUrl}&_eventId=multiaction">
		<td><input type="submit" value="demo Multiaction" /></td>
	</form>
	</tr>
	</table>


</body>
</html>
