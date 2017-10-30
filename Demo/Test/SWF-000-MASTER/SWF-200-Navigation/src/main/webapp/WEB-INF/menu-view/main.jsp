<%@ page language="java" session="false" contentType="text/html; charset=UTF-8" %>

<?xml version="1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Page 1</title>
	</head>
	<body>
		<h1>Scegli pagina</h1>
		
		Links:<br/>
		<a href="${flowExecutionUrl}&_eventId=green">Green Page</a><br/>
		<a href="${flowExecutionUrl}&_eventId=blue">Blue Page</a><br/>
		<a href="${flowExecutionUrl}&_eventId=red">Red Page</a><br/>
		<br/>
		<br/>
		Forms:<br/>
		<form method="post" action="${flowExecutionUrl}">
			<input type="submit" name="_eventId_green" value="green"/><br/>
			<input type="submit" name="_eventId_blue" value="blue"/><br/>
			<input type="submit" name="_eventId_red" value="red"/><br/>		
		</form>
		
		Hidden Fields:
		<form method="post" action="${flowExecutionUrl}">
			<input type="hidden" name="_eventId" value="green" />	
			<input type="submit"  value="green"/>
		</form>
		<form method="post" action="${flowExecutionUrl}">
			<input type="hidden" name="_eventId" value="blue" />	
			<input type="submit"  value="blue"/>
		</form>
		<form method="post" action="${flowExecutionUrl}">
			<input type="hidden" name="_eventId" value="red" />	
			<input type="submit"  value="red"/>
		</form>
	</body>
</html>
