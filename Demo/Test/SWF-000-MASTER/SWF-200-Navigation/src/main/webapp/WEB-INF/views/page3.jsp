<%@ page language="java" session="false" contentType="text/html; charset=UTF-8" %>

<?xml version="1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Page 3</title>
	</head>
	<body>
		
		<!-- use POST for the form! -->
		<form method="post" action="${flowExecutionUrl}&_eventId=finish">
			<input type="submit" name="_eventId_finish" value="Finish"/>
		</form>

		<p>
			<a href="${flowExecutionUrl}&_eventId=back">Back</a>
		</p>
	</body>
</html>
